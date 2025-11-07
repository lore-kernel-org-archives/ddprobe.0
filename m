Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E43B308F02
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762511994; cv=none; b=KsPgTA8KtSGjqj/eISbDm1c6GzgRmOTQgi68jqKL23S017U/XTSJh60LiAs9zO7Qp4b36wTDnck7v76Snv2InuUBx9FHumWPjqPJ+N74IGLt3HWYi7WQr4t9fi3i77nPCBQkpk2ErIDBYZv7vEV1Wx/CVZPGQUkrsjkKp0Z1pCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762511994; c=relaxed/simple;
	bh=pHDSwvLbDQ1XxSRxt/HobFbrRXYnnLutuB4jE3br9xI=;
	h=To:Subject:From:Message-Id:Date; b=dXc3Os7S2e0qHua0nJ8Ye9XxZzfmGYQHIoaG8jEhxVXBrSDPefK7ICNBSRmPPRCV8K/mmRmuFxNiMdiaBSNPslquIg8bBhY20A1KeUujbGqm7gyrgbagnG2NmWhf3kLsma4auNNoP6vy0clvvjEW2CyGyqF/VWFVqvk5ipQiwi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H5psVhtI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H5psVhtI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A578C19421
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762511993;
	bh=pHDSwvLbDQ1XxSRxt/HobFbrRXYnnLutuB4jE3br9xI=;
	h=To:Subject:From:Date:From;
	b=H5psVhtIITdcdM0qiaYhf6ZOCS7f1Sy3nC1B98twAOnXeThQl+Avyb/D+DxeVzIcf
	 cc+jUkAnWWeQ60+CZoSdyg4cawSVR7GowYuMGNDcv0uL95qvqs7okpEGNTnybQNltc
	 3OHZG90bDbgOPrm/i651JwYl+CxHR2UaLMm/u1mp/Vxj9qcW7Dn/POAZiPo0tl3+aH
	 KYno87HmxS0QW04vqjujz407RCJ8/b5u2UE94GQrQifvZSPv3cu7zyXTFajXcdqFae
	 x+KQnY6IQR+QkJFTMYO/jC7qmAQCziHzh9BDb/EJOZCC4AXRQUi5vfKi5fzgYVnJzi
	 yxWBjy0DpAjJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB16CCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176251199358.26768.7105285485537305484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ca0fb8fc4be9abe98fbd9074a85ccbeed7e2e86750f917f9538c472470cb8c9
Date: Fri, 07 Nov 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762511993
