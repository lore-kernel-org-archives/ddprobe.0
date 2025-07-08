Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3682206B5
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751977194; cv=none; b=T7pkfXaHAHu/oCuI+bGi8sEtT+BPFxFBPcudHDkIHz77nCRdyjSC1w7PSmh6yz1TB/hhbPL/wVSdqsJZUo/+wetwzd3hZUfEd0/6aHG9ZlafsW4F3/8L6AE7fIhyxNKy+bnAik3cQ+97KBYM7qWMrNNASJBfWcO98f2Iw6h7Pbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751977194; c=relaxed/simple;
	bh=2OFb5Rj2rlnxiC7QbXHNg7LWo2pwtaQFj2CItBFtgiw=;
	h=To:Subject:From:Message-Id:Date; b=P5Zw9xh1Rc4ssFNl6ufEJ5CwlDKiquSwp6Q6jtSFZi1WN/A3KRBYNbTOJycQIQ/SzjrRgDVe+9Qv7Q1UWtsjscD98nAwTGSiz2Pg6rIEg0GaX85vg8yk19SFin4GCKUKrJTd25x33+c4ktoIlXwt5An0Ul67zzWVByR+K9WGDjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AdCdKxFu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AdCdKxFu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D470C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751977193;
	bh=2OFb5Rj2rlnxiC7QbXHNg7LWo2pwtaQFj2CItBFtgiw=;
	h=To:Subject:From:Date:From;
	b=AdCdKxFuaDqZz3R2WKpeHltso8iQ2OywjtC4RL4NQSwDWidONHijAVEfGsFdp/ZIB
	 34kb4dB+ssgNPSkZir/2bu80iDMdKItSZGKlJ5+KRfvkKr11hGa8AS1OqFktd3fyNA
	 O6EOA66fszng/9CSS4dPvdWUXnQUBO9K06uI6CmbIkcONckXJ54IfMtb2AzQZKUdUe
	 /2Q5PlBVIA9sW1zkXIbX9Jk0PBwvrV4FYOkTFLeJGJMxUuodLcLaScHC0rWuCXnVUf
	 9jAwewKy5m8KNdrXUkR+xBhKwusCkTudVk1KUgJT15LOO2VtUSWmz04UQ0HDZC86jY
	 mvezhtogVj8MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E79DC83F0A
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175197719357.18202.13061996785865651468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f07ff75a9014ed853fb5f638a3102258e1c6c8146a74a2ae63a86ab378a2bca5
Date: Tue, 08 Jul 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751977193
