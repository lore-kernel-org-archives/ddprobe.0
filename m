Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E56C383
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728438354; cv=none; b=tTbXGBzDxSIiopszCVSwu/MJGcCDttTPlIhum394SF3MjyviGc2OSnTcdk192Kd4H9FV3VL/7Fzk1E6x+XRh40IdQRZKpAP8toSXmTel+7gcBJzcNulT+r7bTQJKmpHAsuzV70ru8NtaxMPWmlJjTM/q8Pry/LkDC8IYwhMby+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728438354; c=relaxed/simple;
	bh=R/hsIKnugVxmr5nqc8NXq+erqQAf1JGMKPqcW4kbO34=;
	h=To:Subject:From:Message-Id:Date; b=XFB4+Vf5RGs28pCU7Lpm78+IVukdoAUIY6iCEiexNznEuKkZrGd4YbXh86ZtdS5GthFZaZFE5P6e45QPCgz8oKN8QuC7ztzidDSnQMEzpWw2lDYOF6b1QbS0m1VBHGAl2raKwzQGEM6TU8CSRQ9eYd4jzGpuryVtTaIgujZEZLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QJH5E/bf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QJH5E/bf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A492DC4CEC7
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728438353;
	bh=R/hsIKnugVxmr5nqc8NXq+erqQAf1JGMKPqcW4kbO34=;
	h=To:Subject:From:Date:From;
	b=QJH5E/bft6KCsvKq1oievlxK8r2lkMY1Wrz8rdKwUBWyoNuyZ4e2rwHhuLvstSuwQ
	 HmJv3tA6F6fnnSItO6gyPhmo8Ajn53EfaYD3FYEe+sySUNRLiIXOf3zoMrfjffRvJC
	 W1nResxg2ycNlhvhphTuFd6wr3aSHTCzFa+vRHzkatTNvVEUaFsojih9CTaEFdRsF9
	 rvJhf+FAmq5+rswmmK62Mve5S6/8wZ/wP7s33rPRa1LsD1Phe/vW28eY6joquEl89J
	 /MJ0MHPNKabd5ugwPiuC9H7iILynrGr1IrglhJcO0hDI+irNGjpPLgTn1LiOoetx29
	 bCBDJ75MAzkJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94313CF042B
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172843835359.16522.1696169911012962587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9dea2dbab48b8196136c8eb3cc18b660226c08bba0b4e5243be21024d6e96df
Date: Wed, 09 Oct 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728438353
