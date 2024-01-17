Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AC3522D
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705456697; cv=none; b=om2amdnb10ac3/s8aKVh5KCAZpGaqQCk28bulp4BcohWt2kyVHd3tcusj3yCLm0J6F/kys2zYyHzELaayl3jVJ5/UedbjP3NBJomQNvk5UJzVikycwL5vGTwcWCFqBH6v/v6lX8QKEqsYQDr7Xz2ASsolySTU4IAYQpCBJs47dM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705456697; c=relaxed/simple;
	bh=tJ0rgAyuzc/iI/jpy+pIaYXLjpG2nf/+MystCKHVK/4=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=hs+2QXHnGErCS6hBNrBtBVpjLLIQVfGEJQNS8Ihbv6TGSvwfBncGIQYix324aI0W//Ek8SFhjmkac3eN5FddlmBuGW4C/8bGn3hDBChCdoPXaTBb9xFsUieM724t4ccP8AFJcWXIgd1Zwj/TN4cFkwEcD/ghWnxSnVLtg4VYNLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fw9vI8Pa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fw9vI8Pa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D473C433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705456696;
	bh=tJ0rgAyuzc/iI/jpy+pIaYXLjpG2nf/+MystCKHVK/4=;
	h=To:Subject:From:Date:From;
	b=fw9vI8Pak8wtbU2GBLo8mc33TB1q6koLddiOPwWbj+ancrUmT9ZljBISRqGtzOYr3
	 L9gg5sRGRCWZcepMYm6j1G1FybkcvulTFNubO/2kSIiuNXwTEgZSThp/Wp2NQgjQeE
	 yvtwBNQKZDGA81YRptupSps4peet07zYr3Z9HNO4ZaVZaXLsVGqK5evsxjKuMY//hC
	 0Ko8EAiPbiQQ547Qszxpe7Z65UjPKj97RptW0KfseYL9l3TQmbKKYiXDB9thBA1gbu
	 PBULwQS4EBOToRqiB0fuDqT04cHvkDwV4qfuG3AyzrvuZNap6hdWSa4h4SlpcVQaok
	 7m4PklTOtTb4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F003C47077
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170545669636.27410.17491851338859156833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eda5ba64ee569b9e5a609b5bfb37b7248a29e46afb5cf7ae0f40ddcd49447723
Date: Wed, 17 Jan 2024 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705456696
