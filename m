Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4954772621
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751316594; cv=none; b=qV56sA5ZvezUbcETJ8dPFazu+S+a4MHSi29JIT62l4sGhvkup9XHX8yD7BVek+MHBajheKS+k4Uwbso8S82SAimysMQGUO4bucajkaU9GuKaetIs5g8c0lu10049vchC8dcEklIIemrrW2s3rXBWZAt+eBS/8QhwQ0d7oK3U1xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751316594; c=relaxed/simple;
	bh=zcl96ye3QQwOxFaOLHrXG+gPbl6iI07xd7GQVCyzCyg=;
	h=To:Subject:From:Message-Id:Date; b=K+9nCUMrWJXFhqe7NDbR5vjmhH3hopKOozI4wHDK/esH3RmnGFfB7hqVEgQdMZmftjB8hJgnjPB46QglmPshcU0sbqfv19uWH05Z41o4Rd1yZXm6X/QloldI3pKX5gPgEL/R86n1g0dR+VnQbpNWaZE6/bFbFGmxiDT6WJIHvHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZRhGb6i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZRhGb6i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2402C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751316593;
	bh=zcl96ye3QQwOxFaOLHrXG+gPbl6iI07xd7GQVCyzCyg=;
	h=To:Subject:From:Date:From;
	b=SZRhGb6iSiV1wFn0SBxDzLSIk85nQA0nG3pQ8yhqGZ6cbNb8MNheTF0YXDP0UW9+x
	 FdsNE9Zm1ea31k16JS7fBXzUeuZaHC0t5A6uGD7nIvq4cuTSnI4gtlbKqT3Y/PfWrf
	 Hox8G0Auqae9ZQ+69YeicbDhPDBIybkI9HNa+ysE+r0wcGIfaiTlF1vGar3thWf76m
	 zO1K1/4BRiIKQf4PCNDKDox6sw4alM41uz13e6s54hsLcBgSK+PV7gS4UVlF1JIZo+
	 4+fBAXXcoRNhGokXgFtccKiqbfxQLcPO6EPKscF0wGmTNsl5gzGF//PhDB+mqzIigj
	 gZ3l/MyMKSlrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F305C83030
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175131659357.27546.8680021890999660347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 001cc244eed5dd8d3f42e0ed7fa380cf357747fc96c7a6f73a11337ddb1be09f
Date: Mon, 30 Jun 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751316593
