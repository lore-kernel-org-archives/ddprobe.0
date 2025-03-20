Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E0E435970
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 19:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742498394; cv=none; b=H45fEzTvcWogWZ/yoOMx9gn1lo5fbV/1SnM9K13LGP1ez+tX1IOyMKrNZg8deIU8xELrHM2cf0mYm5o4n5x5evS2CzBTy4uYCsUM1TyRyI3z2i5DyB8EXdsbnEOQ18ih067YrEbTESSsEa6TreF++oOsrz5bVxS35upSffaYzvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742498394; c=relaxed/simple;
	bh=xklPVjlcj9EXKxLEHkdfeRHZt2hkJmTnfkCluzGKs3I=;
	h=To:Subject:From:Message-Id:Date; b=mguGI88reuHjLJ8uQIhouQdtSbfa15ddz9u4/jQ1PjMOl/9YyoAk13f9MXXhGbThmlEGpBzZfqowG8/5AMQMTnxQenurS64u59NalJ332sbwhoSPlt8Ob/b4UPp/YksBUxTwMcck95KIF4OE0zL57ywAgibJtJeY58cp3UKaPV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SMkD5Do2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SMkD5Do2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0157C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742498393;
	bh=xklPVjlcj9EXKxLEHkdfeRHZt2hkJmTnfkCluzGKs3I=;
	h=To:Subject:From:Date:From;
	b=SMkD5Do2P15c0Xt4xJZJNqFPyOOCE5WXmbN046/uJk27n02mkz7ZcvA+zi1nAwsvz
	 UfY0ojjiMjvFEFU4dNK+md/+3DGz/k49nOGZVa+FljW+geRC/8xLUN2c4l7afMChX1
	 13VINYo7co8vNVqvrZIIRTdPQTCBfC0BlTQlHHDnphjm+U4IgGlYppSUupvnntbOaa
	 mwY9MuBlwMj/4Z3LUJqjG/lwfPymLsYUzV0xmoRDnyPwqbFEbkIOoMkbnu6R753s7h
	 5BBoQEFz7obqv97HO+8+vtB3vEvVV4LjrKyMBfYgnjcCRazartOdSRHy6krXlimZkf
	 qhrc/Az9urm4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A555EC28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174249839364.20227.12718084611343434603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84b21a1a181fbe390800f4385e4ab0648cc68aa1696615ca85dee1ae2d5a30e0
Date: Thu, 20 Mar 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742498393
