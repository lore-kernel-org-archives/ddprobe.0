Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C1329406
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727031354; cv=none; b=ZzoTxcqZ8GzDLXFNBa1z7Sxvf/nK8EWndwQY0BhM/GO16YTHDVQFm2X8NAVpdfnhszb2BK37E+lDIGlR/gVf8VBZZ3pow8adu6bURvA/Zxk+MpQa54rCzxkxTnPXAZFmViIGyAUsmSMTwEYeaVv6zJD4uluiEPUGysXTiZiwv9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727031354; c=relaxed/simple;
	bh=C1S8ZeXkNnxrV5R4R0IbJTZXMDQ+QruWidXUZVaqapQ=;
	h=To:Subject:From:Message-Id:Date; b=WJcqUMjAq5ncKlugEJ/Yq9whFUmFuxG70Hav77d2XJJlH1W31wySRv4OJAHvoUhAkImCPWxyU35iosHvp+eyuRezigmU3KONYDG9IcqEprp8mAshp+tYcF348kNbDvbWBBRJjuXQC2o3i7k0apsd63hD3esHzb0ZjmkZQkBzbGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdKldPp8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdKldPp8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8AEC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727031353;
	bh=C1S8ZeXkNnxrV5R4R0IbJTZXMDQ+QruWidXUZVaqapQ=;
	h=To:Subject:From:Date:From;
	b=tdKldPp8HQR0ngWeZkaRalB1W5khxzQt5ehkW8gpwGgp5xAAfdbDkiJ6Tj50iu955
	 K8i3LrbeK6rIyMtmH7zZNY4PhHCPcZATSVZswuLsXYtohhCd9S4CaPj0+h/+u/jNBD
	 96ijuiakfU5rskz3WzdqBhHVDNY48wZSPboMfYsYL7IPsKpnoRGdZCP4vuCr/B9pwg
	 Oq0xdDhytON5G4N+GCcRXex5tp3KXMtpt71/NyFYsKfJZo7COHws/1dZlZGjbG1Zb4
	 1EoguTewiz6N4LxMULh9TdkcqLzTGkX1njb7Bati2RK3uRONtjDXf8rkp9nQkyiiSD
	 W8/VizxNj5ucg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95695CF9C64
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172703135358.17259.13282089754088938670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8886f5a0585535fa4943dd9e7377f24658bb9f30ce478fb60a6ddfe85171110
Date: Sun, 22 Sep 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727031353
