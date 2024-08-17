Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A27213CFA3
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723883754; cv=none; b=d7rQvPjFq/HcddYZESAaqpgQGWWXAsxeHhTWoDsqg9yCNbVG+CbG7T1QXgQfbUyh8gToAsC3YI1SBl4nH4LbMXLd37Vm3w0uyk43chrFUTPfreLn5GJfn/7jiCGlO4xf8uXNPeT1EqTV9kklAWqC9jnRKddG12Z9tyk6lTgGPc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723883754; c=relaxed/simple;
	bh=aTULz9TydyjDeBXCD1ca0quWvswT8KKTj8K8KF1JxcU=;
	h=To:Subject:From:Message-Id:Date; b=KJ/luNwnO+Hmq7V8L8L6BXN6w8nrmLwT03cDSafbCnVNOp176vtD0OhM8w3befgXD/mwJs+rCLNld26BbZfdtc0koGSlofmw8KJQGIDRgz81S0hwC7nvf09lj6HQsm2D6ZeR2iiXKPXlxVLTzUJ7gTy3x2x34EPj9Jq9i9tJh3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ReFqSKLK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ReFqSKLK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1AF8C116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723883753;
	bh=aTULz9TydyjDeBXCD1ca0quWvswT8KKTj8K8KF1JxcU=;
	h=To:Subject:From:Date:From;
	b=ReFqSKLK1OahuWfsOZIo7+aRXSbslDz1QNFeJ16INWdZIdC7GhphcEN400piiXOrn
	 TzeAAHk86Guf2dOaCFD+WTp7bUJ8HMjf/3j+/PvSVUqVMmgwpGImnLDRyGtCiR/Xjm
	 ogExWPy0D0LnUVfeCO9XcvRtI8wA+xPbGaAtzx66xnJ3bej+Gn77dniLdVRLT6LfZH
	 EKiG9FBHrx3ZCBEv7E58g/gAZj7qWN3b4iU/mzDK5lA2LioxFeot7oycmEvaiqAQlV
	 wjFqg4qc0xhmOsV7MkAgZIO2Q96Ep3KFDyxxkv0RoX8KZLvCPFkStCo0261kJjvPMd
	 P4KBwzETUeAWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AF1C52D7F
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172388375359.11481.8034704257777193934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7bfbd02f90f8db8df73237aa876f6cb967ba20f203f1ad18d97d5ab4c3a46c3
Date: Sat, 17 Aug 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723883753
