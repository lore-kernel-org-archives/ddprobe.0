Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EDE27456
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759517394; cv=none; b=q2qIgIo5skUR3+GRurWFwid1ysJOO5nzQPKivHcbGQEYBRCXyKbRmiGWqlPBQIHHTtwrC3XXM0dZdHDQqMmcjRHBsrNnJK+OdNM/9aFFr09r11or48t+62yEK2+MLpLWPHb9yVzuCWNN5SJQIRB1wpYcrYmto3HcrAlmxnU7+JA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759517394; c=relaxed/simple;
	bh=jjqZ8Z5a95GT4oV/T/DowJkuJq2DHVVR8wl8RnwcxK8=;
	h=To:Subject:From:Message-Id:Date; b=LEx4QUcZQ5Ub1YHbjEIbEsd7ekd9PNsTH/rlkdc6O+GPlfm8y29ExKbwUJcLZi2VhY0QhWS0QSG8C4DVvUTCW9ACyrNaoUucb0eiw3XG7e+c6EhYeZmZr2o4ZeqQ2ei79mac348jbYqrel+vg/g5AxhAb2pjrqA6ecpbrRTuAlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N+vepTSD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N+vepTSD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4BBC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759517393;
	bh=jjqZ8Z5a95GT4oV/T/DowJkuJq2DHVVR8wl8RnwcxK8=;
	h=To:Subject:From:Date:From;
	b=N+vepTSDvEYsxw6204CmKko8DDzsAeBnXf6m4wiPtzi/usliEFy1nUPSzN3FT/du3
	 EIJt5rcAXp4lel2bxBpISPHH5kghzVIAMAyrbXLsOvlq9n+G29XeQGDBHtIJB/RXvV
	 iIFxAN60Xxo7Fiz7xNT4NuGrxZtkwUrK6m3XJccHqXNhiqlKC99fZ2XSWeQWQVyoyP
	 mRoD2XXrmEW+dhPx8udCRsJJtRiAuU10SGP57ggQCeW4ykYwC3eC0EbHPyk65sss9d
	 3OxgfYoWbRd9FqnyYSJrY6JD0Bp8T5wZxx/p5VzeOPKnqlGjrIck+VtgtfVH6I2S/u
	 ahFArSR8IWqTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D85CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175951739358.11262.14730857307743677585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a71bbd45d1bb3aaea5743c127f2bd96c34f9c3fde7a7560bff510643d3a373d2
Date: Fri, 03 Oct 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759517393
