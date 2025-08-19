Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297032741C9
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755624594; cv=none; b=cJcArV8KHSt1grq6IAGokSG+urq4ca9Ty6rKtiPPaAbqxgL1k51wwPVWXk2uJ6xZNXHX9KSrwOqXV8Ie5RsRvJBgkclueiGA3Yq3xkg6i2oGncuu9b454kmw6AVCA0ffYFvvTysO6yuc04YTwWuBM3NlSFhfJc4xf42b8m258nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755624594; c=relaxed/simple;
	bh=exnfPm3wIhQbu8Ky/Q4zYFPmOH0kwLBXkt9wwPjQOG4=;
	h=To:Subject:From:Message-Id:Date; b=I0L/D+6i4qmyX4vPA0mNEUY73Sj9ZvxS7EdVJo6syV6z7ecCC9HC6qWlEqNqmnIrFVi25w6Hw+uPjH3ntSIxRnuKzQSTSn2qCDf1LR7IVNh7Xbo2/6n8AvFUZiXhmUgcS2M24mCWpCN1nXJW5cjjQiWoPoN5nkXxSBEjF5Mw9cQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ztl3FWzX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ztl3FWzX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E694C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755624593;
	bh=exnfPm3wIhQbu8Ky/Q4zYFPmOH0kwLBXkt9wwPjQOG4=;
	h=To:Subject:From:Date:From;
	b=Ztl3FWzXVAwQ3wGH+rIkwy+BAOM5j/88uSUHG7bN2SYD8r2wSClCP3zMiYLdnWDqc
	 /ijFmXPcqe5LB6Mh/reYaqqZaiIEBk+tmnt9HWbbWjljUsR4Ksi+/O1eUbatANu+dH
	 gaIr+zfyD1ZHfza+hymdkLiiSamMunFuo8HXewtjDZoOEAG1LACFxTZ7Rop9HETChO
	 f9UiMDctw5ulTgA/DVEdK0tcz0v/d4vFQpqAFCB1iiqrC1Sraio+qq7joCU47Ag2f4
	 HH076AeASK0UxHLSski2pdlBIuVyA4bj5KyzU1DelNLZh1emZScovRoNR3v1eDyspw
	 PxLIk4uFfU3+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F091CA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175562459357.23659.196061491016909076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2637e01a3d45cf6408b6785fcb7ff78b6e87fc65b720c54208690da585001d96
Date: Tue, 19 Aug 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755624593
