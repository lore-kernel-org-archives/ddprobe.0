Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35EA22B9A6
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735170354; cv=none; b=LuvcHx7ya9pCZhb9R45jmxNFp82cqZwzFeNcFPwFPz3cksB/yB4sIY2YFGGwlaksmeRX40BIRUwAj2iddsSXsSvDFzhbFXzEPevCyGc5IaKo1Hg4P6iDbKyxId7pqBj4Mo1mx/42+RHo3oDN+Lj9dloi7jXfBfIttggejV230Pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735170354; c=relaxed/simple;
	bh=SMQoyCW3R5jFO8jjqMlZF3PxdMbIKkAd4BilPa2Bww0=;
	h=To:Subject:From:Message-Id:Date; b=npYRGFERhBZv2MCnCioGfpbEZudnu772R0tLoCNZyBAnBxNWsB4bynEicJK0XqCSBgpm5idTIIIsA66x86zt3z8JKe6DewLG5N290JxFeJ7F+7n03n0JOZDj6ARfLZiTAPNQKeBSAgE4fEFGx1j6HeK8bYBfu5AoHTQzVQuBg4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=po2qQ1wY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="po2qQ1wY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C17E8C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735170353;
	bh=SMQoyCW3R5jFO8jjqMlZF3PxdMbIKkAd4BilPa2Bww0=;
	h=To:Subject:From:Date:From;
	b=po2qQ1wYkMgIix91iDdXbjUsQecGqO1EMzTcakN0jAYRnMOuJb7iWNJAGu5NPOGB/
	 RlgrH16Ncb7v632Idi0D4CstzG+4j7IkiRAdZpa2gYeCwFzSwk5eb6vNwi4tyWgsb8
	 dNEAjAoidjhuSJlPm6lJf9LxvwvGFo5CEepAGDd9RYxNDIE4A3qc+rv7ZQ/1Zt/8Sn
	 YK71IPvXitYgLN9ni622opC8Y/DpbKN9edkd+7igMtQK7QXgI0Xm0Vtr14HR58vxlS
	 SzkcnDGI6sk2uX8L/4yKzZGqLCmB+5vH5tRIpt+tdrb05A1m2jgWYGMCUxDIZ6yJvd
	 HQMsnzS4r4p7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7439E7718B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173517035364.25666.13585844247075811895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f354b10c0ea70787d6f55f4176c67f2d240af3c111ab994e0d15c80c9b256fb9
Date: Wed, 25 Dec 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735170353
