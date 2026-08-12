Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD363655E6
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786566034; cv=none; b=QRdJ1MT84vYCh3+klk/uGAY1ROBlLXoRSdZO7Lv8EcE77yd6fm2380olWd+y2puSSAkaPB824u+35AjP2VxVfe+w0sdXaiJrIfJVSrLRpE8GuwRkJ2KR0eT5cSBM7pTH0teMBUme0gF/BOgN87sq59zDPJ27RBBJ6GX2ReKmvKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786566034; c=relaxed/simple;
	bh=EcuRam6A45/HrQR4oY9jQKN59CLHWuroFjt7GzCF15A=;
	h=To:Subject:From:Message-Id:Date; b=i7xNjHfnVlPok4rANlSfUBazl3hgb1BBK/WBP3//TSVSwJX6EqVaHpQaXxIBSJlgNJj7TjU3fhmN5TR4wwwMzNqXUTh8feo0uZ/FBX0qUkOMgcP/wtAoOzBgrAtijuEoxIR0c3BiL0/bQZN/G/AqYjA8NVHNL6K/uzZEfpfxO08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gnUpgntk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gnUpgntk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C963AC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786566033;
	bh=EcuRam6A45/HrQR4oY9jQKN59CLHWuroFjt7GzCF15A=;
	h=To:Subject:From:Date:From;
	b=gnUpgntkeuvDG5X14Cdj0+nXs0bGbcLiyc9U+HEE3v5iyvpY/SZkadvoBeIZ5mxtq
	 3lLCfJbg2idRzgHonLDqKP/oD1JMigIfwH02jTRjlROcPhZV6cI2rB7UMPrOvNIFWW
	 gb330wwsSEu9z63r3KdqU8CzRyCPugm0KGW1cmVzNfRiR+Mj65Plvoa/VgGssJw1EB
	 7Ph/WUMNTAbigbwRQcWQxHMV7TmgvoCsX2LdMlpmrmZwZJq5FIXODQdFRHfGvttlo9
	 BI9v5a2RoChGHIsTyBkochleAMIP8GDadGPmZFDl3bqQ8YVjdNzNfO2I8S6Gg1e6Nm
	 wbeiiMlaVfubg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04ACC5AD5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178656603368.14301.606839825730606388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a0a8a4ef07856f29acc4c65be7bfd4064f14ce0cf9e417866d69d907d908dd2
Date: Wed, 12 Aug 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786566033
