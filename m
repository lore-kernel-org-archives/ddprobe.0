Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C736986344
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757125193; cv=none; b=sk1FORhcNj8bAR1yyTV3Lt866yoW0tMhuUT6ainm2uulgZS6DtfKl8MVQOLVxkLihBmhoL1B+iBKnSB6FAgqd6xrft4a6An4rdxq3XNluRvlDSUr1lT/2B5zNqlXQZed5GtRFiWXIA9p1Oudv4/l4Qe35Q5B/fRNAgt3b7llX+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757125193; c=relaxed/simple;
	bh=ripoHQXTSw+umSWqi4lh5UFMFojQNmqTG5MJ9AsCuXE=;
	h=To:Subject:From:Message-Id:Date; b=pUWXkp1IgbsuV8qb0uRLixuVlzLvr2REQdoGdEjkYj69UuXpxCYOEkSjWad8t/EoiqhFX0hiEcIA6WJw9XMgxP56KR7m57kAXBBOf1unKDnMP4zYSldiB01czKP5Clwc59nr1m9AvOsKjgjmWjBymbgW966HehieM4p6eIcTr80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSp/TDqe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSp/TDqe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEF9C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757125193;
	bh=ripoHQXTSw+umSWqi4lh5UFMFojQNmqTG5MJ9AsCuXE=;
	h=To:Subject:From:Date:From;
	b=tSp/TDqedSejpJpJ4MvYb4fPud7N9Fl/9kqStPFPDEiJiw/JQiaobCDj73mYe/+W4
	 qHe8ii2bu/Uac81z7mMEQOgDtbq20L4PjT6LsUVJ0sYfBnJ+eFHuj7wsfaU3y7ybd2
	 Q7PYBWaJvfoqLfCAoYG1exxtr0F0lH6sWzed2gkDkqA9PJ0QSvAc092dJQnC1Sz4Qf
	 Mx8/C8NLGJaTJEZzG8jdZi0YTSLj+o+r6co1m0g3ihMNwfd/X7jFarKcCBkkvlvgE3
	 5lCgvfjbfuuBvj0PE8UrtTOE3cuf6CbOvF+KSslPojKAa1ltYaDNnOpInSmx6lxoPV
	 bA2TxcTFo3BOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90153CA1013
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175712519358.994.1882793023586695767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2611a945dd218add83d9ba583fac8749605ab7cc1b00e185a86706bdda487da7
Date: Sat, 06 Sep 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757125193
