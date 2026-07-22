Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB43C406805
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 16:59:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784739575; cv=none; b=FEJyRfdYswvmcUOSHeHRE1eFd7B2h9Qt5ZakviobE0Pz/nlukjZ6TTvcQaEoGnBpt1yFpXFIl1LB5iF6wqRyhD6ZUooLa4nx/GM7w5bmRdQZ+vUt11GPJUl+taKaaihb9WqMG3noONMO2sn6YIQXpa6H8DhWKdexBy37K0obamk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784739575; c=relaxed/simple;
	bh=3ePfw0n1cKWhGkMAH/xO4mv+PKc+6a24fqDWTLBJSNk=;
	h=To:Subject:From:Message-Id:Date; b=ZT4uFhP7ELH6F8K+fsgCVQIuCf3jN03UvuB2w8w1/NfV4AjWgG/yAisdgyWRJvfS9+9pfC4/MM2Sfxws2rCLXgxX8W4o7x4sB56+POPI7rkAPUnHygeDbksoRAZ3n8Hw4wHqWnICKOyEI3OsBTLS+alnZYv4aIirorzcIgZpO9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZNR950I5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZNR950I5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D00CFC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 16:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784739573;
	bh=3ePfw0n1cKWhGkMAH/xO4mv+PKc+6a24fqDWTLBJSNk=;
	h=To:Subject:From:Date:From;
	b=ZNR950I50E1Dik3oHgMemeXsZCOn5RlJydlq0kNyPHxT7merxWLwMq2NWRh6QKrpo
	 ins/Og14C5Uy3QP/KsXE9ZjU6xa4bLldyqVhoNovBB9T3zP6IXHRvBHsUvi4kWXnZv
	 3xY7i9K0jtTgiGBLWQFDH74LMfleFkQJN2VkF2lDTiGnpgmynjjTi/YOBvIhJZ37Ns
	 N9CFNJpI59L3KSWhKDtSEPg+qoNoAAnbv+/KfhvrCUjXI5XxcNZtyTRXCjhekbRISw
	 dljbxWm06B7Kfa2KdRBuG583AnjpooTdsuCdj3bgo8uIejsiTOIv6nwf3IADB16RFK
	 J15tX9MaKqDyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE7CC44532
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 16:59:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178473957370.29169.909542585289861000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ec824b1131e5c23e28df7ab543465cd73a039c20042463c9740b6da51199841
Date: Wed, 22 Jul 2026 16:59:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784739573
