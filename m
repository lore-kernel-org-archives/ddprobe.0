Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EFEA1A83FB
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746220194; cv=none; b=tuTIKl7HYcsGadvUhOfNCH0/NdwKtt49HkJEvS9qTQr/Zp8f1mRdsvHzyxT/OusTWb1FvWuFarh5HEtSmrGhOOkJzCus0GCYSZHykUMG3kDfCXtdrIfGrbkgJIU5UfdbTaQbn+pXviHtd0GEixmTp6J6dEKot5M/3zRF7SlqAgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746220194; c=relaxed/simple;
	bh=5TIcrVoDFK26ElYThjeU2Dff9azU3Gb4hywdvlA9p8s=;
	h=To:Subject:From:Message-Id:Date; b=B1BQNcRiEwR4driYH7rdi6NCJBIEJ4cYrTSluMxpf2QYgHVuI0qtO0N28DBFgbtY/fsDVsimM1kO1KNHGJnXNsYYSx22GOCPmwnZWd6L3R4+/y6eVlwWO28zfl3jkkIrkW1HnFir3Fa2zHISSn4QtM7EyXv1BkeM6/l0qlWu/U4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JKo/QrcT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JKo/QrcT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AFBC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746220193;
	bh=5TIcrVoDFK26ElYThjeU2Dff9azU3Gb4hywdvlA9p8s=;
	h=To:Subject:From:Date:From;
	b=JKo/QrcTJypMFx2StwPtvtoNNWlIbxZfTWmeFDurMmEFtPZXgTcdCTlRou/6PLt7a
	 h9gEenrH4EfzQcAOEgQ4oE8HHVale6D7ERHJoaIO197H0imJXJElYtwCAxvYKalgVV
	 UmnoclfTPR5yiBf09YO/UT335ooMZ/xlZ6FXEWQM5bM/jIBLOypqVp563Y+EUqxTb8
	 WEKSfOqh8KIfWOTsK0y7lNcuaVjTAlbbEj6GpbQ6ZooQpE8jyFE0tGfdahcL5KRK2m
	 I974UOqb+Y4SXb0dFuFexKV2cx4Wxa0Xzw6pA4dEcLbr8hf3Hd9lHU9Q37XMm6jUnv
	 Mj8u+JPb5hOKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917BFC3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174622019357.2770.1173781693259671689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d7836f4795bedf867c093caa67f9ee97bd287e69fa39ece96b3343c38b4a56b
Date: Fri, 02 May 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746220193
