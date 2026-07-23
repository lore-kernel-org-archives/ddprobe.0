Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDB01C69D
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 00:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784766574; cv=none; b=R/PtXJOOagoH2YvRnzPqF7MjWbM/xRlMsprrcm8sxR1Zu6YZRBWxfz7yw0CUoM3VBeSXWCywpvLXk2/ZKj2B1zxH96b2qWW+yCSwYTKoAhdNCt40ptq6lXt1Ew0L5lp+5UzLG9ARKjT9iy5SD/hkNmvmRStO1c+L4F1ET3tCmm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784766574; c=relaxed/simple;
	bh=KO7SrDhsyVVnTDCx0Q4vrFt9Yl1F0XywYH2thW+qrQo=;
	h=To:Subject:From:Message-Id:Date; b=Nfhkld+jb6hUHzh8gmfYlx3REjVW4/Z3LYVWY4F+hcG88qhHTK8aP0eQK+8aAPq/3ornr1TWl3XDrBlnlHu1buc1GDQK8QIrUBI6NyBIFbNdnF3Pd5C2Im9IIz26qfsYna0YUfT/kW8DvegqTnx9QryTB6osTLHI9FiIO4wnoeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VLEv17oR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VLEv17oR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD3AC19425
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 00:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784766573;
	bh=KO7SrDhsyVVnTDCx0Q4vrFt9Yl1F0XywYH2thW+qrQo=;
	h=To:Subject:From:Date:From;
	b=VLEv17oR6imja5yNeIN3SJaqECK2HPO9Y9jMu4denGO0ebmsu3WdsckhHdwPcyNi9
	 Pho7jnJTfFormYDgPlqvbPi41zH4M/dTjDQCQ2RPLOFWesJ2UOwN03x52674K91BBO
	 gPGw4yL62yIdR6d32J+VIHihVH7qNCGvRgYYfTu7mOjPXBVwd0Nf9CjdJWakJoqyaU
	 szpv4gPViZBagAd2VRvAZ73cffAsTbP2LNy6/5+7jxNENjcpQg+a7NTL/BdDqjR58p
	 hj508VVTI7sfBPtjF7mYbfLAYoScfqTZLNj379Fq/IVg7fmmPaL/dORHBj2sPPNAOW
	 Lpyb9yZroqQxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92B1C44536
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 00:29:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178476657368.11623.4025292283871120486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ccf8dbfda5d9e3b4d5dcb05da7974c63940b0c25c05f52493b59da4511d4c3e
Date: Thu, 23 Jul 2026 00:29:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784766573
