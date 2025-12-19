Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215A727FD76
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766184234; cv=none; b=T6gwvE8NsZQjY5OVqFAS8MpAfUgvwZ+8yEe3TBVxeDjpBGfcvAfGAfmSvjZ3tXKncAdjn7eofEf41pGw709uDTh2n5i9slqZUEa0alfutrEEmPVgDeyR2B6gBy9Ykl/noUl0UUnmB80rzJWPzTvv4Ua+B8o0ubOZW6sbJ6bqQQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766184234; c=relaxed/simple;
	bh=qFUyr6KisFz4uH3pt7PMW7ADEmypUhHGJxzBvtuF2xI=;
	h=To:Subject:From:Message-Id:Date; b=VhvuyOcqnRYPM1Cd0XQn8zy9V5EDDaVp6gEhIpyeunOGKbGE02RwEUVby0EBeiRCw2ut45g6McRulRizDzH9UxK+QrgbPfLxGHD9lKQ+AuIWqBJ2UsvBFfyacIzWmCRxi58wyknsysqqJTnW8notPepn96paSs57peMw4iRMwkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGb8wRZo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGb8wRZo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4A9C113D0
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766184233;
	bh=qFUyr6KisFz4uH3pt7PMW7ADEmypUhHGJxzBvtuF2xI=;
	h=To:Subject:From:Date:From;
	b=cGb8wRZoYnu5WjDuyABFwxa/yynWs0TpXdQzpNMhYgtuHq96rPshAFqI/4bpcwdMl
	 lCrxGSV3AaF9R9mASnHOsq6zhDfQ/bN1l6GT78aoSEM0/I4ROLHQ0t3fINdRabaKrP
	 bYTO992L9KLGImOt6D4UY87sCh288Gk9BjMZIlaevd3QGF3RXpjrbA4nj0RmKWWTRN
	 mZDgHCvQtyEYMZiR6udqZ/p+O2MHDOPcANwPTU4svGaDfAqONZKNgEmCnF3Jl1mkBT
	 5FP3t23nTI2HFVMnPuM+sWjFx4zgmLFiyb98UKuUBEzLywo0zhAtGhlVzdmeL7cYM+
	 YmcsIHvuNlBrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C99E668A2
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176618423358.4372.398165937652848821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35276371107ed8f82a3203a058ad456de1ce2432bc0e5e57f22089f988ba29f2
Date: Fri, 19 Dec 2025 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766184233
