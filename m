Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54AE9257854
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786788634; cv=none; b=ZWx4Vh74qL7MRx0pQX2Xqzq5fmMpC/V8q+jByknFbj/w88OzvHUo8ujxW2Z22ae5V3vasonCpcZIsSAlrN+hOHIQj68GW+TivEovF2WYl+0PKLvvPJunpJwrnokrZRJy8JO2zeIPzqli78+G5gILKfIEZzISOCtckwiWEer2bJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786788634; c=relaxed/simple;
	bh=Iw307EJBfE6og5+hE3WNB0n/rugLbw488ylPWF1+LIQ=;
	h=To:Subject:From:Message-Id:Date; b=o/ppxj9f0vXrmsnbY7GshT02DU7AfyWtjTTOlzt6KK3Qo9NgDMAv7z21eS2se0oPTdDt1OCs+Sf2hWdwvyD33L8/jH8r0oUVW3CzSzPzlg6Hw0g3kG0Vl/4L2gpPAH74KAQsag9tU1lwcauuXk50wJp+G2ec9NlWSph0S/9sb5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bgTcChU/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bgTcChU/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D30AFC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786788633;
	bh=Iw307EJBfE6og5+hE3WNB0n/rugLbw488ylPWF1+LIQ=;
	h=To:Subject:From:Date:From;
	b=bgTcChU/qCsvkb8xyTwt7IkCB21ElLB1d0fFxjMkbVHcylPdo8WhmfDXKofGiQz4d
	 rhe0Kf9R4SbwY1CMGW2ld5qXxLUxZEicCal8hFpgvIcrYoAlh2qwm2C0nORfCam6ft
	 nZKZerM32b7J43yOyyLyemN1kpzghF0R1rPp4L/9TWXRFwI5scotUecpnY6aVOOOUP
	 jmgSFvcOHajbYhLLMambtZAZVBZq+IQ2Y1KYR9rhNsjL3lwGpVP8h+Qq8XTeO/8MjK
	 FdWOo2S+Nh745qEaz+A7rxWenu0AV0Lt71W3bwpD38cevLrK/PKr4SdpfcP/o/+KGz
	 MgMWH58Wmuw9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FDAC5CFDB
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178678863368.6621.2426742045049461342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 243eb965446fbc979bf69ba5b81d447cfdd480408dbb81843291324fa1d3d77f
Date: Sat, 15 Aug 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786788633
