Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B241228CBC
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756705794; cv=none; b=COzOcHuaxqdFQXziWpnC3h5N6kPni1phUL8qqbNayaRgceSeuN2Ro97dg7kuMaGRnBnrgUhzm+8MAIqYGMIlCFAZYgdZZ2JgY+VrCpXQ2ACMgu3/vaF5A7qIyKVY0Y2qbdRtHBGsOyK6kwxn05wflZ/A6guQWlINtWlScedmSAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756705794; c=relaxed/simple;
	bh=NJCHNp5eQFYnHx8Oadd9KMqZbyCt+1WZ7H/v8vhV2t8=;
	h=To:Subject:From:Message-Id:Date; b=PxQ3HX51NXP9R6Ow2GG4VNt9nedwfaBZp3X6eifRPoVWHQUsJEIhQ/PHxxppW+GnwhHO86Q6QHmY5ClrxtWRgxLyDupwhaPz1uOtvf+KaUzUNiyRmyslVUiiA+h/S66Q3NWtkRxHG9JA/TuqRidC3Saia873EK7RpRyzLEkiW8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WbWDbJsh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WbWDbJsh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9E5C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756705793;
	bh=NJCHNp5eQFYnHx8Oadd9KMqZbyCt+1WZ7H/v8vhV2t8=;
	h=To:Subject:From:Date:From;
	b=WbWDbJshuCx7K4HZgvqvGIWRpxF3R+nQGYEzItEi80lnBVGo6qmGIB9xTRSVniigy
	 TfIDUV7DoUT/RiAAa1ZitquEpa56jAziNHcSxLPezllwuNFUIVLTbMA8GfD4I/CPUG
	 7RUu5lc3rU2/ivxjmGpBEy+y46q6Zdi2gKIbye1dmZWQ6hLii2ZRhgB8YFGiME5m8A
	 fztUAAXxvdcD6NATNINUoCByblJbWRQkYF/TsXW+iyQyfu7x+vgU6RQyqyvXyY3mCi
	 N6+ryzG3+Yc3VgHycx6P/uaWgFG1b11Bp9aL3/OvIV7LW0f0Cxftngjh4k4/PjeV5b
	 GuYDv/bzqOgig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F80ECA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175670579358.6308.7895782764346779509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4419a53eb61ed3d02fb474f24fc946eff77aece583aa0f01fec0ba6576accbd8
Date: Mon, 01 Sep 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756705793
