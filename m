Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277D721CFF6
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756714794; cv=none; b=EXyey850TtcwgdZwAQooNXHHLJ34OSIWu4rFXCd0rweUemCCp5i+rIHphIfUegxUQJ3v9CMCBZOEt8d4vOeZV/+wCBJIEz83FIlc9KTBgSmfzqLJPZvZbBUo9Rz56rM/jG8Gk08T/wIQzYKLYyPEv/SyJ+22iByaYLRhxXsb/Tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756714794; c=relaxed/simple;
	bh=emh7mp2cu34ps+cvkIkXiTVuG7ha6leSVnybCV/wJ4o=;
	h=To:Subject:From:Message-Id:Date; b=rQdHxXOtmEOi19Fk8X0ACSIzmtKp38zfBHsvxkj9zEUtZ0rPhJJuey5ebqycGYp3LSFFAnfihSRNGY2YtAS8+BQ2rdJo0iSgRpUMHaChA9dCYZkjLK8NmSusCzxaDc+xykt7qZzdRP+IPZAU0Tu3BJrXRISIpJ5xb5Bln7Iv9Ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvijDs39; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvijDs39"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44E9C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756714793;
	bh=emh7mp2cu34ps+cvkIkXiTVuG7ha6leSVnybCV/wJ4o=;
	h=To:Subject:From:Date:From;
	b=cvijDs394tzNeUqiZrEZzt2lq+OF6rUMgIuXSzICDrTC/SsGd5AS4Ir/j95Hvv8zi
	 G72k4i/Onvy52q6Z5wmYQO5ssyZTBvL/HuyyQ3ch0Ga0TfbFwtMCA/7yCnmd1UPatu
	 U/kw2+rIsppeEj4xdffjnegZv0GLcKDvESRRw4TpF7uA5Bc/q4X26bY0/HV/WAXv4a
	 uzDMTKP6w6gOIW1Q1d+NbUjzkY9hHpH6BToKKhuFTrUDwyhVCfVGxW/x3g4c5lCSAf
	 qNqtlJVJ+JiJLLDit9rDkVkIOpbnNjOtm2vf1uaDZQ6Hc/tGK+EAwzojKQt4tjgMmJ
	 wlOpuvFm3GgHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916E3CA0FFD
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175671479358.12015.9994409740532858138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d91ef2d30557ba636cf9e48507d0aa8ba46b0f75685f816f37b8a0b9220c1bb1
Date: Mon, 01 Sep 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756714793
