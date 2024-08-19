Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35641C125
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724056554; cv=none; b=Catiq5QQhSmn98Unu8kNrjN9F6MxQktZmlGTlvJfKeo23JR9x073sFbhcVqSaNWLk2h4Ha1MjHxrlUrpN11WQOWNcm/+zW0Hj55wZY++/ZDuSYlPpbMW6hmf/X6/cfnbFKkAZNzRSvfJv3kmU7ewebmoyCSoP5jVKPldX/Sgspo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724056554; c=relaxed/simple;
	bh=UK3lS5IXLYvxCUkxF3gaB6S774gt1rhyq1Tb1+qNygU=;
	h=To:Subject:From:Message-Id:Date; b=VfvQt+vAl39T+8p8WPfRzf80/TMeD8JuTg0LUZc2jFoC7tMFdlB2yRP7aZgveZF1J2E8CDii0URDoNIoKbDG3n6WTFI5w1njaI+W4+hd1R9RuHcjbdrGLImDkbZmhVCtyjEL/w98Gb2bj+ActbjZhLrrGx3n5gPqn0MhWWxW1TA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jFXIxyDc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jFXIxyDc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BA0C4AF09
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724056553;
	bh=UK3lS5IXLYvxCUkxF3gaB6S774gt1rhyq1Tb1+qNygU=;
	h=To:Subject:From:Date:From;
	b=jFXIxyDcycuJkxC4hHCN5sFqRsMnzTthptEbLBZYGCPVggDy+9octNVIG3w73WPp7
	 +I9eu4JNii87Wcwqy8FafHqjAdXkXbABA5ih2jej6kWsW8uVNoNvyX5NMRhXeQSEJ2
	 T2EtbeFSC+SgBJcL+0t4J799UQHnQ4mY8V5T/+Spen/joUkD7rNheZliE2POYsJxOV
	 3BAHdMIeKB7SxfTBZA8JeGGhkQ527XIz6gNsUcOhwYihBHyJEJjhlWEr3kWZ1B3jos
	 k1fL8gKd/HArwbVUuTXftanOhCfxOKP3JkK+bLXle1llstbvRsOD0Ss0I2ZL1rbvX9
	 L22AaQrCcGWqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BF6C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172405655360.8784.17552126144183033204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6a97ab27032c8a0328983db780a1df3a16e84dc66cc245c708e29ea9dc54ae9
Date: Mon, 19 Aug 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724056553
