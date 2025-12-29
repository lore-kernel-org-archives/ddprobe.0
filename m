Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C65230C616
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767008034; cv=none; b=ekwWpkss1IJ+taZQpIxCj+Q+8XSmvNY5PlmrDYHqEtA5Shw3o8BdloOrzFeJvN2pd0AR43H8ktUWMZC7zovfJINdP4bSrkiAPuxbxsKtE4RFORaBNZCuB5Cirvf900vmHFoBPgPBV4UBEwN7/RMNRKIs+rPnWVMrbBhk/gKYejs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767008034; c=relaxed/simple;
	bh=KQnpKBCBRoMERzlr+GQqKW8VriEG24thAgXhfTL/hKA=;
	h=To:Subject:From:Message-Id:Date; b=kVyvF7R/zlw0+yj9fFWdFZskklWDghy9iYYOyHHhTF57FyK4kburLNQOw0J/PJ+nMdY3+AgpM8dzVchM70jqJ/UGWAoty3McIKTEk3zzU59STM976k03uIJ5zIox95zhFiO5totCgBAnHYk6dUfExUSDlTHVrya/MxcBv7lFw2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fENFo47D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fENFo47D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9CD0C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767008033;
	bh=KQnpKBCBRoMERzlr+GQqKW8VriEG24thAgXhfTL/hKA=;
	h=To:Subject:From:Date:From;
	b=fENFo47Dlfa1aaRVD/Bc4zSnfdrSQRYrS/0fVS8br0I51stxdgTCgMcrz0fghr4xr
	 wjkZeC6FS5ybuJ1gdSwn56g8pAm3qq32mywFKY9j2YtMGp6gyx/0OlJfG445BGalvo
	 zFCJOAZhl3d7eZJAz3Vsq4E2fQqZ9tkS8y+mDDfqQbTMRDJxxV5EtMjrtsuOScqB0e
	 O4CSIYkGYCTQO8n9WxEyh6Z3uQk4z1PoJiu5jB0Tqt5F3PtUP82TVKzzbdqWiZ1R3m
	 +V8gLSe8coBBf5quch8P84tNozA3NBAVSvbgCqOtuRXQQExmCCiDpsn5fZ3uaXK+SS
	 +guvHNUJ6FVGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F710E8FDB1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176700803363.16771.7886859785959534267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ec1f43d94bbad63809928c0aed241767eafbf483d9fa48e6cfde67309f17f30
Date: Mon, 29 Dec 2025 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767008033
