Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA65A4398F5
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 12:10:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789906237; cv=none; b=koguDvVzJPbCHd14HVa8aukZNYU1bnVk+AccV7U2OrBXffn2eim6IjIDKEIk5Wso9CpXl3Kjy9dQMa88EMD0i1cifISgvD/HEp3UVweDxOOigQagAQ/e6oSlwUXX8mJOdJJ2Jb7v31fB1+NLZVt0MGGuJd1khnubl4slM5IYB+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789906237; c=relaxed/simple;
	bh=LPDoAEBeDnywekJLDXWuLwTd3Y5ToWOAkl5cMjb7/1U=;
	h=To:Subject:From:Message-Id:Date; b=oPQ/5BmL++QdyyRDwwRUydQmFP2/seJohjsXSf+8idF1E979vpVdgDIQczfAgR01upgl4Z/Gd8JNdc797Iaue1g4KeoViJLfCFf2Wlgfmzn3rCmQDB09Ip8xFWb7bOzkUzw0zuQ9XL/L2xnKy6JQI0XXUW0Dl2YBEQErdMuak+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jd8/CAkq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jd8/CAkq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D28C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789906233;
	bh=LPDoAEBeDnywekJLDXWuLwTd3Y5ToWOAkl5cMjb7/1U=;
	h=To:Subject:From:Date:From;
	b=Jd8/CAkq7N1nFfOnkdUXfY5iv0ULnJSatoVKdBxGRF9V5YWNp87WI+5AWMkDux7nK
	 ralQyJofCIimD3rvjV3sO6vPbdbIUUUBTr5EvhrVbacnAhgty0nAQX4NLyr4ZnaQ1Q
	 n+JhXD25XyaEPr4YRVFI6fC11dt5HJp5vxUsfqydDp5k7KvlIXi+wdvQTQGAsHG5u9
	 sy+puQzahouFdLAnkN+43Fvf9o2wABCnsqnb+mwvbao3ZoBjlXhTUHbjWlpmnIrGnC
	 r2u3+79EVs8HnpPAfGmEjfK7EkGatMgh76biFBTJMwDmhqlXxodOSCIAcjMpgu+5yR
	 WfSUqp3zdKYYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4B3C982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178990623368.32181.14645567873921443679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a045b5d672a5b55934b8768246e43388da331f23e61f8698a464107f3878e067
Date: Sun, 20 Sep 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789906233
