Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30AB616FF37
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752456594; cv=none; b=uC1wZOpdhkrg8tgQCUd8XW/I9g6DUIpFNp4G/quyfo5seiwlMwe52+fykoQQ0Mjhc/n1EkdksoC1rQU1UVTVYnhCxtJVpVqCFx5J1KhP32Ez6mD6tzXC0ODuRfQVZQL63vDAq4U8SrxkKT5sLoiUny4c4GlHTHzTKsSzBdlD6gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752456594; c=relaxed/simple;
	bh=RAddelHtcuY3UCBVdknWb/8iTJ824gQehT9CqIKZ1y8=;
	h=To:Subject:From:Message-Id:Date; b=ii0GlLBhl3HUKU+tThahXLyJGYVBIyX8BoyV6ofuBi881+S/oM8syFNrGBh8gUUcBCFiT1y211qUnOjxbJjBvU/Uh294ziC3IsfZ6vQxBepXtf0Sue0TZ80bR05Q9PV5gMAZjY51Ecyx2zL5GJ47L780ZFjXbDHZBXbvgM2SNYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a1rM2Hgt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a1rM2Hgt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AF9C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752456593;
	bh=RAddelHtcuY3UCBVdknWb/8iTJ824gQehT9CqIKZ1y8=;
	h=To:Subject:From:Date:From;
	b=a1rM2Hgtkiu0y0EW9w1LJRPObtLpBiPOsy4fGrp3S3vCb8LMYCVZb5F6piXi1ufAf
	 pqz8RQSSS7j6XI0Q6ntuwwEUBAFg5a7EEgKbg+1DxkjEzxLxWH2EwpedYyBkTmfGPd
	 SKeylls6rlJXK6wvxoCnlbtkaq1bq8/C1Lr6DAZlPYfuswmfAkbin9yi7qDCEHJ1hU
	 +LKF5nJimOetVp1gS9JWWshxKc0t6Cv0XU7hxzfLDULU7Akh6grEkDsiIF1u8oRi21
	 IwCJxCB01yaMBP1zwIHzKAvnull8tK7JhuffFNGnHsj3Po7rdcBcnTx8wkps6pX/Pt
	 3uXcvrdbYU4Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D79C83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175245659357.7368.1716984865673448453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae2db5c95c764a62fc03add1486abbbd8ee9ff22510cdd088c52ffdbee64044f
Date: Mon, 14 Jul 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752456593
