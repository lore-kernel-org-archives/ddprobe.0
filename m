Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 070A1344050
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771596894; cv=none; b=IIH9hZnyKmqxmFT28BKuPVNxf1F2gmokPeiDBN1Z9K4J0kOnWIp3vYtwbhyNnMQURYToZoJWhzQp7jESATTzgcoZf8XYR6EnJe4JtPgQz3/JcfN1lhAPlQrkpDsJwP6K8wE/qE2L625c2nS3M/TrI0QZ0d0tu3BuKL7ydZcfMZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771596894; c=relaxed/simple;
	bh=+f9U8CMCumrBpdszuisflQ5P3dt8iMKSpEwerckPODk=;
	h=To:Subject:From:Message-Id:Date; b=cc8zrSgfN5KEX2oPnaFlrWr4spzCbMYdAFwgAewrxnY7HJUj2ZUnecR897q8YrffXoOHEpwz688d4fp/crEQsYW3DTPQt25x8qUfPne1E+lVQi4ZHgniaRZOW03q/Ci2MQaNEBhM7sz1KrWHijWECuzwLZgFUadLqEij1lASh7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AFbyT356; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AFbyT356"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4762C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771596893;
	bh=+f9U8CMCumrBpdszuisflQ5P3dt8iMKSpEwerckPODk=;
	h=To:Subject:From:Date:From;
	b=AFbyT356RP2ws1RbOT+4oAzdU5Lb6GP5P5SUBFdg7yo//RGMa0jRs2tav+k3gApBw
	 FIjmQ6MEzYdOgyxk4L2wQf+qNRAw/CNDo2UR5fQ8uHQ+hiXv4K8F1KX6wagq8etbnC
	 iPkUZTKs/J97fvIeYjTpqQp6x9FRFzGInk+GhxTDaVjrESMForEH2T2QpgQxjgaPqs
	 EBspvOVL9xOhb/QSgGc89rmYJLboqbHAJ5+yNKH9QDi8Y581K514paZZ8VpCezig06
	 PA1lhKw8tDe1ZTIHmvhshKZ4IU3G2SDQEG778sC0DO+XKdAfzoBoJfDTMA8eNnd1jh
	 Y5fr51T6QMEbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D39C55ABE
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177159689359.9001.17663556995168241004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47f95630ca164e80e63a01a54662fdacec2dcc41370ff3a23cd5218713ebac4e
Date: Fri, 20 Feb 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771596893
