Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290A93EEAD2
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792342234; cv=none; b=GmFLptO//hGt3RCeprDNN49OGD7tdLbGnatM/HzmfoHLG8Uh0vaLubVRsj1NG0Lu1SKvWDceSifHC+jdkU15Wtl/yJn9jpgbh9CTt6dwa7LTY/jDVJpmjy3wMbKoFojQ4MMXUffCJbuERANUEGJSZdLY1k8ST/XCnJEgGAXwhMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792342234; c=relaxed/simple;
	bh=6DPbrTdAKEjCjlE/iFrHWQItwBcFa7rIqDzx2YmNpjE=;
	h=To:Subject:From:Message-Id:Date; b=JZDMO0KrUBV2IGgdKg1ho8N4zwQ2iQ+z9xEn6DDZYz8igdzW/voq84YpTQdc8YD1SbN8//Dkr2fbJvETbuZiCqvZQrASL1krR8NAPAECLDzGl1J2m4VkfLJNYgjivckDh4HzHQl5pfUsY1BZ5jCS5/HJaHjGeZMLuyPAKjOR8CA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DMnqqpu/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DMnqqpu/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1158C2BCFD
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792342233;
	bh=6DPbrTdAKEjCjlE/iFrHWQItwBcFa7rIqDzx2YmNpjE=;
	h=To:Subject:From:Date:From;
	b=DMnqqpu/Nva3XxwMfZsYBxNkNlHzTmoK47meBmk4zzVddWj+VDb/SvYCcvKNDnOJ8
	 ZozijgAgs8n26HKQhyzoxAzYZjICFNjaQgpcMLaVc9OUvUkQhz7Iyx7Dxzt05FCTbh
	 6JIQ9UcZfjzDH8UYnKnPQ2wiA+9AQjc/DjqG1Wo3Dd2VWK4Uw0JU5+mhkLX+mAAdj0
	 xgECsIaljRN5FhBbLqWHFkuQL2WMYc0fR+iPWh2J/6dtXekpu2iHd9hRXZ7Z+XUX2g
	 EyTWZHvBFPFvJX6dWeau4Zaerf8a4r7UsJxEAMho/wQt3SuvskHBJaQy4o/3+U0uJ/
	 YBzmwtEsdlBuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2E7CCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179234223368.4309.8455402109728150283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d05088962bc68e9b3cc0f0dab36cefce4a49c9f9315152c63409a40f262ffa1
Date: Sun, 18 Oct 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792342233
