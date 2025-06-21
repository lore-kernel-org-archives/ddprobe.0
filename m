Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D75D17BD9
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750508994; cv=none; b=jOk9Mf98vF1k/C8o3i3u3OeV26bgJL7qwgmAC05JTBusAKoU493/N7/uPhMc96U4RDiYwSb1YQfmonp4NzVQC+21vTzrdl4KLcBjQPb2S9vdkgzI3CcAu/ncjru+ybH1Rqb+dpHYObyA6AO1hbT/NnxmHWp5y1upFn4gEAokrwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750508994; c=relaxed/simple;
	bh=HFT/togw7ubQy+zScPWsNokiFP+hkMlyZGhIG/mu48U=;
	h=To:Subject:From:Message-Id:Date; b=JfavTV1IsP483KefnHHse2I7+deAy3D7D8S5wrtGFYQgYLtvcIs9GpEBMA53d8fIvkS0/s3ZlX23LTKXd3XyYl9O/dBJUixxIcR6Rc3KD4WmuYnF1UpZQ5wAejFJtcPvuz2iIY6+pyuU5Elr/t2/oASKRmVzOHtONxoElzXxgaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sh1sh1BS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sh1sh1BS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A14C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750508993;
	bh=HFT/togw7ubQy+zScPWsNokiFP+hkMlyZGhIG/mu48U=;
	h=To:Subject:From:Date:From;
	b=Sh1sh1BSMJTsqOsoXaLgZjmx/iSbcLTUJ2WcZSpE03q3SGt2IwOT3deQnaCN8rBsm
	 RTwfkZAaH5YtbC64pGJZLBl5BNpvxwxPM6xgGadWqu4hwkOll8zI6HJ+PFQgvnDbph
	 leOPC4XxQn4RzSi2RdAb5AMwtrHlRLTEabC+rXmKr24+idgTJZQV0gLHa6LLOSkoqL
	 Pw7D5/G+KNV3gzUD1yfllOslAqV8VAnVqpB7OSazqOgtCop2z6pkoHlEmkT2HwPzSH
	 Mju/qhZHBargqfaOEHzsSOvQl73WeWI/3/+ml0zjO9vQ5vOb50eoYDYKXVyLO4Vs07
	 wDXJNao/DJbFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F370C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175050899357.13641.2047004513535656159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0182a0225252391e0be8dfe70e134f0f921f83d5c9933788607da72e2cd63cf
Date: Sat, 21 Jun 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750508993
