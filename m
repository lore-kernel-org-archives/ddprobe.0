Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 622BB3F9C5
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 12:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718454503; cv=none; b=Pn9X5jocp/kU6o9jl6bCzwIqBHQ6AaU7p7Ciu29+a5Qmko8OaDll/hKPgYJkKNtOvXb7SnJ791vPSUTaAuECKNwoYtTiiLOLPFPUsYf3JbwEtthqw7+jqQ2N1ThsA0/CVf4XSf8i81jKU9NXGSZ+zjZj9AF+H+QlFxp95SBWaz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718454503; c=relaxed/simple;
	bh=GwR5ZbYD4SxarxLh1QQKhf5UudqUTXKHsDiS3+aG5HE=;
	h=To:Subject:From:Message-Id:Date; b=kG2SXKEYpfHYkGBns1UK0Tmls2Hr2XFITIgl5TduGNhrvaq+Lnz+DJkTEGPwqFtSBd5oFVLmeEPImJumMlBdB+Oqv1ZTJD2FPFVdwlbu2DYWKJ8mKpAZEhoKYc1a7x+Ylf3pbKz3GnzaCVx9omiCqBQRkSUBmeZ1OpaIeLm7WhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YbVuASK7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YbVuASK7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0CCBC116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 12:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718454502;
	bh=GwR5ZbYD4SxarxLh1QQKhf5UudqUTXKHsDiS3+aG5HE=;
	h=To:Subject:From:Date:From;
	b=YbVuASK7gmxcISuQK0AfsOlI2ORX/X7ddKBSPIJ9o9OHMUsXHfha9hp6ubOpDm0jl
	 F71THuetxNARpSDOW3rYBCjdXxJPs72gowpoKxkAf2VS/twKloXsK1exlWojamgPzP
	 uQw0xD/VABERMSNHVDdeFBXlyhGK57qqUHOUZpM/1PWuqKXd08U6V4+bDFcl5q57ZJ
	 FmpAbR6vUswGyKbMx57wYmBxDdNgFYVQdXj3Qks0Dw2sK0Fe/L35Csqan1X0vhACfG
	 zkQGbcGPqjLmmSLvcWyftyVEOi9+EKecxTEp71swsSQoimrsxve8lRO899b0U788AO
	 3JbTECzovK/mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C984EC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 12:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171845450280.10439.12308340810358891106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 784e9dbc1c0a352ad678c590fc798800c35a116b11086fe66017c3c7215163cd
Date: Sat, 15 Jun 2024 12:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718454502
