Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F21015AF6
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723308354; cv=none; b=RDpbkUJHX5PdzTW2rqZPapQCskH3fpn4Sn8vE/7rmc1QUg4W5hSKPOians1rqpUrxIwfNXzV45dfS3fsIbfpRxKq/9y4G7IpRATZG0XKzVYtR/+xRlUuaRN62GS8wRl0nVxQhrkYSj/mYAcravp9DIKDfvsJp8WAJaNVqcUupBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723308354; c=relaxed/simple;
	bh=b0dSonvTRduhJFX68A41dJ1RwrK0uUoP9Mj0Xn+RZr4=;
	h=To:Subject:From:Message-Id:Date; b=C+rBOBEGfwhEugqFbea8BcvIg1wsc/acq+aaqt9Z9Bh+1A2KdbXbmFhNePX0b0FKI8PxlWun3GoO8mA/TXnTCsvSLAb73yMZdLQRxSqqYOL/Fy/9W3YWJuxBYCriVgSmLfp8GA/UwwJnftmR51hAu41V4V2uJfDBN8zaUbW4ES4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=usa3ZMGa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="usa3ZMGa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E62C32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723308353;
	bh=b0dSonvTRduhJFX68A41dJ1RwrK0uUoP9Mj0Xn+RZr4=;
	h=To:Subject:From:Date:From;
	b=usa3ZMGaxtaiiHY8SgCyE0qV/gq7jDQire7CIPf5PcuUM0pkUzbfQPJR9YpDQj/Qx
	 U7Q4BLofcyNmFlrN4yUQon+CBh/BI+afUoGOWzbbSJ0QHqyVg3nuCdq9tffOSW0a6L
	 4EuvL5jxHeU3erhzTvsYLq3ObyOcusi0vPlvzo3JFTqkA8GAmykgPRk1ZQ6SQRMzzp
	 V+k/8cIb7ScXoJdeNAiMnSTWwNpb3gh6vWg98OTbjSgVyIV7erVeLtXNUw5qnnwmWf
	 eRCaAhSkomRgCcF52IIeiTAU/z15DDCecA+xI26mIC96GE71hk3d2QTPHmE5Q2fYgz
	 du/NayZNfimtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FFAC3DA7F
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172330835359.4252.4853266834938857730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d60a9e931bba3a65ac16ff9f77aece557875132d55c6326106c8533b15b3d3fb
Date: Sat, 10 Aug 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723308353
