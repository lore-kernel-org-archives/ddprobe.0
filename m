Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50102AD2C
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742347794; cv=none; b=IbDP7sYu/Q69MSRf8jZvwiCWmfGocfjn0L3AZK1g/ch772PPVmAIw8XRUhCUATCRSlFzavapLkK3eD/nInE7nj3wDfQJGwDkAkWJR5UR1wmTQvVCiXlfKP8t12iS7L663koOMhckLX6mfDHpiVNfs1znuCboZZgd9olMqWhDBws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742347794; c=relaxed/simple;
	bh=82NxB99aa4AqazWXlCn47b6kCoYE89JrPOT/s9/x0EE=;
	h=To:Subject:From:Message-Id:Date; b=WXH+de7q7f6npNpXbt0rKBrR9A2RZ+KBWwvSb4zxUv5GZN1qwp4FQ1w7dO2qiqviBn70GVbuhGodTzlVVU8ZmAkbruKLydhy2GDoezDZxhxMA5/x/C34QFHT195wLWDWOkBdm/az3MNSL1mvw7YrUv5N3UwlTP9n3lOqbmRs2dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VRSxJbp3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VRSxJbp3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A02C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742347793;
	bh=82NxB99aa4AqazWXlCn47b6kCoYE89JrPOT/s9/x0EE=;
	h=To:Subject:From:Date:From;
	b=VRSxJbp3VCc29K8ShU5SkTw9yDT22sKzWNmVwgmkRoh8eRHKI27XsZ9h/ZmiRyLQZ
	 vDrUL/X9vzNKk3hZ41aUMdnwl4J0+Zc7Pd+TKhn4bMlrWC1idpfuIBcVp1L0hlYcy1
	 ULCZaHDaJjOJtEZR/fgJKcgPqbCV+lIdHb8XjaJyruAl9zX8S2r1HPaVtmaoV1wUOL
	 RO45bEZtT/lg4KmBhVfabUP3tfmVAxr43AUDVYahaH0YEt77oyJ224BWbwOKzYyb7L
	 Evrq0Fih6jPLSdR14Y07MrOBJzG7i0VYa9Ia5rQ9PkzRAmRJ4roTRqswNRNooFEdC0
	 zAALl+dBkfLTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFB2C282EC
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174234779369.9786.10639739135664078562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39392587a7778da49a602487f1f0dd7b86b0668f932eeb97d830d1a0679939db
Date: Wed, 19 Mar 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742347793
