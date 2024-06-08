Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6865328F3
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 02:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717815443; cv=none; b=nwNFrGvxPlUxO5BMLnKQHF7sd1nOuBNZXrNiZ0Mlkgv5FO20JFB/EZvvVKl6MPfE8U9Bjw3fwZTiBYGXQhGqrKXSS2MtJqI318J4+xh/o6aa4+Jt2i8UBH9LQ4r66zdtklSxq1BUAFTE5AfW+QyQwYcF7XG4p8/ZU4I5EI4dDNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717815443; c=relaxed/simple;
	bh=GLjoKzlK2/En0wtNEohhaFo5TkeLsJE+LdmCbT0+BtE=;
	h=To:Subject:From:Message-Id:Date; b=g3irQDJDpV0vX7PsuokXmh/7wIMzF5J9+GqJAJizQU6HjQaU/5z6ptquGedBOY3WxXWzeBZzp/YPBkgTv4+6EGsxMBOGMCOX93m2rOWNDrQVBn0zufuV9DLC0hwSr/HIZhBE8M532e8ELZp1awoZJULFr5R6hPrdu6PCNF5zrwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PgdEcFOu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PgdEcFOu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE217C2BBFC
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 02:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717815442;
	bh=GLjoKzlK2/En0wtNEohhaFo5TkeLsJE+LdmCbT0+BtE=;
	h=To:Subject:From:Date:From;
	b=PgdEcFOu4url3WO8asbbrik1pWO5G9XR3r3TlAmVqly1YbbRokHK58ODKdz4DklYy
	 ST+8G3+27zJL9Z3Bmv47CQXZgs0HBqcwr1MgW/6lO46SsbAQ5n2a2rNp2eDD9RemLS
	 lMhfAV/alBafpys+HCYOyTcWYkkUm1m9MVQQRN4io/9aRPo44ajFgQgdxvkwawIAKK
	 zdbnLjDADthYKaZzxs4qeCUAly5xJIAFsJzjPN4+UgaV7WLIDkKlVqz0PaIcnnjwh4
	 Ea86+gnn+EvJgxUZdMtszgTINFf2XE5joFT++46/4Nbqrb1jh9APm5XVFtXqoTJYUL
	 aEJohTKojvWqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1C2FC27C53
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 02:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171781544276.32530.10883577518592011888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e6cd4a6869127c94157adaf8e10d5611463ea5e1d0a9cc46fe234e071f73661
Date: Sat, 08 Jun 2024 02:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717815442
