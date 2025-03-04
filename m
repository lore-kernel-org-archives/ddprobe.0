Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0662137923
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 01:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741052333; cv=none; b=Scoig8wzU0PtDpkbZ4uuwOMwkB26VP6j3zpmml8T7TpP/jFBGVmtqBuKT7NVNeIZejZrixnL28UuSWkR6/xQmGv2PUPJV1k/cswZgJD6YU7caam/ZJapap2xEH+jLLBpkaZlaaFEQgWz1mTgIV7amiFjVwQj7fo6TV45ZWVwEg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741052333; c=relaxed/simple;
	bh=XkadbqWJg4Ag/0DehZfLIRD1f+g7QTCEJloFxjjiG30=;
	h=To:Subject:From:Message-Id:Date; b=CX3neHdaInUtXRrc0mdl6ovx5W5YbOcUKNBRcdg7/3OkBTuKY+8ubBwbbT3mSlF+kH0aSFV+wF7F9nySBtwGetcRFy0ghujmWUTvmPV88zfZ7nf+9xxIv1tkHxffxdClqSOpWUagA4B0lm2otHYro1TkDBuZ06EEnkMYLcqDeLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CiTp73GN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CiTp73GN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD88CC4CEEA
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 01:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741052333;
	bh=XkadbqWJg4Ag/0DehZfLIRD1f+g7QTCEJloFxjjiG30=;
	h=To:Subject:From:Date:From;
	b=CiTp73GN7wqZHEMeTFwB/rNtkbp06YS9TZuSik1uh+tXy25mmcDem4B5W0wS1zp+j
	 TXpB3zKxye0dvvY/hhEj5O+QqeElW400wt1D+4+G1NpiDD7EeczH5bhQSWBgykjD2Q
	 jojjTypny0cB61rN5Fi1NKZ61AdqDispBvK3MCx0xFMcIuH7hr+3ZreH3xJ34YYQvg
	 ia3mLYWlJkywUTqx9Lh1NcJlVNlLNr/OOhGprzczzhat1r2WcrGGkiH/KAf76wjM75
	 IqELONU2Sqw7I1L+2cSLBOEe/2afNbo7PIIVn3KTAKuHHdzH+zMk3dHfG12NXiAqJs
	 ugLLEJYi1CDlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA11C282C6
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 01:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174105233363.11502.9422921734016208836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 308a1e1948643d80847c334955d56b476f932805932269b5231ca12ebe122c14
Date: Tue, 04 Mar 2025 01:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741052333
