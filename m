Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0580714288
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 18:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710700697; cv=none; b=gjmbKYmGUVBp27NKw5E5VpUNzXACA+SxG/Pum1tuPJSpLLxioakUliLOMcxNKzFtROr2uDQb0DV8omJYcUqhZ2wf4QYov9AIP5VXa6xDPd6+S/GdEAVJqsG5ZGtI/VK6rkhZ552Bh1aQEV398cNAjMwy5tlg3SSA7fxd8Br/NOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710700697; c=relaxed/simple;
	bh=jJThJY+QrjdMstLv5LMR7orMq7w6oNWcPCIAPU4UpZo=;
	h=To:Subject:From:Message-Id:Date; b=pRt0ZpdozqsRpsXxol5vFsMitAQy1qEjJAP60ojGYMQXc1Ao8fKslfnc4GGR+nk8lMWnKM/ACUQkEDmjc9kYIkWBogoOHlTBxy8bjnWQq3Krj+RLz+XjkemYjTGR8Y9uEvDd6N6NxjYGt2RN8bvjjsep+eTbNg1cMQ/tXDAZYTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e+03PEt+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e+03PEt+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 711CBC433F1
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 18:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710700696;
	bh=jJThJY+QrjdMstLv5LMR7orMq7w6oNWcPCIAPU4UpZo=;
	h=To:Subject:From:Date:From;
	b=e+03PEt+eWhW/5c/KAiLzm48IcsaM7P7p5uZbvCUGN7TgALz/JMlIPrusSVq65dHj
	 fNuaNws5ZHb4gDbjQS89ICtrugAJAhcmNp1UIwSCnB228/PdzgPjg4hYypE53THf/b
	 WiXDF6+oiHyNbtp07RcW5j8lDK3Vvt19or8Ng36G9/TCBEpGeArB6uXJXikpO+WZNC
	 IFJOrFqs7jW+Wx/x9BVJTUSTZ118YVcpYOsYZ6oHgY+UDHmq6ryMgLacXzoqgu5e1k
	 cYbuFBXF19ojjRnzSeajaFe990fIpxJuvyXGok5QqRp+WydRiYzcIcHNduwkzKNsvS
	 VUM/6vIZ+njNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6365AC54E60
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 18:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171070069637.9870.7371612108181427967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e0088e3687196f724c8885140396548b9bd818753cfa964be9bb418ac8469b3
Date: Sun, 17 Mar 2024 18:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710700696
