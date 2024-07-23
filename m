Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CBAC3D6A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721732154; cv=none; b=GGvqYjmJ+mGmNXGc5OkxZlEqXMknRH+UCafnkNyCRcG1OJ2k/bDMbRCnZ4eNc9daGG4ULAJVa5KllKJ9QOQe5PE2xQ2uvGmieB4iT5ekV2IhfF97Ne23XRqvBufksPVgJcp2GjbcCH0rdg7arXu1aSMq5rYUUvJi+ZaZ+/UVTfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721732154; c=relaxed/simple;
	bh=TR+sjDUYvEQPBstQfYIAjM737YkMPRQ9E1VIwYC2Jz4=;
	h=To:Subject:From:Message-Id:Date; b=iAAXC4/qsFHmxyC6D7AExFM3ULvZrRftsU1LpTmZBNjSPyIDtqW2uuD6xR3y/L/m/v7f8fR67CC2ywT79VzYGty3U/JkZQZzZtYCVp1ZWRiGBG0wXjvFam2bfacqqLew8nt8q+j253mU+0kji919AevYcCNXObWnKT1S9xJhoI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GZTaVX/5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZTaVX/5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF9B3C4AF10
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721732153;
	bh=TR+sjDUYvEQPBstQfYIAjM737YkMPRQ9E1VIwYC2Jz4=;
	h=To:Subject:From:Date:From;
	b=GZTaVX/5ACSev16OHR/LzUcIT1o6Q+EkT5o9T2EvPRXLdmYQKiIGuGiw2rhqw7qjr
	 pjKHCi1V06l4heGBCB7iL7/JSE+9nvKJJzCqpDfY/gGJdJ+X84Jas0zEKljC6fRbBX
	 ueLmmLt3e1gUwDSzudGTUEdWwU2ImSfrqyEzQiSrvx24M0iMSojvNv/28trRK9QHDd
	 bCeJSdsoVxkpl4OLsQ+IIzeYM/BNbRoc+dslmZZQ3k9IS+4bhI+QCYmFYM/sLQgL+i
	 OXoQS74Pi9IAIh6Mg5V39lOK1lYpRGkp9DoIKKHBRhJ2sZejRwMk7GtKfATLLiFWKV
	 RsdgzoUMXleYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986F7C3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172173215361.24206.11353464818862836076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3126e6beff1de6a6038bd3b5853191da26142296755d4ab91bc0ca8dfc678797
Date: Tue, 23 Jul 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721732153
