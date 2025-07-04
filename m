Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8362E3716
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751662194; cv=none; b=brJNwRsLl7ZV9SNhK+m3MbN8B7ObGyeBraeVVJfZyFlBvIexT7e6vKHuL8rWhB7whL9QBKR1S7NbBb1H136+dmLbEpRSj2SOm3JklBtXs2b2mkqSclsmzFldTMX7Ki5Y3t7VrmdCHLIQOzJKbdAwOZ2q/BxLW8Uu/DwR7msuJoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751662194; c=relaxed/simple;
	bh=3Y/CuPgTfNuk7Ro5i0Q2iKNcZxtOqVM8vsClAEIIm6g=;
	h=To:Subject:From:Message-Id:Date; b=QzXCSNIQoUaS9RX9+egqKWbPrWfLRQMSnC1UEr57S3vb7477ymVHRPKjoXO4JtDRauh30I3UNOZy6xfhHj5uTAqAGDEHoRvsfAeTa/SXZuPYmgRawIhzyrEpO74Wlxy6LrOOijoJZN7wvqeleNzb2uzw8hIeC+pMnUYDUe94n0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p33MuC9u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p33MuC9u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31D9C4CEEE
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751662193;
	bh=3Y/CuPgTfNuk7Ro5i0Q2iKNcZxtOqVM8vsClAEIIm6g=;
	h=To:Subject:From:Date:From;
	b=p33MuC9uTAQsBczZ3PMopMU8XmkK0a0LQ0FVbEIjldyWwF+G4P5Aq/khDD3ssrbNu
	 feoPdDfH1O4c5cPQIrbz/kgn5XN0XnQTvhWah44y86UhZVUWSt01gpzlWEkdQlIq0f
	 aA2BtNpVde0aVXIf2+vYK/C3GBL/19DS9ad2ByiR6SNL1eb4SN4rvZf+6Skbgfd6/c
	 dWXyHJNmHr8HlI938rsSTlIq/8PGVxKjRD3exde9eEpF/Lm+TmK4FmdiUofWDuRJNL
	 anwBm1e46P+OlyjRqiDKQ7BrT8AZAS8KRIrfgnzie8OyhdWwZrKWQ4RmBE/FOpc5W4
	 nYpp8NT4vuDMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D33C8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175166219357.9210.2268996774571318008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4215c2f8f34ab2d51b36e3ca122ef7a81576571f2adc795e55adb7f55f3994c6
Date: Fri, 04 Jul 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751662193
