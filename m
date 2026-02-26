Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ECC530F95C
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772075694; cv=none; b=hsDOsQT9ugQoNaTDB/wkH1gGIcMDTfBpPYPXaMA7NY/VA4OZfN3Zn60IGHvQ3acyaRsh2V5U7zbkqE0EPBrgARpY7AAJDTgBjclKIEBJA8AZ32t21OzWbnCrd4quop9uPHlpVQtEPji+t6DWIUhUzseR4QJ79Q9NE9yyf6M7hsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772075694; c=relaxed/simple;
	bh=bKclvOK5rQxhMFHFVYe5kGppYekznTE5ja+zUFRtVuk=;
	h=To:Subject:From:Message-Id:Date; b=b/5bRYehSCqFVVeJ6uWC4UO7dZGb2vZZujHyJ/zByFOgN0aZye2xKNvdaR0tyX/kzLT4TDCvezupJtLzlBc0HSWZSgRQDtjs6jdSuJegCgcv7sQ0n93hnbIVERM37WQ87IKhhL9uhbTcgExbmj6yrASjuoqGaGxUgO7NEMuQJF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bnv/mP4J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bnv/mP4J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD194C116D0
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772075693;
	bh=bKclvOK5rQxhMFHFVYe5kGppYekznTE5ja+zUFRtVuk=;
	h=To:Subject:From:Date:From;
	b=Bnv/mP4JXGouu2ThyLBstaiHpcNEZn6yNBkPSIoRs9turZVWb58mU0VY+sXaIsYoT
	 wryUkLnojBLFii8awviYsKZ5dMJPPWFwEMbHVw3ud2Iv+4LjdcPNa56Fiw3vcRRG5s
	 3j3ZsNBYWB95CsqE5+bcrdvLzK/GlMLdbGjBu1YcKai+L5jqgQjMZOGPuLHqgmjnWf
	 h+ken6/C5AVfUOsQLxVCbkdByZ3cT4RdinEPLCqojs5P0LN1MCSTRATyG+8xB9CmQA
	 Xuy2HkpvocDqmv3hn/8QvaZufAHlXwiyt9trx4B7N/wZUDyh0beuDSkHVtmdaH9Mwc
	 kEt0PJzbJEPEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FEEFD4609
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177207569361.21648.10992434796670556171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b27e05fd05f4d977907db09c9d925926249a46cc12845defcc88e7568e08afa
Date: Thu, 26 Feb 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772075693
