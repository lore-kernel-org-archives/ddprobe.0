Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ECC186334
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762041594; cv=none; b=Y1aq+6tvmWnUG8t/8wVmpN4uzdbL8DlXiykur2H6xUpiSsbFcx0OtrxTgeZB6RAU6fpFEYPvXJ1CFXEeTb5Ak3o5oWdf+b23NYUxi1lyeENu7npU5fv4bIFsAwFpkKqbCnGWFYOmSwO2ewHRdqoEdQxwsm5z6BTfhHS/rMAXPP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762041594; c=relaxed/simple;
	bh=M4B2NVCc9YBtlEhF2h+UvHpV9BMaAFWhFV7A+mOkGVs=;
	h=To:Subject:From:Message-Id:Date; b=jYXvRtB8kjaTpzf/BhYW2ZYM//Gon0Mce9mVKlmO7Vt8QDrimf+Fieme9CPb+UZ9f7DLIGPI1HXaKXR0BRTdcqGywbKjVwIOXqce1HsvBowbbKMCH/NFWRy8L7nZVqTy7H/RA4z4I6j0WRguqTr5NZNWKkD04nnvAPIu1yacDTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibvnbksV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibvnbksV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5377C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762041593;
	bh=M4B2NVCc9YBtlEhF2h+UvHpV9BMaAFWhFV7A+mOkGVs=;
	h=To:Subject:From:Date:From;
	b=ibvnbksVmzq9dUpDP3qHTfEHtpxqpJBI6YwnLohd34Thu+AUOc0fshymR1/XnkEco
	 ucKNVcJ4XtifsgxxnxfzCuwsSdJ6+M2Ids8WVWrJCvdrRVeHnT3um853cFJ2dPEwas
	 yovfJsUJ7z7ZuGVvYWjUl+GyP6qavtJQwf7Y0jp8mQ04imGxd+R+szHgqEsAyry24+
	 lM7388VsbwsOfukFH9b1HzSQPYZtkdBN0PLvySqCNtKc/yeLyeH/IFhoIxyUPpgFk8
	 hgvVEgbRr3vE/VH2G8U53V1234/DZUAaxcreakW6fYaTUZXVZ6uRYZI4pHyzMREHVq
	 Ak23gx8jC5Fgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9071CCCFA02
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176204159358.10963.9053485722808259992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba0724e62429117e862430aa3f1f09d5ab6052afbde146d7a50835ed508140ce
Date: Sat, 01 Nov 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762041593
