Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330821B85F1
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727205954; cv=none; b=BnIEDwl8vb5IBq9IbHY5mBhxtFZx5/lLunAHB7GRH1YA9KN0LB3SjyruYC/611TB+5Ys5tY793hMt2EekdBewjek96dofraDjP/KCpClMJ57XBeLyIo6pZc4/+7+8iSDYDvJ9HSh8FS+XqM7Ol+nzCntuENv9GmOQjevKTPNF4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727205954; c=relaxed/simple;
	bh=QSzX7q0E1GRu4nAOfTVjVzGxK7jC/5vEiQOywCGofFM=;
	h=To:Subject:From:Message-Id:Date; b=hRmkbiYmWxMdODS8rFVBD/3tIucBvHeeI1hx3UskYtl+IjWzwuqc4dLRIQ1zSJA6ZT1uYfEYVT1bcFEdePBHmYV2ux1vDjlJVfqovrkFmKypxU6kba8bLVaW1WVJvWJlJG51qy7Ydh9ZSOYAjoVjtabdQYA/hyf54fmnikuGikM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K6dnZ1G1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K6dnZ1G1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93D1C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727205953;
	bh=QSzX7q0E1GRu4nAOfTVjVzGxK7jC/5vEiQOywCGofFM=;
	h=To:Subject:From:Date:From;
	b=K6dnZ1G1QW2hK4EGp+h7+rXSgdQ4yYYBNEnFxdRq+l1F1BCB+ncXPIlDWoEctvWdi
	 mITLCODvVT7OYl+TqGL2YfXKGBZ7JkAexxcoURZOo/iwbVvvIJGNjKvAtCA4WZr8On
	 4ngahUZWTSxnjWwGrZYoNNM+BSWIRQ/eoyQA4/h/F9xWHK5/muw2BuW7Ns7ChuYcas
	 wmCMZ9n/XLke3UtCrkUiNfNmYqPECjiDUwL0e6zyu23BkcDUpmRaXySw73iUf3e7nG
	 a1YykZ/vThl28SIXKPpzDwn5/svFqyg660X9yAJaBDCDcC6c7BQh6fBn9qH5SN4fpi
	 f3BqlBCUUMdvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FC2CF9C69
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172720595360.10542.5160204666591308525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46c29feaa53f51624e7125c880adc737630b28df545ff90fd285c138141ba3ce
Date: Tue, 24 Sep 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727205953
