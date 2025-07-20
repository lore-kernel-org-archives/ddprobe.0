Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A708BEE
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753052394; cv=none; b=bouDqSsc+S0kx5ednE4cASiH+ihjOHSUhBIJh61PrDSqqrGrBqPkGpcY9UHNdnvyJam6cH3qT/PSewixDnH5ERg6zzXWrf+iguQcwXSCXdkWdBj3ItJjY9LDCRf65fBN0jPoeaYalQjTVMelzSJJPZ49s02SGQEygHnMr/CXTic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753052394; c=relaxed/simple;
	bh=9ubJy3yKje8d43/C5sLcfS12aRmVZBRvHEUuUHNSJs8=;
	h=To:Subject:From:Message-Id:Date; b=r7a7Dvcd9NRhwaLKB23HcxX4sLo9eBgBojIqgu8e0hzjtO5e3ztqW5Ynhfc+1PhntPSe5ahhpSb3C6u7LVF6thTe8bZWehM7AtWwLHX2+egRWlVghJDNffLYwIJcUzXclIQnTJKYk/aTtmibBDteJq4vO3ccr6GwO+QAIp5/0QE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvNOiI3G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvNOiI3G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D04C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753052393;
	bh=9ubJy3yKje8d43/C5sLcfS12aRmVZBRvHEUuUHNSJs8=;
	h=To:Subject:From:Date:From;
	b=dvNOiI3GUHmkmnQRbRX5Rr7DgjKqoyluBH9BUSVMkJkH26n/t/h0QRTSH0FHMMiI7
	 gwDVYCOoyPQQTWe71IQ/S1wFWhXfNPTb6OHkGpI6LX0rp00ixUjMsr8a0RHDMbMA5X
	 gKGfAF74z8HlCIVOv7DLrZHKoc0q7jaQePgb2bXDVPbFeCvDUqhtT6Kdf1mznTx89W
	 eqS5zchKYM3/rCxfOzrYoD4n9XyPD5rHFXo8nD7WjzVpZZcE6FTbGwld8ppdyGJ2p6
	 e8hy8JrbblJGY/6AUTWXlWgFtyv+mf6eSgVIOu1p2C0QRYpGXlrrHlelxoItGzmaXE
	 /87ej3dQuQJSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90000C83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175305239358.8892.1749724349126268190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f23ee001cae60e88433f452a6e47431800516fcd7f961d066e60fe19b717efc2
Date: Sun, 20 Jul 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753052393
