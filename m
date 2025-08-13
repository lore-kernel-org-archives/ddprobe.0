Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2545B322E
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755068994; cv=none; b=thubZbuME8lLuDYyeb2dMZQt7aKkuSZOSAQMfvW+7LmtYHBniK10sPyh/G4tuqewDngUT+B/SB0tm76cv+X/1+NYIIk1GCmhAu5RdXhNb2/EuBH408zYx2PiRpl6g71Zi2FNveUpJ2w4PtnAs/PmbZk+n8WPqwdCpcoWnjKp/+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755068994; c=relaxed/simple;
	bh=qIYj0E4EexWWErtICmmmjm8sbr1AGVtPXBf6Inm31K4=;
	h=To:Subject:From:Message-Id:Date; b=KzmkESO2VFUZ4blg7pb43TDCcpXtnPFshOuMPss+vWnYElBYmKW9qj01QzYcQYJUygB+4hAusVArr+Kch9rotdU5YdBGO2DqjnPPWCkOcdqpIh5b6vtBslcW1KFSwarrvMp4zUkmSooeM/4cONWwYmhrVvdb/s13xwSJvOT5ef8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=on5H0LIP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="on5H0LIP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C841C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755068993;
	bh=qIYj0E4EexWWErtICmmmjm8sbr1AGVtPXBf6Inm31K4=;
	h=To:Subject:From:Date:From;
	b=on5H0LIPNeDLleO88WQD7sIkLf4WSEHPkxifHI3TW0iJ5IZWPB/k+94D+XX24y34y
	 T3rEnJVSuDpqGNreNEjN/TERJTECLqG88rK5JKAt+nfUsH2p05EwGmQiYqmLO/K5AK
	 FWuGYmJbE5wMJzApDq1b2Rb/R2GbX+VB5tfJk8LKopLFk7ijpCCs9Yao410ERXNGKH
	 pxFaRMtHsgczsFX9ChRylRH0Cqf+LNmAJk6SGeGv6zNZoDyHQtyNfcr2QIw8VgyOWy
	 ALV5ZBb7o/0rnZnDC/sfpqOdQFej3QCzulhao+Rek+T8G0p4qTq5gqW1vmp+ARUKI/
	 Wu9oYOwt5u8GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA24C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175506899357.7012.16023272869416523404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b36bce061c2c5a20702ab3f616db1b83ed6b6de54be1b005ed0fad45567ac93
Date: Wed, 13 Aug 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755068993
