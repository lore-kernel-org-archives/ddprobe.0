Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A38B1CAB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745461194; cv=none; b=KNTTBzo7QdRnFf/HVWjcRqGs/5MsDRjqoxfBaWDCQ0knJqhElXnWRdhMpntf2jKvjvneeUorSjqq0jwkyEEZZTF20rc7pxoqVcuL0lEa3pKrneggOta2FLSCwrmFAVqewTENSfO37pGjFH+aW8TV0KBw/OV8xH8/M6pRI5EOL7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745461194; c=relaxed/simple;
	bh=s/z5sBG7LUs3P1yWyK3OO6FeI2NzLehw4IkVwiiCuHg=;
	h=To:Subject:From:Message-Id:Date; b=rqP2zZw5D3KNDbbFajBXhAGFRAMvl0vQ64EljHXvX5FtVlNbYvnxTUXa7GYJHETmzWCnHMOLs1nEXcvJurZjL51eQxMgG64JFcOv6ILGWDIygweHec5PcgATgsYXO5zE0+g5a9XF9hKw3RWtheyg7rCtG5cibkCct5UZdmiRgys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tIQ84tQj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tIQ84tQj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F09FC4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745461193;
	bh=s/z5sBG7LUs3P1yWyK3OO6FeI2NzLehw4IkVwiiCuHg=;
	h=To:Subject:From:Date:From;
	b=tIQ84tQjUiceE1/KtZEEFaqM3xocntJGUkHd+GEMofgklRCwtMJWaZOxS3+vCZ3Pv
	 M4vf9CC5HWxEdw8JgtWJKu5AuoE5iy00orRwk5HpMBAsk5PSUKcEnctOKqj1eOulf6
	 7bxqWmK4Xtbl+AqfXBFY+91tLAGjKu+EKNzjIoKOaulRzsn+jN0EIZqOkpZ7P152OA
	 QoXS+7yg4sccqUNevmIMTAeF2vWBxCG8BhToyDxsRLlGP7IBa+9MrfclkwBUl185n9
	 pycEioLtKEDVL0rsrxw9/9p2ROQwrKzksM2QRYKBWva8U+3OYyqv0qGiTNHDGo3S04
	 fMm+FWoWmcrtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF6FC369CB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174546119357.17623.3290176197981212328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f48a6ad332a0d49ea67f07e6673ac8acc1f590750d21ff1ecfadd8ae8ed707e
Date: Thu, 24 Apr 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745461193
