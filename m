Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AAE532E6BB
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 18:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777056454; cv=none; b=jQVUTJ0hYR0SKz66BVBrAN0Wav2dkstJj/GJqsfiVFm7EAcOD9PkezJdJBIGkQnB8lhxJ9rBGBDKfD3E836ZrEOAi30BgujKt2eC8DseNur5PyrZDeLU3XxRMjJI/Wl28e2l6WI1AL8VQr8RWYyMiSvoKhUNO69Lvltop6LvXuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777056454; c=relaxed/simple;
	bh=wiLjLkbtdE7DlWfYJpFhn105jNQnZ/qwRoWQB7jfzIc=;
	h=To:Subject:From:Message-Id:Date; b=cjRNW/mXZqtpvsaDHfyAO52DxbC79WCRBBt/jg4IH9g8QhT7R6YtAmbbB+tqGzIZ0+47Bt9UtFRhzOc+OVXOx1Vwokkr6JGH1AxTpebMRtG+sCRtu8qENhUbqagVv4rdKPC9XKFxY3sbvb5Na6UskGrITNYt3aeNBV0N/jILPBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NfDEh0KN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NfDEh0KN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE9B0C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 18:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777056453;
	bh=wiLjLkbtdE7DlWfYJpFhn105jNQnZ/qwRoWQB7jfzIc=;
	h=To:Subject:From:Date:From;
	b=NfDEh0KNwBLR18OFk5abmHQ/K0+2ubw+XWrnrbCcXFPtZ3YFnHcX2qmHWEBxFk98n
	 G+F4BOZl2G0jQIdxaPaShaoSf9YXVCSd2XzUG59/qjS2Yxsz5/VabHK9tf0vou+dqn
	 V8a30GTHXWZQpcJv4klNr18eEy2R5PqrP+5loXQdrtr2EbGBrU1KL9dC5QfEMLXTpk
	 8sS1K+Pjv9om6YUbVjgWIGO59B/P7g9Lzx/ho3f0JJS5K2KK9XtdDeAZnHri3nYpQ1
	 kVOT61PEA0hM6WFdZs8yulpTdwgmbOtMoCLyeY3bIHS47OeehgrcdQJSxiaxIzH8L0
	 nGc/86SsXdMeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3B6FED3E6
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 18:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177705645368.28632.3517324684860893428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f94b72bed03b3dd7d7c2eaf60d1dc193c097ea55bf3f94bb8c891ce36dfd003
Date: Fri, 24 Apr 2026 18:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777056453
