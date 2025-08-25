Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8A83019C7
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756146594; cv=none; b=cOmfsn9wmmXN6c3IanAuEZT3YnRJegB6tEN4Mzs5z5nF1VRnMdR8FlfFhzt467B0eVEsD5UF+rQSSD+0ifsNDuvcY2RD8s7vXVWHCxGy7j5ldtdAD7rg/EeINQhHGs230AzfySfwnZVVUd2YZD4tUkhyySMgUT+nqC5MvRvp62s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756146594; c=relaxed/simple;
	bh=AvZrJOHv5BnY/JithTtXpL6p9G2avMY5uwZjX4kjh6Q=;
	h=To:Subject:From:Message-Id:Date; b=ToRiQA9owS/AGtHfvmmdhf9YJJTjv26Fx9gMU3HfpPHBQdGOJ55C3jshDZt5Z+QXWfolhy9Um2nCBPcIOYGRTiBStCPfAZRv5BruuobSr2xT9Eyl7SJ6OWBnvYaEeTAIfJpC16QOn2mnORtdp2PIElq1mYzxjbN0GQFh0otbbuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LSK9GW25; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LSK9GW25"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46EFC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756146593;
	bh=AvZrJOHv5BnY/JithTtXpL6p9G2avMY5uwZjX4kjh6Q=;
	h=To:Subject:From:Date:From;
	b=LSK9GW25NBdb+pY86DDQANAVJ93+IdDjT3XYY3fWSbGezMFWN7hKsOBV0HmvXGAjQ
	 eTU90FURlGT1ydt4mrdofRwLvIUDUPyhJiTBzxQrIkClveb/VZIJoyLV/3AlDsgBD3
	 CeWSKTQTjydAw7YGM75cAKET+0gV4oz8/Ua7MNkZxZ1CQys1A3cFIhDu00ewctgd1N
	 n9C5HuPwlHHEjipGVSANHgi+i2jEGDq6vP419R2NtJxqhiT+SzxevR19JFGomkrARu
	 Qj4xr8/DBnD3+EZ4wYmKig/NBqU0QElaGuqLGea+c5xkyb1p4/R6ueG1GqypsWG4/j
	 EfSLhHSa66MIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902D3CA0FE7
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175614659358.32577.1026455836535802111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83c22048cdcebbe23bce0d7bc9efcd4d059d12cfe5188b0505fe3bad1373475f
Date: Mon, 25 Aug 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756146593
