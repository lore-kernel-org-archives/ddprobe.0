Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACFE186294
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760579394; cv=none; b=U3A0y8COEB1VOZkIJ/g5VjQPF8431Xdqt1TWTrnNDB/h9ZGa1mHstHwwfnjlFnbWaWu9FGFBZB7NBqi3Zr7OYr9rl2qt9xFSebdUmCMyqxuIEqids8l5cYwPpamOb2njtyq2599UY7PK85gpz/Hr8g+JTGM8cDlbLa7LUuIYG8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760579394; c=relaxed/simple;
	bh=jhc3HjiklcZ1wwZ34gwF/ypvrznDEzEUnAa7mIiWr4c=;
	h=To:Subject:From:Message-Id:Date; b=fy+fNhvqvoikNnbUYAZ9X04SuTt2oeexR+sN/W+eam01WeeAnazizgA2QIyHuHJ7ISlDL/A9bQSxodblH+nXzr7unlzvj370FtEex8OpVqJks+eaEsz7DFfdLqX1+J9QsFfUXDRM3dEzu/MVksNx/BLqvxvDRBa1r5BrfkDNQi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sbaIkz6r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sbaIkz6r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2ECC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760579393;
	bh=jhc3HjiklcZ1wwZ34gwF/ypvrznDEzEUnAa7mIiWr4c=;
	h=To:Subject:From:Date:From;
	b=sbaIkz6rKGMjj/baYkOXC+dA3hejN+aDDcc6pFSIxttcyTKT+k/cg5Y8mfrweT6ls
	 DmWJ9QO1YV11FVyXURWZyWqEFrDV5vAFTmkYNK094Ja9uTggjP9lfEEwD6UQBoP+WM
	 TeIGMoanvTeX6mKyE+JAqBRir3t7teTQhhsuqS7eqXsgNe4tVwhZ187Vfw6Ik6Zsw7
	 24btuVgcumwX5sB3pbKPFpoghQWqiNh0uZl6zrAzTPFNBNp5nDq1otaX0v0gb6+JMs
	 R2jseMzN1QXiS3VghDvPkDZiDPk5vKxBJfW4rnIqucVXErk4xxQzy8yFEkwpTyheg9
	 gmIL3nnF6j38A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F790CCD185
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176057939357.17838.9254528792321795787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c110276e9f9d8f6b604ea48f7d6983f4ec08cef14023acaed26359e318ba2c1
Date: Thu, 16 Oct 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760579393
