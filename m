Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B271FCFFC
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747207194; cv=none; b=T/9s3AU6kZWzqitL+bg5CpQgYqe7iKWs3zqVsTKQmDb/nCNRN6NhH/LkxqiUG2VZOnLMtYkSY5rHf2Bf6KVAWIRAQwCdjac7MdHUFIhrUNCsAeJ0iBZ3j6DGoNNshpMnfLel29fwf5vffN057mP4ivbQJVJ87AR/6srPrd5yiEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747207194; c=relaxed/simple;
	bh=QNrc0x92bYyoKxCCvjekhSgENUB2hGdGHDUYXyWjMSE=;
	h=To:Subject:From:Message-Id:Date; b=qiSYsH0/gMSd/B3N64iOqoHkl62F1HuLNSIJwExtwI9yAkyPrYkdPR6QWjHoPobcCTm/5xu5qLx4Wv904Qtlmr48dOx6dZlhYw+GLTXojbCvZfF1aporPugRRDUxhM2BsZpMyJFea7IGoW34DW2uXVgQGMNcvB7ra0QnHQ6GzYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+Vw8W44; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+Vw8W44"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8E1C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747207193;
	bh=QNrc0x92bYyoKxCCvjekhSgENUB2hGdGHDUYXyWjMSE=;
	h=To:Subject:From:Date:From;
	b=R+Vw8W44en0ar+yBpR00JOGZtp+n/4cYCjzPb6u2EWTzD3C6o8ITPHJEpuUTbrFQo
	 aJ1hWhq0SBg7QJWNTwXT449ckn0+8pzmSj4BkpH266kBBxCOaVGg/J9Y9YygqLE/Ac
	 Kly4hvnJDfLUSUIjiA0sEoq5Ej9n9xt8grCeQvkoSzb2HiC8tc7PmQALC9OrbXhr9U
	 hl4JNSBBV2kZw4xoIhDptZHgtRypmSkcDZJma8earAfTKLFxN6Bhiz1PLmll69U4dT
	 rnm12QTKYm64fYZ89FpL+PpIf/UOJP6pTNYfApvYqdFBujD8ucbCwwMrVu0PPFccRD
	 D7zz2ciHQbZyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1ADC3ABD9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174720719357.16165.14139363244680781425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7ba0cff0bf96940b9b1cb42cae2dbf04e146b632dbeb1f82e7ea687b5c49d59
Date: Wed, 14 May 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747207193
