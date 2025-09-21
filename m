Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A282D1F42
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758459595; cv=none; b=LmM6W9796Ex5FltnuOIqO/gmIanD3x4YGtDDAde11CZH/6sRxtfsmyg9XSQL/zfJnIPO7ErdEsCm4R8NMshvGlZ4D6SjqbHC2Fb6L75lrvxmrPn1h5iNWV49DM48fl5Qvx7IVk8HfD+blpI1dFfoUPCFBEFiDfeVI4rUCnlQFrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758459595; c=relaxed/simple;
	bh=yWEXQLr0uWMuBwDcl0XOkYIP8evNPfKD2x26/S3Lo7Y=;
	h=To:Subject:From:Message-Id:Date; b=FtpbZHOjiXaSGZ//fk5mm+s5G+cF9phEWAd+9lXu0ZfAdJiN7p57ylC4ydq395vXF75PK0PSAOE4K3LMKt5KoxZ7YXq5/eToEKw/XQx1ueHyZp7I2kDyvSA9D4+lBIyNTAFlptd/S8uFCpGPl91SvS9Qi/2lRdxh0/pQqsAf7wA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L8EVRWBv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L8EVRWBv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BF6C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758459593;
	bh=yWEXQLr0uWMuBwDcl0XOkYIP8evNPfKD2x26/S3Lo7Y=;
	h=To:Subject:From:Date:From;
	b=L8EVRWBvi89voFjcFugbrVU/XyROjYs2iF6VlNN4OR728/ipnaVU/MT6/rxegdCAt
	 ClVGI8c/f+eZUPRm2YfqKAjAGL76FdgUlT/dnWNlwe4NtBboQXOJKy8r/0PoO4r887
	 L2Y/pKwJB8/PYfY3Q7GWXex/7/L6FThgjrQSbMI+nGzuoGP+khYdxsFyNN6VicHXpg
	 zydhT3Fwv2qg6P+dhhboYrlJ1gq5ps1uKH3LaoRwZaKEjZ/AQifrVUDMMuvPN4kWoD
	 10QzRsyFRflotQEnrx9C26U0RyAR5+Vh6ymFY1DrcAPRLdZvbnUiLPAuU/BALXYlWO
	 XCoqmmIw7QhcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9012DCAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175845959358.28701.5273618494606636472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5d86d9ae29cd5723338076584527b67436b903f4a49a1e840e60c69062d83ae
Date: Sun, 21 Sep 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758459593
