Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB204405
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722802554; cv=none; b=VqeEN+233C+QcxoJIFGNJnU3cDGlKxUpEsJgVTruWqDhwuzvpmbTEpQsYMa5AuTm3DKojI1XZb7QnsZBfsPL5Ar9Bzk8nqrD9SSbfkNDoP2E3cBHMlljOZA/J4nXlVc3hnasFm8X8p5C9LvsOjBhsparQ5jGvV2sMywUn191qJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722802554; c=relaxed/simple;
	bh=t8m/wcvmttWT8HqxbG8nRBBY0yJWD31rGySh9MqSHKg=;
	h=To:Subject:From:Message-Id:Date; b=aQ/1U/IXpJHLqlq0Y/imZCUUIT/ybiI+b/Iknd2N5d3roKGjnFvFw/OTrhU/kdjbZaagAaeD6cCJ09qyHCcggEaeAQtr/WAzsbJHowVwwCRCQTR5uT7yEkgDIbbrT2cqJkkUoXxEECQyDJmY4Iso6dTTiSA/QvO/EP5mCKBusGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IssevSQ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IssevSQ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2788C32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722802553;
	bh=t8m/wcvmttWT8HqxbG8nRBBY0yJWD31rGySh9MqSHKg=;
	h=To:Subject:From:Date:From;
	b=IssevSQ1X+FABi37/ItKDJ9CQsGWnkUS1Cxx2oXOaWDKp5QC0CsK7CpxXZFiYBG04
	 sbyQ5ieLOQRrhHoyJ/M2tPKfN9D8oPtQunpM6Qgr8Yd6nLXGZ6q4uI+4aTwxff9Dwu
	 dwmUFWky+ItRUvAhw3TyX7Q1v2sPXl+XGlmq2F2iKgFzm9Hf2l83ElJ5nr8bhc08LS
	 Fdl7wHNo02Iyy1nzlclT6HXu38Ae6mNeoSwWz+HKNJRNlnqTJOh5hEwtIK6gKO3Zj8
	 b/XGyEe2PFaDuMzn6cUPggMbC80nzmwrs3viZb4RyHYsO59uW9L098N12KusD1N2Op
	 uryzjP+lmlUbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99EC2C3DA7F
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172280255359.25309.16091529132697275998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 852feab639625ef49093ea93c8deae3fe0af5127024a4f0042cc4aaa31c1be31
Date: Sun, 04 Aug 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722802553
