Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4290636CE0C
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755713994; cv=none; b=i8SYRTDAuKkKe9tJQ9dMHZqiNUa8AM40aTXpK9moXdlhjs8hFK5UK5MdgEce8By6Kgsi3C8tn3zxUh8nuRFqfxDUDMy29butIF0K4hTJOqqtOHzoW/4qLNqKnxrXeXGDHvCCRjVVM8MMzJ2pgIbCf5DrXrIlsy3ytv4TGHagmwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755713994; c=relaxed/simple;
	bh=UTu3o0DXxMfcVeFhUuvKR7tcoRdyQsSwPUIgOFc2p7w=;
	h=To:Subject:From:Message-Id:Date; b=eEtwo7cuPQuG8qdWQ+9hsxUfVrPWOmRU5LUbnahGbhKfIY/EH8epXI33I02wRkBOL2I8nXS8bFuqpBIBJxwTMfglROwSExbQgQZFrXZaK7c027mjIzVxHquBTzhj636O4hzixoSPi/uccmcI33sshl3HVHVaM0VXR8Fbpj6Z1/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uriTEy+Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uriTEy+Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EE5C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755713993;
	bh=UTu3o0DXxMfcVeFhUuvKR7tcoRdyQsSwPUIgOFc2p7w=;
	h=To:Subject:From:Date:From;
	b=uriTEy+Q9IxaSn/2GE5htUKrlHhe407hoD+fbH9QM0p2NIzM1h44/IeQm3OJK1dx0
	 oov4EHSCoR0VR9pxhNot+gPEnE/jzy4GR5JbuQ5ocyIkG5zJWsS9zjkhkoTldCi474
	 +tnMP2pzd/iAwEzWArje2/iIB6y8Gl20GQjDGDCxGdX+s8xveO4plpyjI4p8Oxbc8a
	 kZdth8yfFdjFWqDq1QiRgYa+dsPf1tY7LeFUuRyuC/eBhJ7sxQoVPqiVlDRCqHoV3T
	 s6rjj7poJPC3gmdCCP087TQOSc+w9Dq9VSboy4RiOlTHJSQ0ZuD/FHLOIptoPT0B5W
	 LcYHapS/3sZvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F532CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175571399357.22764.10035466010444999876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a74685b008df1f80a43e86dfd45a2e848a36e5150ddd5a0d4c6d0affd59dd42b
Date: Wed, 20 Aug 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755713993
