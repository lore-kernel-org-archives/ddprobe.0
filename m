Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09B6A36212E
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772144094; cv=none; b=u9Eba8T6WP0m1aHVOksCUdL7F6XzCNRy5MUrkGvCBGRnv58r5BDpZ7UTj+xMF3TnT5huu+FCZ2VO/DuMc0eiUYzHoJJRsXQc5uazGFMbHR2mQw8iqPChBLbrPSKV8pUyUyfLRKdM6Zx2H1ZNPgG+ARF76xG/EU8WRAPXQkuVJP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772144094; c=relaxed/simple;
	bh=J/f6kXLBMn/BA/9MnFVYieuCZPW8rUGFElRxy6NrJq8=;
	h=To:Subject:From:Message-Id:Date; b=e7akxw9IQDk4p2YDpaHag189kE63Ja3X1ayPqe+0m9TNuLjBiLdhdSi+xxF1X9JiLFtsznYuH0bNhBuZvfpHdKxnUzJfxIB0Qip5EJyqRbYT0Vd3ucZjpzvMGenMOgqdM3PrbyrweZxLSW+jlQPXvdlZUaQADk8fmH9u6UacRUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZWoCn2+Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZWoCn2+Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D4BC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772144093;
	bh=J/f6kXLBMn/BA/9MnFVYieuCZPW8rUGFElRxy6NrJq8=;
	h=To:Subject:From:Date:From;
	b=ZWoCn2+Z3R2THVkTcpcH1SPNIgM2BskXJZBn/xu8y2ymvoQpoUSU43YrG2OJ9E3b0
	 cnPUJdAkmXcbBEbRgY7eOfZrI9lAKKGKfsqEQkDfezinkoY2lEgtH0KdEZOdBIPckr
	 8RdXOmIPAHgsEFxM6PPTD1qW0j/RY1ISwHzKypQ5KRNEN+xDBom/cJPZmmZGGWuBso
	 IP40Y88HmzZzxArO9s7gWPR8S94pwq180qpKRdkQIH6Fn2uzGg9/3lciLK6Eb2gw5f
	 2OywLxGhXLGntShMtnDAPdnVu9lHoybK8RQOkPnFnX3lY6/r339PU6p1ks/UtTpk0d
	 lxTJeBt8mkFrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C02EFD9E1A
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177214409360.27225.11297520416347157815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f58862e03724cf400fb0761bf11b1207a75cf5e9eb7b5e2bc8b84ae2864119a
Date: Thu, 26 Feb 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772144093
