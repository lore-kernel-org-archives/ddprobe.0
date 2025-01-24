Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1A2224CC
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737756954; cv=none; b=YtuiWzT/qFAFRkVnmkAa3uZ/StHNbpOdjF1eN9u/ttkYgZ1qoDaZEU+wwa6hcRYVStNtQ7z3PSUfwyakjw2+cOYkdD0JV5HQxiMIo6g+rMbjw/e3f+CbCxkKaHY5PtEvgIk1xVGnDqxL3/EWZl5NZf3m9szEvCyweyb9L172ryU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737756954; c=relaxed/simple;
	bh=k0rf2gFPIaalaC5Gttl53nKeAsUuGjgcKJVnWtzjlbw=;
	h=To:Subject:From:Message-Id:Date; b=Qtzjc3eJfBnkR1Y/YDtgY2/5FZUSEQj2esRCziHAeeAHwoqEDxe1YuVkODGzDq6vwKLFDhidfDGcYweLGa+DlXOr8FAK4oar2U1ouLyJGKAUszmkIQ1Y0cS0zARWW88OxIEoZOL8+xSgOO+7uT1G74JhpwN73GsOU46kTg/l1Sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GZ19hg4Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZ19hg4Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B64C0C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737756953;
	bh=k0rf2gFPIaalaC5Gttl53nKeAsUuGjgcKJVnWtzjlbw=;
	h=To:Subject:From:Date:From;
	b=GZ19hg4Z7W11vKBwFjNkbmQykg3rh1q8vVpoyNBmustkzclWGuoWQ3XF96u/+0/xR
	 UmEc4whBxiMcUdaDVnXPCReMrToGxZG/Funu2hS/DMn8K7ZJsl57b7AYhiIy1bjJW/
	 obVmW9nMKIXJ1NA+HUx0gVFLWEImOpwrX+fcPXfhcXtZvXYZKRn86f1LsE0DiPywXw
	 GVd6bPvm1QtWQVqTD1X3l+k4RX7UAbFjjBKyxYeXrl05bWOObnnl4hc/ELwsJMA7zL
	 MzxMRZ+Mdt60WSMpvEPfDiArZCgAYh+CeWfGaim3V9EONCcesb1UUaTpR1hEGaxjaa
	 Odjx5dhHXmEZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBB6C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173775695361.24513.11093804176362742287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bff2de7f2e15b474b6da96af327f821eb2d4f1f82ad2172e56ede20ec06dc089
Date: Fri, 24 Jan 2025 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737756953
