Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3584018B476
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734935754; cv=none; b=iZ5aswZU4E+8pgX/3xFLBd2336EmJfHxGE6YMUtbH9yqK9GK/XyMYyiwrYcFE1I1PpfepTr+wo7cMcQiCR+PAiu2eJgv9I79ehAwI6Q9HJs7+kvCHhQzhAeU3iDNMKPJAIkBe20NtlfRxarPwt0NE9gpr/fIGLw1OxwC9d8zMac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734935754; c=relaxed/simple;
	bh=ZL+dtEmitaNAUE87cDnZaFsYQAWuX3lvD9+nwHHaImw=;
	h=To:Subject:From:Message-Id:Date; b=JpT9+xpeJp/8lhL1O+QJYXUySbtm7oWE/lsf5Sc5+WslNVhPR9G3fUZGGCMbI/t9AJYbFuUhIrDVnEB5jzshs+6cRPLYAszpfdGNP9tirEyWAg0jReEvOPFCYEqhgii2GkA8Bs8z9uvZD87gzrFmpI2UCJOeeodcWvvBlyHU0hQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bl9roKfC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bl9roKfC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7907C4CED7
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734935753;
	bh=ZL+dtEmitaNAUE87cDnZaFsYQAWuX3lvD9+nwHHaImw=;
	h=To:Subject:From:Date:From;
	b=bl9roKfC9AxhxF0QDcXqDwtd/lB4yItvg4IKL6VdBp+6/CQvt4QYXAR87QeOvJ8ER
	 2bdIkS0v0UpvHWRJ3ILUTOV/RJaRegEYFUjKxRggbiNsrLv9SKtUxitcABqi77hjSt
	 b2gN1gfsOmykCL5N3ciYp77Bu6SispV4KJrpC59ZNHw2josziLBdozlvxhVHt7/AOp
	 X4EYpVX5taJWDVjk1FWBFzKVrDWS4Hgtws0Ea0GFQNHRK7wIK+uCRmTSjHMVdjfeoP
	 /VmB8rOjeSNDYCr3QaaNAoaVXWJSWoVV2ldchuI2S312FxJXpgVDlz7x/rOF149jcb
	 ZPpYA5TeIRZug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94154E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173493575359.26804.2906567992950143189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5cc683ae3763f4d0a51c396796a03427495225c3fe24b46ef58ad459464e24a
Date: Mon, 23 Dec 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734935753
