Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073463115BC
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769132034; cv=none; b=lpFed9pTrULKl7qfCaXsQg0atiKggw262IEaNghyXCcHw3DM/N80Rf5rW47k7PDFp8yCcJz1fs7LmijBW3GoNP8EvZdZ3p10ZF57/b/bcoD+U/U63egrFdPsvI4Xtkvuers7N/OHBCPOnUbzT02O1nGjvaYu7UpFji6kJXD7meQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769132034; c=relaxed/simple;
	bh=b5ccSphZQ02dgAemcZdZFe8RMIn8He98Ph7fXktKoeo=;
	h=To:Subject:From:Message-Id:Date; b=damuALi8N/6+Goz1jXIikmX3ytkAmYDlwspv3hzh02SEOqDCvi7YLmax5LFnPSEUyz+wmEqpsj0h7Cb2kT93/K9N3utqalcLFVHrhOh8cBGHNieHxwREXeK/+Ii65nOza5r962mR5yS+/f5AQ3iHdtOeKNQalSeJ/Y5u7I2cGAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VNY8bt0y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VNY8bt0y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1003C116C6
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769132033;
	bh=b5ccSphZQ02dgAemcZdZFe8RMIn8He98Ph7fXktKoeo=;
	h=To:Subject:From:Date:From;
	b=VNY8bt0yTJ81KKyd3CQU0qlTFrif0vuzc++Ecj4MXRoLY7cjVQPcHlNIaVnGWd8Cp
	 TaSC1krM/v1YiJ32KP6F/jG/RHrADalk7AsF2LTZadxWCjat5d+OC/dDyY3CBqjuMH
	 xbfmm0OW48qTzsx6NeuPs3Qk+pWh7viQHod8u2pHMiUWNSe2b2o46V1PYj7sfaierN
	 vWYq7JByAlp6We3B/5T6cnPmJJOi6ogAlHILEneoGAx4s5HwIBziiSSbQflze396Dm
	 f6eRPXIMqxydH7mv4fUFAim2Phk7a/5JWU6j4CnOCibXw/ySbBcVkJUHh8F0QunG/Z
	 pcXKQcecB8Uow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FBDD6CFAA
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176913203359.29742.11200059674112019540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93e51dc98d27b08b2345463a730612f7067850ba13bcc9c6ac911a942ae346fd
Date: Fri, 23 Jan 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769132033
