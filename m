Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CCA51DE8A3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746865194; cv=none; b=dOHgOQEaVFDfHarGdhi7Lu9L7DOA8GHzeTpPSpkaHgYhZvoVjQJw+UEurqxP4XD5HtqAicXbV19JamSgOw7l7BtcWRz2ChrpYcwhoO6ICv1mXwCSov2K7b+g26IcI2I3WNVxj1jfzeOU5qCzqpIiGR0w3eaLyNUBNvXNEGvKGCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746865194; c=relaxed/simple;
	bh=uIEv+uFaOfz/nLs9FB/0oNCNU0Uz+xtXM4ToZpfV7YE=;
	h=To:Subject:From:Message-Id:Date; b=VBG3mSeJd7Q8gvbuz5FUEGI/WBWQC9SwsKkAwp4bFcoTrp8IbCrhvFYsUbNftAS1r06qA1wQjLhMaigebjhpWkcjd/Y7oHB0G6Fi5cH1B4hFjv71syX8ReOrHb0KP+I5SE6/E/4OO7NlhZk4MDFdkXRIcZ+jYv9QAALtSkdiyrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQHaLc3V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQHaLc3V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59B5C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746865193;
	bh=uIEv+uFaOfz/nLs9FB/0oNCNU0Uz+xtXM4ToZpfV7YE=;
	h=To:Subject:From:Date:From;
	b=SQHaLc3VWLlxQCeJckhKRAVQkcfRI93ppslq5bb93nkbmJewIBcmqtI0Ym5LWpmXh
	 ouf7mwfSpsxeri623uANPeXmZ5JSpkvDucly5Oc5szj3FJb5sPKbGZpTaERM9j/1uE
	 aE1f+R9S0vfxat54VyBNnUyNe1zmJHgfk5GPJp7b4WaxrXtZ//SL/2WpwRxtpVJU9/
	 Ks30MZbrzQsTOiSNuR3n5DLM6chzhRXg7KIWFkY4Sn8hvEcKbDQH4uXnUWo+RIrhbU
	 An0Kzexlh4bG0SSGT11ZpBQDDLuvnaAV1CPvaeEN5c/ucWjyPmmP7YbRjQ05pa7xYq
	 ENP92sSVY9LKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9381CC3ABCB
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174686519359.4287.18342624510377524162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db55a217ffff65df8d8e129ae50913d116ce1d36121c87e366aec8d83ad14734
Date: Sat, 10 May 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746865193
