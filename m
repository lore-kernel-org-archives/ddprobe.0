Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F46F2AD25
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762652994; cv=none; b=hy9iEgdSkQIjY7wHbXXFcQT+bsX+p9u/NWJQk6XVa+3OVLAVhaFCCqmphLBLOkcD9R9QUkC7fw8krc8qkpIIIocFj6b0v0FiSvuhxyk4C7I1cdttZr/YztNi07hkGBJQhR03ycUrsUG58SWfsexZtNJ/hQwUNqaDpIUD6nSPlLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762652994; c=relaxed/simple;
	bh=blXxAk3uoWJkOXYwXWoaPvrtj2ZGAODo1qjk8VnphpI=;
	h=To:Subject:From:Message-Id:Date; b=QpnkXoRpmSnujCdDhCbxXZ3NUWtMBidI83in+06VF5AJiFOBnk/vc3aIcSudWMi5ZkQVXspBjzmJfhM9wF2Um4GBPSFVW/nHbTsK62O8fbsIIhua/NUvsrk4+uCus46I4ZPpfdATTI3neSVcZyLWA90Bz5X+mqKCzwNuKu6g7RQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FYW9Mp9F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FYW9Mp9F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1314C4CEF5
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762652993;
	bh=blXxAk3uoWJkOXYwXWoaPvrtj2ZGAODo1qjk8VnphpI=;
	h=To:Subject:From:Date:From;
	b=FYW9Mp9FrE8ovidqyEWSIfezB3UOtHsk3Ko60Ns1xHFSvQMOhrGtPQfw1wCWRxe9r
	 2T7Pt7Vcjsj7hCkiYyDufnP2KsgVko535S0wGpdlrj+2HfmX7b6kX4pEUJ50Rez+vk
	 CXxyVRkyVoWdnNzhs7l7uqBhNOyXdtS8vqoiwKj6l4OCv19LpnBvvrbnwmZ1B6PB57
	 SjEV7fsCp4iDEe3ytO41NLs3DNzxZ0vVX7Xl35IV/elZ6MFuvqlcM6WoJtBtqlVz5h
	 Ae0pOLf7AGIsMKPyAvODzAf7JZ6R6tJQWvsSEDnDp70GxV6gEdITIJJFkclN7/J5kL
	 PpUpnOC92ZSOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92603CCFA18
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176265299358.29044.10995433241555844146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c908d0e1cfbb4559f3fd205368b706910c63d2e334c7402b2a763429c3b275b4
Date: Sun, 09 Nov 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762652993
