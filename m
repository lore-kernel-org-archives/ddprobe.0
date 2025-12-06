Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E7A1BC41
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 07:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765007574; cv=none; b=NTH1z6YdAaN1acpCG/ZDazqPHDo78Yynee9FWo4k40gw6VQxHJVEEDO7BMJbFTUcOVdlMta54wYPFrM3a4ezeMswTtnAPE0xAiMtwVlUXktBBbIh1T2V38BeJ+z+BCXtlOHgPbGkzU/ItN1kTj9YbRdymIY8rdnF2aT4PwBayPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765007574; c=relaxed/simple;
	bh=AVqeAmZ296LISekzOh/SNLY4/4c13/Y+J9aXroR9fms=;
	h=To:Subject:From:Message-Id:Date; b=Z1YPT/QyCYyUiXDuQik5ULPyppiKIl1YRVfBJi0+pMYMtEymZ5rRkCMBHhk+kp/lImYM6gBEJxEt//rAbytHHM1F+NRLP/Ju4fgMg5SgYx2OwQlxZJfooTmixLdo4Vn3Df5gpVLEeez8/Glv5SWsu4KW40XXxKxS5oNnJcJD2aQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+xMSYvc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+xMSYvc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89B5C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 07:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765007573;
	bh=AVqeAmZ296LISekzOh/SNLY4/4c13/Y+J9aXroR9fms=;
	h=To:Subject:From:Date:From;
	b=O+xMSYvcLJdv0fUiIQNjUr+PaiubNnHwXXPbWc6TojKXF0G4YLeaJ7xcBELSL4Zo4
	 /eskEZTYEFYsUoQkLVMRDkyhWm/Dq6eGQJptl61o5Ofbb3+1glS+92901TW+FT9c8S
	 q7T2tvGV+HQsiy+xA+RJ6gU7XdD5AUfiucTOlWve5zSHXlknow74MK/TPYLd03os/3
	 /UROt2fc+53iE2SIqNtLF97HM9ISOLs7CPY/Bp0+ZiNbiMGpHYC1BzCfPhI+/CfXVE
	 UVt+T5Kez1lxWDkERvXSKj7cCQzlr0gpMPikePs6qpv8B8eyHvPN308IYyvNBee7g+
	 oVCnhsvfJ+Xpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C6CD374BD
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 07:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176500757358.24883.8453749145443361413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c82f160fb5ef6338fd154771931498d935a59d2b717b2fde09d5bc959d610441
Date: Sat, 06 Dec 2025 07:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765007573
