Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270D2175A92
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774309494; cv=none; b=T6LUw2rpbDnJdRvbpvZQAR96GrXlOLl8p4Nsjm0N8TAHfcwq08lqDqHEFYzPbOOHv2Bnqcc7QZZZ4/lQNzvdWV2TaQ4a5vyQY2F/+KRHTAge7qzjcH7WyIWvy8P5MHG4F1RqGjgZn4fMGpl19QSx49XFaIl2Ry9ZKiBsTMmKrEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774309494; c=relaxed/simple;
	bh=skfm8yIgcvl9b3LJG3y4e73xsStiRUJGHDFTk8zoFyc=;
	h=To:Subject:From:Message-Id:Date; b=pMc5pW9jt0/PfTwRnvlE/ny6Cdyq5VN5jvOAl7Rl1xMSJaCaS1PBCrUYVb7KWfuT+L6mlc4+PVVVbCt/DU4u9qJcIt9dcShsGvND8xuLe8RHKcki1jGETDohDuRaLXItjppdSVoXRpoIruUJSoCqa1CBduXBSc19SLWZmnvbMEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RjE493h0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RjE493h0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2386C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774309493;
	bh=skfm8yIgcvl9b3LJG3y4e73xsStiRUJGHDFTk8zoFyc=;
	h=To:Subject:From:Date:From;
	b=RjE493h0My1WrL4eEcFly0e/FlmlpKrUotBS8OkT2gwmyViBxhTx/TTSQ+u18WCNA
	 +8W4dm1I4hkIz3x/DTjEI2m3v3mxcKOL4+G25LyYwW0CC6Fd0W8ZZdiYP58wZfp2t9
	 QsTDRiegAf73TbnlTqBTIBzgs5/M7sQ/TcwQCcLf/23FH6RwbO9G/9lM0q7H/FLCvl
	 JJrLh3e5tpNH69xb0n0j/KdPHoh0/JsOWU/CDGSG2TutfXGO1g+GeThdeWg7KbI0fm
	 JHaY58ijUlnKPAgQsJvMnXMCkDsL6iXgjIty6fgW5Oz2IHNnUVnspCTp0coAmnTLKl
	 Mc81laXpnTJ4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E620FC72C5
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177430949363.25911.5799306472134914341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0e798f93ce20b07d6c3805205f50cef3d4ea4859b7873797b50a75fd9442773
Date: Mon, 23 Mar 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774309493
