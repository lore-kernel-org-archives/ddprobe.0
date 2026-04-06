Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2219A245012
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 07:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775460334; cv=none; b=mAvDnAOLjabwdJ33Ksp9v0U+ycoAYEM7CJvZLM/knrZiRtD8NKu7/oQ/vS++ToCmHSyCqXxvyyiGUT8tE/ZZ3vJo5vKXHVYv511bzsbcPP4O6MAV9o/CP6iuEpbOEyNQ9WyQ3Yqi3DXS9/OOvm74gYpmWN1JKKMlQ9sYHx2VeMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775460334; c=relaxed/simple;
	bh=gQV73wmsN3seijC38vZ9eVXFNl+yyWBExDXHecPbA44=;
	h=To:Subject:From:Message-Id:Date; b=iZ5kaeGNLEPEwMcS4indgjDBYI0JFUQ3yEoUs+1Fs+fx2/AWp7TcwHpdduHNEfQKQ592wlz0yBKYmp3cRJZJhZ36EPWIoFaktMn48Cv/07ODxuyRG9A4SjfzM42zSwwN73ZXJfrypP5FV/JaTdI/YrHbxQXsDrbpa5xILNC/n6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IyfDDEbv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IyfDDEbv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C567EC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 07:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775460333;
	bh=gQV73wmsN3seijC38vZ9eVXFNl+yyWBExDXHecPbA44=;
	h=To:Subject:From:Date:From;
	b=IyfDDEbvGw1UCIQVL8Ok3/sYjuRQEQydOX90DOGffBfcoMw7Tcwy1jHAk+N2Lw5NL
	 ylfod+p1p6BkGOGT0GXeENEf/h7KMMqLPBUKUZcxG3Kvb2wRgcybil+6a0gpybS/nu
	 jUZwOsBFSQgH8IMj3gqaKYZVtGwovp3PJFbVWIQCOnFFtocnOgkhxhXxHlFxFeSiK5
	 mJYDbJH6nFNXtZBJAsQO3DHuC7MqBWvDbeG26tYiOj++QnryZZdRdvErer24lFhZ6O
	 n7KpLveqQP1wZgE7Rr3QnWsXclwPSM/igtSVWqr8qaWliE20nRGFJQYgi89Z/TiocO
	 5Emcq5SG+O52Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2808EF4EBE
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 07:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177546033369.26498.979276206213407200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ad06128e1bd5a6ec7c02a5020e5e790e7ebc10bf2872fa4afc7dd10801f59f1
Date: Mon, 06 Apr 2026 07:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775460333
