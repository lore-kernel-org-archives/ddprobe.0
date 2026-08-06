Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A24931F985
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786002034; cv=none; b=lK2C3wrpbddyWbfUbHcTQt0w8EYMzsqVEBokYh4RYbCnRIfl01Wr+a8xe8fnUvfz+5SCEH9mOESWUrATjV3U84FPyoTwWp8K9wBybJmwak3Mc8HRQ0JumBYbpa3VZsn+7Nkp4k5kVtkhs+UfYIDKSdChnFY1JLeY/Gx3rgZT4GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786002034; c=relaxed/simple;
	bh=FUvlD4qgf862vO1a59rUsTKQU/QqcN4Ag5/NZFJkKf8=;
	h=To:Subject:From:Message-Id:Date; b=jCd+qoHVs5+wW9UQdAJYQAJQfIr/C0t2IfocbtlfASqPe4mMnNx2DX3z2Aqzl8bEKs9rD965Wlae/JINF1ik9T14OSlwxzfnFb2G2XyBpTlOiabb2Xes2mHHNTBf46zR0p4N/mfsixD2e5ClwuF356TF2duSgQxSBYL+reXpjLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=daUrTEf7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="daUrTEf7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF311C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786002033;
	bh=FUvlD4qgf862vO1a59rUsTKQU/QqcN4Ag5/NZFJkKf8=;
	h=To:Subject:From:Date:From;
	b=daUrTEf74T4j4C7feMcrWD1TRry91MVTQmv/GkELf/ErpbPzXB5PoIBFTmxO/ZsVz
	 LruBgpiB7y4uUhjU2WYEqlvFoxxJpfZIpyC3BlWUcilJXaT1oxXECgqY5TS9puFDu7
	 m9mp3jsvRa1uGvD70HFZW+lrqdstT9nIg16nm5e+vPnWEiikyan1BDi/mHKG7deGLQ
	 HjDygXPkQrDMG8/xa/dO0nnpHdxz7QPi4tQhnmNzpbP2f3p71lfPjJX68XYCps57IJ
	 W8z4zouNA0JbbLLeZdF9YYTaoY6OUq+EITucZkqX4ecWt0UsVkret5NP/t87ai7eeM
	 f+fqJkIH0I0eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC47CC55838
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178600203369.31787.12391117524928482304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa9f978d6d8bd694ef00d4a99dde260ed821046bbc39cf44c0b8cad4d030bf0c
Date: Thu, 06 Aug 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786002033
