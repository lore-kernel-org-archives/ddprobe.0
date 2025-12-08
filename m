Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7EE225403
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 12:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765197774; cv=none; b=KkLPZvVbB6/gSVcIr95xjJv9Cxi3u7reeiR7le4aYHPW00bP0vHHalg9BaiGCmUTQ2DLwe2tq3mmBWifIE2lt6l2JeAfdIDtA9Olz7ijWvoYgtlXvc0FLaUEb7zQrmumHX3CRQVTkQqUvvGHoLjifyXpeZwlZlLAZn0QrpZ5rCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765197774; c=relaxed/simple;
	bh=KDwjGtu+N/n6g0Jx+0KjwzjAZf4vPgAeoBxtV6jbCkk=;
	h=To:Subject:From:Message-Id:Date; b=slqArkaZSzeffVi39dOV5Iw3mf7b4gwcCH5SqSMGZuiPZtwGSTK/FDoY8b0Lp7K6wlNetfv5vWq0jU23EpUEmz3JHTGY1Ukgwhdbs1H0a4/gUKpZLaEyDqhQPcle4aJOu9BTqXe7U/qdhO/7A7YE1YRMRnxExE07u93OPEd5Vok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iM3lLHxa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iM3lLHxa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA970C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 12:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765197773;
	bh=KDwjGtu+N/n6g0Jx+0KjwzjAZf4vPgAeoBxtV6jbCkk=;
	h=To:Subject:From:Date:From;
	b=iM3lLHxa96Ti9kBkRyhiQGh3GFUIE2ai5rCSU5HRhkA1rMgert/vOI1BPzJbRTXS5
	 mRzi3bJOwQwZ4UfNUdJs6ILH0jvgfpKozMZIntN2r3ZPzXNaGn0SFqc2PPn28/HJqK
	 AurHwsyw9/nn2yamsijM0coAQXPp4YfG6oJil7Y35fUmRPqvAD2xSlWTDrocyNRejV
	 camGtI7n+/Cc19gbvS0cj1CASPQLh2LfLWt8KKCOd2oEbaBL+Q6iggQfNxBtyvgYcw
	 6/JQpUQhoZCrRyjxh0169K0w2fhb6/jfmzam6SPeBCcZ7FJWHiLJRL5x8YKstRCOJc
	 TL3odIkKFdDRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979E9D3B7E1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 12:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176519777358.27966.17612976959388145166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 773e4e4de43697e10ca36d750a4d27af0eec5c62034ac162b21bf6c956895e17
Date: Mon, 08 Dec 2025 12:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765197773
