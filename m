Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D57D231CA4
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728815154; cv=none; b=oMZ2oomhnh92t9A9ftktrH1GxhytwF8/ed6tf4pSp5/I/4yDdTuBpZaCCV3IFs6i0Wu88CglBUkdmgU/97DK58eirloZxtarM7CNxxetOPxcHRwhJNryXkxvWCjFfspzLpHA0Bm5S3WcwvJo1DjYL2+1PK7OZP5YoSQivKOGvdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728815154; c=relaxed/simple;
	bh=rY3u8zq14ol4dUp56z+Akp6E72SZeSOSkSwnjWdVJNE=;
	h=To:Subject:From:Message-Id:Date; b=JyuP/Cs2dU5hOEfzcp+hTSZdzPO8ueO7l03PFOyWL3XDHfR/hZp07Iwcw8PUx7RosVJmcq7Hr7Rc+A7K2Ji9X+JhwEtm8vosaaZ4MK247mGydAjoPKxspx+R60S/0LKA3RBDH2FODrRxYzgbAja9eiB2zPO4Voj3eZ1Gb/Hx/SU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kk0X59vV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kk0X59vV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC0BC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728815153;
	bh=rY3u8zq14ol4dUp56z+Akp6E72SZeSOSkSwnjWdVJNE=;
	h=To:Subject:From:Date:From;
	b=kk0X59vV79XkhsCi0NvYP83wneZaNe2wdWAoVxkbcwfzSwsHDn8n1ui56l3JgGfRQ
	 cBTXDlGH//ce8H5evMtcce86x7TVvJ9+XoqaN0U6UWI1C2YPU9fCjz/Gh8JqWZO08l
	 sID+eZ0GFoxg4HqBfgu+O98FcgNaS6ApP0pzuvsrK4H6kZKns6SkWH7y0SB2C/V2R0
	 kq2B4VcE146MLQBdhgbwMQbUTYUb7Bx/5P+6cAbT8eLZo7OtVyi3dTazsBMzexUoIq
	 4Kkn5PbmWDVrpP08MCixTB7YfvA5uEsxfOuCVMFVSoUajzDw6yxKCS071ep5QkWz8F
	 FY5dB9pXlSswA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1709CF2576
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172881515361.11344.2344533018230476975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6d66425d358d947684efc55df403c4f111788882d900a89b96943ec8cb2792f
Date: Sun, 13 Oct 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728815153
