Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F5F184
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737332754; cv=none; b=sAPkv/fztvu/1z1bJFVIVuhG+4Rzf2wpd2epGxoDdbGylEsMX58VU/am3oBDdPqifEXw8bPkmxMOygkqdayoxp9ZxWB404CQ8E2KaeIjhgcdHZiFJiLFT9o3aflLapc4zoB7yaofTujCsMHIbPuIspbN8krkN800icFPkbm05ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737332754; c=relaxed/simple;
	bh=944WdV7YoygeyvnRA665R7hkRz86C3nqzaCwVQoA+L8=;
	h=To:Subject:From:Message-Id:Date; b=uAPeAzBFn+siyxqHR9V1xzseNljxpwhqxOnjt4Clt6XK9xOcn31RDHBtEL8KsytkTmohgK1QmcbklHDxCUlfJVicSc5j0fbA5DjhulbHDFXnsjQ/nsdrqaZLH1CutVrQ4D95GzGN/TshQpSwA0gCagsc3h7T5+9iiljQmX8SePM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RowpAMFU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RowpAMFU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A694CC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737332753;
	bh=944WdV7YoygeyvnRA665R7hkRz86C3nqzaCwVQoA+L8=;
	h=To:Subject:From:Date:From;
	b=RowpAMFUPbjI7lX0pRGqXTRkXqvt1SyrI3TPuTfRzEDk55paxCaWfnyJ1hJL8xA14
	 TXjSfT3VRPvPPyzuDTcedy1HAziet0XVSx6ACAaioKxI2/2zxopOcmYCT3Xq11WFk4
	 qGXDROQ2arVaqoHjUmRZ+Q0uGwoLUbe3CGMyto1epRnQjQU9ZV8QkwVbvRM0GOcRay
	 VXS0COBLTIUnceGQL3NyGQI4j0A5Q3scWeGtLn6BdOW9TBrPJkxCFiOtCevx9O8d5j
	 SwE7HdAGr+Hd9PCXDbv0F2HuhuZXmq4dA1yMVhIjf2owk+mW0UQDaooBpyPR0aDTGi
	 m2FLRasW7dS1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981D3C02187
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173733275358.2181.8905061878002141780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f213427a28a6272ad9b0e4d7394c590579eeb1c5e5bc75cbc1f47711dd68352f
Date: Mon, 20 Jan 2025 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737332753
