Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E7917994D
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 23:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719359603; cv=none; b=i3yFtlX6hKsmqlRTRSC3qs4h7IqAjXfsTBLHweXnv98gLLi1BlCyO2oEnSZ37GUpkW0bhyP3R2QRpEzycc/VRs4pkwWawCpbSgFMWpFKu/Rzf+rl5pt3gcSHVEhB2JW3250t+Pom9v/4f8ezvXY7AATXYxwvW8/8+iYWQqJbTNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719359603; c=relaxed/simple;
	bh=FF1v4Dbxp06DpCwV2DFpL7Ve108UHkS0J/fhFfNMKLo=;
	h=To:Subject:From:Message-Id:Date; b=qPqJU0BQt0zuVHBF1bo718Wy4X/W7PRCaRfolW6Al/S/MFtoIHJSGR/iecsBVm6GEKqJpP108oVPAGOH+cYYuxPd4/Uy6yY99ws3xG3AF674l3FLilyTW2R1vVAEabqjWqh45mIonIa68QWp8KR47+UXQOJ8sJQhel7yENHgRJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8Miynq/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8Miynq/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F7CC32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 23:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719359602;
	bh=FF1v4Dbxp06DpCwV2DFpL7Ve108UHkS0J/fhFfNMKLo=;
	h=To:Subject:From:Date:From;
	b=Q8Miynq/fO/INbVnBxgO5xm/4SMkppA4HA2FI8X9QgvWNIPh3P6FV+sHbd7OTFP8S
	 d+0j8Xndf492N/IpXawvGVazb8njZL70cK+OXxB7lb6TzPOnhFoDEK5yv6+y1jJq5J
	 kxsGS0aG0pQEadypyxDHwW3k8ehmcAjjPyycFBT61mUeCEPurKJXTbqj7kQiAKJl+O
	 lBs9GFjnTfvAU4ySAsUZpiQo+LNiu+htWVZk4d6GQ5azGZkOTcV7SrnRPLXE32QSHk
	 1/UTUGlWQ7Dx3s7vruX9qrw6GeZ0e17s9lKjUSE+lrE4hS2ggAwQPdGG45QDjXYVNI
	 Jvo0qgIRZ8wWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3860C2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 23:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171935960277.7322.10998775433778170113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4f8878f54b76132c87529c74073f3dbf5a913b5d5fc7e14114292a15249b29e
Date: Tue, 25 Jun 2024 23:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719359602
