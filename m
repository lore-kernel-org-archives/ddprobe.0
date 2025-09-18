Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168562F3C03
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758229194; cv=none; b=J4veT2F7W4eiqsyjhlPGVVHOl07Wh7cQJBmOntRFCLV3sW/E+dy+M8kN6X3YFoG8melkj9PWek34Noyob9MLCj17z/+Iykuis43d3UbSZKur5EORdEx38KnutuTCjGWWwUchWKE9cPPQhw6vtwaAg4/E+lFbhqWrsNcPEydBLPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758229194; c=relaxed/simple;
	bh=ebHUnkYpyrtst5LPqfSoKmdRck4wUmDw8cq6h7qECp8=;
	h=To:Subject:From:Message-Id:Date; b=VobZKxKbf73ak94ttZpZt+lp30tfryD6+cIjcM9ywTfXJM7kikoJM5hP0iowUZmXYrlB5KmualbOtdaJSnfwWYjw4IsMl5CvwUzknxtoWwgDRqhBVJp/urJJ6HgRRvD9AfyrpDWG7zbFp1CmRlwCLJV3Rz21dNyTuFO4URtKxUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJWVx5Cb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJWVx5Cb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE9EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758229193;
	bh=ebHUnkYpyrtst5LPqfSoKmdRck4wUmDw8cq6h7qECp8=;
	h=To:Subject:From:Date:From;
	b=MJWVx5CbsXx9RfOVvTeK4w9uyk+kjuGb2laMVhd6+Gwve7z0jrc5P0bogxr1Qm13t
	 RksaBvvwMOH80yyx1Jibut34WUtxmovitTLkKIyl6DbY8pAGM8rL56vvOR2PQxRV3P
	 rk7zMK7egfs8lOvw8CjCjApLkzXFfPKZkj2xc5n+WfEbDFwEyZzrBVaLROGvVlmDt+
	 J0wxn1UeFzJjS3ngQGxG9e4BjncE5fCkRccKd9zOO3XkmKP24iM+uAAIdaAZ4RQuSl
	 KriFSmTJYGaCB8BBSRUDKt69o2EXUPo9lfSi+Q2EDQUtgC9fOrQ3X72L4qFaI5yqqm
	 GmCDDCbyx0XVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918A4CA1013
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175822919358.14886.9305846800395238022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82d5fdb119dde097a1dcbc9f6f89c53b22983176a1a6c63f388fdd956e7d9b0a
Date: Thu, 18 Sep 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758229193
