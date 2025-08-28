Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245CE196C7C
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756418994; cv=none; b=OY7OiKdHvHkmV9Pa1GkdyIWdGQGqe9qlIklXC+hUWQWEi3wLyc9WF1WlcIycawmYFF+FsGg6YH1KNvcl42mFUQnt9sqfuGmSImYymuq92R3W0FDT9EUQ4pp9M3sVqHJfH1+pRewIGv/na841siH27L+5EzgEaxAcMp1P0RI6K2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756418994; c=relaxed/simple;
	bh=lAaIxdZJ5eg1kR1B8H8oUf0WAhgGhSYYtsktN04R6hA=;
	h=To:Subject:From:Message-Id:Date; b=PoRujSt40x9Xs844T7e3rsNEw1Ca/SZ8I9XU6IG5ldpL+I9w3yC7c3Y4S0ygrWtqbzU0M1R5EGOQDgbdWifSzD9YDuczXlpRLH333cxB1uszmDvjtW1Psw3Flv1Kofkl6jr3sYD4KXrdMbtQ9UUy/o9msiYrdRiLFW0lY4Jm6hY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fdG0OrJy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fdG0OrJy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEFBC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756418993;
	bh=lAaIxdZJ5eg1kR1B8H8oUf0WAhgGhSYYtsktN04R6hA=;
	h=To:Subject:From:Date:From;
	b=fdG0OrJyTS5uDQJODdk/WNRqlL5GguCxjhfcNHntNpp12HHspYYdbtCR2Ep9+QG8e
	 +xMZm4tMHEujDil3HpKtOkFnwlZP44/Jpam0L7a2LGBTki2PUfMPZ1H+BeIRYRIhfM
	 ch9CymKP5nwyQFIFZXd6eCRdQObWRSwkpjRXIOUA7BW17iHDAxsPNYJYyH4PWod0qO
	 FKhxg0Fe+DmJ0pmU6dMyTs6nkUxxaqR+09X96lWeF/zw7aUdjaeb6Cpg/T68aGiWsL
	 Rwrj6o1yLgJwzr5Q/QEgKhu4KbF08OK3TfB0VUNuJ+IxGaEGoVT9eoqA2ermizyxeT
	 0cCrBzUSX6OEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902A9CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175641899358.18506.16162125364142221377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38160b9744da845446b593321239246f707c2d7a44d37e24759956e622552ade
Date: Thu, 28 Aug 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756418993
