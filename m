Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DADB1BC39
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 19:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718049503; cv=none; b=WFAWyCSkabMBs1bLLv7se1p+0D6kqtOnvyP4+Y9HrXlpvqmvKSo5X9BFR7W6edZWO2uHeSLVpr2mGa+SoYCsu3S9axxzURcLLumj0dhBx1BaCAXMcMhYvznGxFkiXP9R3Ku9g0kaq7OExoJUacQkgMbe50KagExwvZx9iw1mL68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718049503; c=relaxed/simple;
	bh=bG2hvkzYTTzDEWkxbrdtEwbx4GMYglT99OSg4TUnVkI=;
	h=To:Subject:From:Message-Id:Date; b=pSS9CrO2Tc/+FmL57VECrYs0GZ+caLNRL/Q9XHDsotV4hnB4Xk66A4iy0ga8vXQ0Y6DfKlF62134pbG/UccSj9gVniGFSIarZD3/e76OeYlAghKYOz5eZmeFNAhqDWrW8TAuD+CzRIEVb+b38JG7aT6U8VJZLA7xIQW5S31xcIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FGcDsaeN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FGcDsaeN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFCDFC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 19:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718049502;
	bh=bG2hvkzYTTzDEWkxbrdtEwbx4GMYglT99OSg4TUnVkI=;
	h=To:Subject:From:Date:From;
	b=FGcDsaeN7Ceor9wZbszTvihWy6fuHz0wG3Tj/+hP6PuTaBFLCQgsqd2ipFTlXB9Cw
	 hnNr0ghMIyUWFiQbtwyNK1u8/APaU6pw7/DS2RWAvGlxlQXhjQZMFz7Fqogxi/8G+u
	 K1YLBwEdy1QorbVn59j9ic08iu2Y64dhP4fTp4WpWIbFUrlXxOZbO/2LqhlPH+OITy
	 wNikAEaMSs/v22Sk1YVjcxkwrHr5r1v3PrSqZ7bT/wljumlN7j1Rd1DtMIrHRXMSD+
	 4HWHRyOHpYF++/OgnfL1PDVVj5AONkpPcdsRHD260pQByJXWZYc2atsikroyl4n8pq
	 EGg3W01Jz9EUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6356C27C5E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 19:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171804950279.13875.11034762651422428510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54ed05825b8e722febfe7cac95ccfd35bee43d094d430a0af8ffb165613d1b05
Date: Mon, 10 Jun 2024 19:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718049502
