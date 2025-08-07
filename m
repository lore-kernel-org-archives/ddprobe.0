Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC0D1257AFE
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754555993; cv=none; b=SXw8UR0qMxMoLWpE1HHx7blwDC3X2jRXHgqT8yRr6G3aX5seoXCpRchlPHYK6YFDrrvomWBtPcEtlI2V5omsSH+Dl+WfFpRua+yHJpub7vIfq7ojABp2oIVMgHFsip3xdNNWVrRzE0GSj5px+O6erVFnPnsRU4Eh8gmWCKwF5xI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754555993; c=relaxed/simple;
	bh=yzcwcoK2VEeusv1ma86+t9Gi7J/9uMBsO5c4SYArK0c=;
	h=To:Subject:From:Message-Id:Date; b=Orl3QhuvInNwEAsBBvs5Ghwy925rQ2+FKdrYr5J16SIntxA4msyBaiQbGUSgRpB7y/WjNRGM6DS7rHH1KeDVh5sepsIb8tPfzmgkCpoBoLS+kUbKq9Pjc9ugg9yFQoFqOrJOTGutm21hy/Mvh6Fpf2uPGJDGP8mxuNuVDgbYqO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pK7aSqKl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pK7aSqKl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF41C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754555993;
	bh=yzcwcoK2VEeusv1ma86+t9Gi7J/9uMBsO5c4SYArK0c=;
	h=To:Subject:From:Date:From;
	b=pK7aSqKlBtOl5B/Vben7R3vaKdqx+qdifljNzxPX9kZ+md+35qCFrrNk5ZOvvTwDu
	 P1iaBhP4yCk8GG+5JfW3YlrU0xhGaBrBRR6bCdDmqbQILCsEorhCufCgQamc6flroA
	 Kq0fQ6fyBxQ85QsxPKc/HgsLgqct8tMBtDSX9QeBJr8xDwc7Lmi7/BTJoofymN/MDH
	 kEnEsWKMk4b0lGw6d530B0uuUcOJg2Q4qd3QJYKZNLSTc+xcscUJgyjiTFq9v7pBNk
	 WSElQv7LkGrBqbfkxZunS5DglhUAH9EpwyawjIv1OmHUAjNO8NZ/yPdiUz20V5foDP
	 4iK0ohwpLh+wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA3EC87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175455599357.29418.14116287389312592440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 134c9ae5621190a36c2a7d1d75b2ee73d6950221120a69bb1b0681e3c8a8d606
Date: Thu, 07 Aug 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754555993
