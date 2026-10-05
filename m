Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496062E737F
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 16:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791216634; cv=none; b=W1c5y21vy+rqmuCd7GE1UZB8+ZYFg1Taf8sv8L5iLzxhgvsvL12i9c/aHEsfnlnTzMzUyh92CTFafP44N5h246Hqev4HnKikVmXilIWRKQ4xM9xmK5p4GTvgqar7s6B4mydV60umolKC+kRqKgWVZlDofLHFhp4h0uJfbjpCIOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791216634; c=relaxed/simple;
	bh=VToKa+5VHlzUltGkqhpl+MIclv2sNS/tt5q4WAatriI=;
	h=To:Subject:From:Message-Id:Date; b=EybC8sSI3U4FajydTcteEY8Khg0+imBGPRc52rFpahYyPYzSnY7S/e6W0N6+EbCkW+I0lRKeD35MrAXTLOD7stMYxvzhWvK8y3+BSMsJPqxarR/YxQPaQpcM+fcdnzdywepcGVjxPWhOonvq62tPAkKXSdWFfAIDX/6DRsdgVok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGn6gD/8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGn6gD/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF773C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791216633;
	bh=VToKa+5VHlzUltGkqhpl+MIclv2sNS/tt5q4WAatriI=;
	h=To:Subject:From:Date:From;
	b=oGn6gD/8zTJhZ/ZJTB3wZpAhjjCUOa51y6SmiLVLD8rS9FNd8LSEmnzpQYDiP0DE1
	 kHmK2VHTbrqkHf81psw3A9BgmarTxUjuogCLJufr6c7N75Ep4OQLmarNMGkXVIOQwA
	 /KbLhqK6InwQBm3WhDdxOSfnRAwo9uXSdkt3Rv/gkVTMG4JDgmvmvAAKQCNlyc+NE/
	 XAPnAX6+qNuNwaNCze9HCeV10eJfzlYbMDW+B8JU5Wtr+7pk/C02IZFc86M5m30y2f
	 4bOZxrfcRAj9+WOywJYgAEBT8Svim3+G943QEjcvl0cnNeXpwLgA+UXKTygiwwdhkT
	 g8MhQSKjLlm5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC36BCA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179121663369.2302.14982854999050547217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 827b5c0147439ee271a8d1c5532d1b2a650e0472f055785a2de044ad5b189860
Date: Mon, 05 Oct 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791216633
