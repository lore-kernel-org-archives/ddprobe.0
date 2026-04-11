Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3100E294A10
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 10:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775902654; cv=none; b=rCoB2nPC/NQJN5p76MIttoOl9foVm4RqBxtSYC5zxEGJAXXsgWdTBHkQgBYwwnswMtZesLSbS+bQTZcdTxS4IS7QcDIAR1y2ngC18ejmvOA9IA7hsv1HUpHuRLf47RyDib1JPblfsFmON0OlTlellPsJxXfP1PWoO4OnhkP4KMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775902654; c=relaxed/simple;
	bh=EW6RijC1Rci1KU76wHdkMAcondeWRvUflU9I5amRLkc=;
	h=To:Subject:From:Message-Id:Date; b=Uz1gd2WJFJPCmBUM2H1S4q1WwimMwjyhO23yydWH1fuuIPkkKlTZQW+WqfV6JZlrw2Q56v2QCJVh1YfWHB6LzC4+49LW+PvUM0Jho0/eJ6jKBIplL/OfifNYuorstt2yxg8RvrhI/TWAMykVvFLZSqGpM6g4r4inprYorJ2U+oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BGXjocR8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BGXjocR8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC21C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 10:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775902653;
	bh=EW6RijC1Rci1KU76wHdkMAcondeWRvUflU9I5amRLkc=;
	h=To:Subject:From:Date:From;
	b=BGXjocR8WT0mgxrHHNSOJHL14Fo8VJanCzmvlL/RkQi8yYLWLFOV69rhRmEUxyFYl
	 Hx2gk2HYXGlJ1BmrA9tUvH8IxEeB8Xusu/HIUudzi6Qf/kr4KkXOd536q5utca7tvo
	 cX/6hjko9py3pqMXJ+sbiBATfyEfCxWeYII0HuqIF/fOvUQvFoPqn6ooRkUwuULTZT
	 Yr06uY/AzLm1OUCZNiD1yDtILIiVN/Q0BWSjbNk/p1qjyy11AbK16pgEtPbK4hQMhz
	 EOgK56Prd/m5DbBRygQ89ey7fm1zVWx8AZC6FfSpsBDwWODxmdZyfuiOI355feubrY
	 XhnJY0XzHFRlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE09AF3ED43
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 10:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177590265368.8249.8042389075208713402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97b32cf9ed1ed5d6f609470f56a5daa54052af53a43159dfa3eeb1d1792a095b
Date: Sat, 11 Apr 2026 10:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775902653
