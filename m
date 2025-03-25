Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55127254B09
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742919594; cv=none; b=hyN1St2kmywF7tYKO76q0dm28jYHe91S+NrMIZNIC7p5IxuszhpcMG1pHrRIEsCXCzT0bw6P47Dq2LsOamti2VhKXjRclWui9ZNrLFBc+azVmlGAclC7FWxc5+2N61dLGeWOa0Md+BtpRcaeiknAWn4jO69q20FnwMgRaWWO6ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742919594; c=relaxed/simple;
	bh=4jV5Ptd3cinRUZrVna1OowkdBquLO9Xi3wvaNOeZDoo=;
	h=To:Subject:From:Message-Id:Date; b=MQm3hc2SUV60+roMuqpuW+RTsNQXsXLkbYsq/QhBv2t0eP5aAhD+sNh2LwyidDm368rrYYOl7fss+K26ZUs21JfZdZPyrhL0eTsDia6026IotqvstMk2gOUdpWCUV+UcfLXtlN/oUyqEuN1cSM7we6yhPEn2V0tKLeJct1NgdKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UKkjZuTx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UKkjZuTx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA895C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742919593;
	bh=4jV5Ptd3cinRUZrVna1OowkdBquLO9Xi3wvaNOeZDoo=;
	h=To:Subject:From:Date:From;
	b=UKkjZuTxUhJGeaTBnmVyxHWeaSn7nAa7+qByfPk1n4pIhvwkC1LmRuhCTIPUtti6y
	 /Hg3lyQBEdOFj7QU8sjK0fcIq9DOPdbnvjK62d9uiGb3WeLbLXOJ1dX6eqoJilquil
	 us3LwdyRmA4uaQKTceodDF1vNXQ9xsIN7Gh4lxOv6csK9INcnobctSytCI5Im1nWuf
	 YESkGfpfV/Un6pm1LnRn4C7593cNRoitWSAWJq9mFv0bCA2TyR+nW1OG8BoH88sBKc
	 +SoYvuUj0uWki+HXU8XfJjc7CsvfoHdovM4vMUMEN6vQpND9fPpcaRCHTxRo27uanI
	 NUGncKWLwpJWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A487EC3600B
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174291959365.27765.16391991340717688986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e77f5833dfa2f7c3ca668d269b58b35d0f83e79d6e9fd6ac7eb18ebc14c2f407
Date: Tue, 25 Mar 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742919593
