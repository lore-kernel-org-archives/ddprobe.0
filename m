Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FA9918C31
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 15:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719587063; cv=none; b=sG9EbLRfRuhORnMtc2vtXetyHX9Zp1bSbZ9mahQWk9ygLYgd10/f30J56NdWMoqW95V7XQ8Lz+klKN5dCfOuXTX5jFnBmZYJqGCp2eJ+Whhcs+C3Jdb+9yxuMAXHSw0EvD78aiEAMXDxnKZqGQ+zn1w2zn0025oU/XjcHT4L7u0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719587063; c=relaxed/simple;
	bh=PL2kLUP8Q20mRNJVLNP0W8plN76p/aleRBup5WhpPp0=;
	h=To:Subject:From:Message-Id:Date; b=pHXmhCMM10gmFjnK61Q/QEpCYdADdww9ouGDf6rVUAwQRLoC9eiZp7YEg7smf1CcAmzYeNJWIO6UVR9gfHqs2uSQvcyENmxrZfuzirhCI9X9G+MCwLN/l11vYJTJZr4tEBtOZoGXdVKfxxplYHxw51IW1F5WYsguJvsf3jVoZe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J9ZzjEUK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J9ZzjEUK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3D23C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 15:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719587063;
	bh=PL2kLUP8Q20mRNJVLNP0W8plN76p/aleRBup5WhpPp0=;
	h=To:Subject:From:Date:From;
	b=J9ZzjEUK2i9leQRlGDw4PZEXppjEwQnaTM/UFA8JsUSuyvaqQ4RBFkanI3/BU4YOF
	 d6G7r4Rf+Kp7aUQGrNDNOxjB34YlJY4KXqfuxCEMAcud9TLJNYM+JEd1HSnLz1WW5b
	 ACsnPQJ4MASZTPaizfNOXAujPY8jgCmGLler+Br5XXTsgxNMgWlUM//E8vcSVAyCSx
	 XISBZCx+feKX8/grIaLEV9ImP4wIR51Vs0i0AYJQBFqsE/V08/CXitDbLYoYDPRQ3n
	 H/19x9/vPltd4XzxbdOqJ+6yQyDFO+mf4enA63dtxeQWk8RX8aVHOkSQ0kPhnQgJzW
	 I5plY0jIVZvqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7E06C3064D
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 15:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171958706283.14232.7686153052361279541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7741402d742e69d454a3edcd9f29d92822ed9e5131d9f4c7b828c014924e509
Date: Fri, 28 Jun 2024 15:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719587062
