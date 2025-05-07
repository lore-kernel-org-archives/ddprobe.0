Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2602920551C
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746652794; cv=none; b=LNuMr3uyFIUr70ZPNvGeGupYWbENrpw6g0UjH6TvPdGtMB/5wisKsAzU0D4LOGk9Ht+rIJah30vnnrduX5Pm/9WQRThSeIEsksjD6dj2FlISJIa0tMrD0ju/HiVbkTBahPcKphe49Z64xlCOjL36/Czvyl9x3vP51oI+MiSED0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746652794; c=relaxed/simple;
	bh=gaiXtRuOQ5zKJ1TAOkyyCWMU4ULyRaARKSgdEn290SA=;
	h=To:Subject:From:Message-Id:Date; b=aV4TAywxLtYUZ6QBIQGohHsKmy8qWXCeik+TbwxrepJg7GUBS9uzU+fE35POUOm0nn89Iq6M4yjk4D4Hg72Ugg06T5qNRTzWT3WWcTMcKXagspSrxptIzNeden1lm5OPZaGdrpRsjNvsJatkPIouohSaAvP/LkryMNp/VTMAZp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ijPUBvWd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ijPUBvWd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5ACC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746652793;
	bh=gaiXtRuOQ5zKJ1TAOkyyCWMU4ULyRaARKSgdEn290SA=;
	h=To:Subject:From:Date:From;
	b=ijPUBvWdLj8onj/dJUjRfz8CoMugOKUBDuLoHzbflI5X2haWJ6jkvAZb/nDnDBy/U
	 MIJ5N+0LFEN77XnyckhuaXwJrOzngzPD1IOSU+MQwt+Pxdi3YndGZdEKlA7IrhEOyX
	 3rJWoa0H4hSQr2bInebFke0DuYzXLQT7iMp3rERkbfW6+VAILj2SwldncxWOoHjSf8
	 9hqXMZC9TZyZBOX1wYm84tvCp3+Aj3AA5jKQuWVzg9oT6qxIUK+8r+wuFJONcHMIpb
	 1MRyd+bUyZ+MaC2hB8JUZ/IgRjMkQh0RFb2HvheUJfcrmQrG3owzfOTiRPxYez5Ol6
	 uZdhRxdDQz6KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9B0C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174665279357.12435.15241590485925376634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d65a2d895f79a35f2993dd72d5248fd33b2c3117eccaf2e48787302ee2e033e
Date: Wed, 07 May 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746652793
