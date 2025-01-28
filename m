Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50EC01A841A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738097754; cv=none; b=mahwbmbvq3wDsQ/s7Fc1mLYiBbO++OY6WK7wWiMdi7Wcja8GIbhcO1d+cYmYKURzfLiiRqx0Y9KOMX8ayXgkJgeRbuQ4t4IcRnTCVhmUSCvJX7VzujVCD5ybEPKgzv5HlMnEms6hA8BvtLoTa4ZJhndM883HhIJbbxWxbIxwgcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738097754; c=relaxed/simple;
	bh=/5kSwaduqhBRg0SNNUZ6R5b8BLFnsLDQkVnqWdHyTcg=;
	h=To:Subject:From:Message-Id:Date; b=I1X+fbgKqpK/f0/PPrwh6jrZ4QN3ZBLmV/moVfNMXVAcowJCrSIC0mQFnllS0SFXaGLxZwScZDEyZsBtCXY3gRhgBvqfBzswsvdLRZfijGmLykKbGTPoq+qxHbndOjaegE4HSToiHHJR00HZRpwbNrnANfmVhYj1QuJEiOgsFCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yy4hIIVv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yy4hIIVv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2170C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738097753;
	bh=/5kSwaduqhBRg0SNNUZ6R5b8BLFnsLDQkVnqWdHyTcg=;
	h=To:Subject:From:Date:From;
	b=Yy4hIIVvKruQNXifXoXj/FamoXbmXnjW+WBV4iSmP9e+kRLggj0JnrgiiUFCDdByK
	 uOMpNWJ5FEZTewZxRXNFDCg2XsXaMXjResWjulZdg306NSk0N7RHqpPA/cfta4xeCg
	 bdeupWLco7I5UmOcH8CE0RAgwJLhoTSB/sj1pMjkQPx0PNB/XIO630UZZXoHNclB0L
	 XxofB1MUWPriWLVbWQexWEJOcXTxy1rWwP57GxwCOVxQx6wUha+2Iba1ol14RAnpPC
	 25fhXs6nEawVZWorrPUTuGR9KeJDVMcxhcF2UdnZydO41zWC5qubhFbCEf70gXOgub
	 55Exq43c4BOYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A0CC0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173809775361.22679.1594235319989444447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ec0a8ab57dc249aba5251afadab1071935ab0f6c1a7c8c7aee938bab230cc77
Date: Tue, 28 Jan 2025 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738097753
