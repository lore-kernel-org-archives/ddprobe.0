Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F0B57C8A
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 18:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718218103; cv=none; b=oVxYl3fP9zoCTWPgP+t5nNwgGxEbezWh+7fgGzWJBlqBky/4brdDEHoQv0KoRBOGUujVLx504SuIUP8biSVmCFq5uMoZElUqr3+eNdfYQMjVMVgGnP9D0ncmXYQ1zKyDppGQSjF6FojwaRJ4TNTpn/3j9oOiqp2npg+GLFf/S8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718218103; c=relaxed/simple;
	bh=Ab8xEbXlm8vqDdMEXgtRTKPDa1lZNxFihpnC5H20QO0=;
	h=To:Subject:From:Message-Id:Date; b=o8PSUA/zjqStNwSQpYtfJ6/O1YJ3AIqlh+ZhICoBLZFJU9swmqHDOjXleyYia+5rOcq5BA60hua+jqZ0jXt6GeMGSSCiCg9XdKBJ/Lf/hxFM+Ruev1pSfp0rE8FERlhbQa969NynMq+Hj/OSN82l1Gsnt/BhZfH8HTCvEMWpFeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d3Jusgbc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d3Jusgbc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2970C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 18:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718218102;
	bh=Ab8xEbXlm8vqDdMEXgtRTKPDa1lZNxFihpnC5H20QO0=;
	h=To:Subject:From:Date:From;
	b=d3JusgbcsK48XYOHkn0O2gvI0ee3N+9xw3Z1aRQbF+SliJ0D8V2SmrMr8u5r9IO8M
	 S7yH1/2LbR3OYHqD0KKv/XySzIEXkv84AQYi4Q1Hqu+3cIwQC8go5apLwkHGl+un+p
	 1Y5yWnnmsL3oRyZ8Ty/xbKa15tYGrx3nLxBOI0cJbLO9xQ8XPVu96JthfAKvmFNheQ
	 QgZEk5GrOtPUDOn4beAAdE8E/NtCYYuLS7Zq+B4odFv7DkL/WX5tWiS7IW+VwZlJUV
	 EypfzPhxoFMjMI49LIVjNghoFYDc0fDDta6kjQfRzjz73JiEhGSwleeCWVoh6OSpFr
	 Hwr2Pu/BL/qVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C43CEC27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 18:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171821810279.1812.12044552584275279448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f39f05429f19521dc06f4bf6f3f17a2fa01b7dedc20c58395e0fe2795ab959d8
Date: Wed, 12 Jun 2024 18:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718218102
