Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEFE449983
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 18:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783623514; cv=none; b=MCELID3ZBuyymL+nUurX2GhYoFEGz0BQecXjFEespVknxObTkPo6E3KB+VBZgU7DnLQ6Dup0T3idLmkUx+89HsKUTgs8rkDXRNCj+NSy3c3l8VoCRb1JT/6QmvdnjUmUCL53YeyMbUts1amEve2olITs087KcxNfqKU+x/HdywQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783623514; c=relaxed/simple;
	bh=843ehB2E4OemMUlmBrTOVCr/uK084IWQ7StiigLhVF4=;
	h=To:Subject:From:Message-Id:Date; b=oaQ6e6Bu9B9Z/G/2SuPlEuXbfA+tuKITeCrthMBUOVw5lRwB6KhWqy4UoLdq4pK7zkwkacqcoynMETRL5Vuh/RPv5huCtafgFPrIXOv3zvKwZuAypZc32PvblAtvCrCdIb4WgGWnUiuFB/t3dyYhpl8DXUara2lweL9CNeh3zac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dPrTgkWK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dPrTgkWK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C99D0C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 18:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783623513;
	bh=843ehB2E4OemMUlmBrTOVCr/uK084IWQ7StiigLhVF4=;
	h=To:Subject:From:Date:From;
	b=dPrTgkWKXxbybNGldVDez7IW3Z4UJqeTmLpBptM6cRj6fu+0tL9zDYLv+wOWaF4xz
	 M9YDHJMwQ/hzOxJVXu+4Te5waURGhp9CqErRXajRxYvm2UQml/OGasw2hec+aou+iR
	 rkC/DaCR22UUn71rWI1f5+0wyGHjd2VPNN90QPvh7O2fXrCY1CaXktEu57jVN+Mv9S
	 oIM5Coq2tsb7lyZDeWj9IOrxdfjxeHZMiVMB/kLbUuuUzOhzmnkGe16/bFwXCu1F8r
	 Ip7fnGBzbd221fFdUywqQZXH0Cec1uNiyRN15tV+QGJcEdiNDAE1TY37AmgyJFpDrJ
	 gMUsDi5so1rKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A7FC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 18:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178362351368.14367.5420379151697759099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe634c2271e8cc99326e31c06f565a87f971588fd53dbfcfaf1a3d6be0bcc832
Date: Thu, 09 Jul 2026 18:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783623513
