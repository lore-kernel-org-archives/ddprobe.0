Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF1E30EF9F
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 19:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765827774; cv=none; b=tyJ1tZKhFn3fQcTxMTJqWFpxeLHOavTymAUGbzQFXIOQsT7VFr+64uhu7o42cNMHGeiWPaK+Lv3E3pXQsGtIfMf8Mft3uHNyHAbm2YOTPf6OS5C5qIQC8ZiFKHPnQV+bV4zrvNXzoZz4B3mAyWRumRVo8WqLPcMy1+/nKQ+srTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765827774; c=relaxed/simple;
	bh=Y8n70FdCHTAOmhJexMHIpmX9zT2A0vu42bA4G7okY4g=;
	h=To:Subject:From:Message-Id:Date; b=fPe3O85mrOjgNTkd1I8PjFjmbRiylxltpr8mg0NDyVVMA1s2ZnONTIvRuR70ebeszyEB2nx8ZJpfjOiLyybEX+5A0GFOi6Z7Xonm5Eb/VmhZ+uMZGU23Ga2ibRXCGrRJ1Uy3X+4TTIaVGVG5FJ/F54zM5jZOEYgeQuRZeKRb5mA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sLcjswUq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sLcjswUq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A508AC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 19:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765827773;
	bh=Y8n70FdCHTAOmhJexMHIpmX9zT2A0vu42bA4G7okY4g=;
	h=To:Subject:From:Date:From;
	b=sLcjswUqUeJRZ7bzWJv1zhIsx3GjBK8hy8eEsySgaHed7zxoHK2KJuObsKy33py5O
	 S+SPVB5DhKTCxD1CxGgaV3t7hT1BY9hsqXlV70eRCSG5m3Up1v6oTakvOdIo09kZ5O
	 xs31MA6aXKJPFYKe7XbOZXviTDxhP9KhqVYS66spcUUHDP7xbkdpxok9r759UyVO96
	 oQhtUcQiXgy2KJXdJAhUeO5VGV9J1t6aFUjvsV1NNpZh92VAmSoOGphxuS+89NnvPm
	 ah1UptDn0cdOF345WT5Mgz1C9G9/A1vU9yMMze0HILL4XWT+LoqyEAj+F0mvM56PWM
	 bHUt8bGq1sR/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940E3D5B86B
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 19:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176582777359.24376.14771912249903699385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56674fe326782e63e0b96e061a4b564ea475760b4a434b3c9dd81a918d3cf524
Date: Mon, 15 Dec 2025 19:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765827773
