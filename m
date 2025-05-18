Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3802515D1
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747536594; cv=none; b=VMb7Bs35UiNOrmCzjPag+z5qwCVOElLbVY3UDrGphM1/KyVdmuEMeryzsXTDSNGcqgrLaQUk+DD9iBcPLyMBi6Y8sPLC4X6k7d4NVL/Tj+TlOEZGECAtaXSGCTSx/KtkbT4UFC0JkHXsoCaoN6Iv741adRzKEP4BHXMQJLRynoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747536594; c=relaxed/simple;
	bh=Ouuuo8oznQWuF7BJAKSiiRjYSeXw/0xSRL8P38Ss104=;
	h=To:Subject:From:Message-Id:Date; b=VuLUz/uO18n/ffcZlFbYwG/TcRuHQjXr9DHWChYBFI8zqZWTFkr2+iBewIud50IW0XDOPtzoAy3WyDuyW5b3rnNxfWVhN49gJMzdhu/DUoRzTxQ4YwE7l81uBEvgNiFYxQ3KZ61GnzvZZdGnrwCmAgi9qjS3OF8MrIbgVsJemK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYpqAOTN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYpqAOTN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29F8C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747536593;
	bh=Ouuuo8oznQWuF7BJAKSiiRjYSeXw/0xSRL8P38Ss104=;
	h=To:Subject:From:Date:From;
	b=NYpqAOTNXlKPEwLIiErt2JikW8K/AP7mmoUchiLPW6j62rqK6wwkytEewoBG6pw0p
	 Z6N37Ry3XLnw1/2resnOaMMXURKaYuG7V/pPHYmtHN67WoKWJiD8aCY2MNhVw2d2qc
	 jLP1X3IkOkTZi+3SYkd1RQyPMaVVGnRliyq+KDduSUZf/xlKeM2GnUPSIZPSpJgR0R
	 xMtOQ7cFCdHoONNInEJjfdGJJjbiK3IVo+fKyqLf1S3MqiFaWbcHHVLkqz4SdNZCjH
	 GrR53+bmktcX9d7NsMBLGmj+1N0P8dJrQ6FRXF2G1hpo822fxFiL775FrfRFnM7Wtk
	 OY6i17Ct/rIDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F142C2D0CD
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174753659357.1374.9348587275122914535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daa72a64eecc9ea612ccacac9a92eb8820b116c8da283f6af3de2b5d93521507
Date: Sun, 18 May 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747536593
