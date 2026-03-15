Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2504618D658
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773588894; cv=none; b=CENA+GYVG4sYk3gh6OzOq3bhSMY/XaKiq/JQ3F3raPE78z1PRIriA+fkJcYA9LPTJ3siTGXGDFezsZwYkP+hF7tS6yyWgtmrN++AiT8Uly8mDulY3eNsZ9RxmzAmoed/9BCysJM+3N1uCUS4Kta5NIGxEP0mmmMJODxOIq66ToE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773588894; c=relaxed/simple;
	bh=U+mfWn1s1T1f0UDxIkoOVnhZmP47dRm8qyeIa7sHwA8=;
	h=To:Subject:From:Message-Id:Date; b=NCfMw8dMdm8uMqr2bOb9fsa0VTjs0u+vlhRTT1Y9SPncBe6XSU242zch9hGCGEVVNIfbwSZv99WaRKmVcMSACwTK3HxTegvxI5VhDa4SSWoy7Kn4pOcq7EHgkRyr7hywCs8QE3qxUN+Rv9PjwubX97cgHrPjyHWh3QQI2QKhg6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ksKrLV3k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ksKrLV3k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE548C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773588893;
	bh=U+mfWn1s1T1f0UDxIkoOVnhZmP47dRm8qyeIa7sHwA8=;
	h=To:Subject:From:Date:From;
	b=ksKrLV3kTXlqZzNOOHAfpiqcvya/Mpxr/cAZspx3VRdShV61E5U/fjEf7wYlWgvT/
	 2sX8nZeHUsbQdUtzSs2Qe8/bk+R1utahDTjGAKG5xZFuTgKXpb8E1/5wgZCj3qWPJY
	 fAR5gnxNhnVgKcAdi4/CaMRBKlRlmiCgP0r0ApNruaa8tqnzsV0SMSuFQQuCZDij1N
	 q1vgLL+sOPdhlI1ZygV756t7BLUCjq3XPcvDNroq+HbIe9MRCqaHDVm4jCZxdsFEuS
	 jVZ5M1+MqSnlJhGs6Ysa0d4ROc7Of+1o+lGwhMn8nUkFRLq1ozcxDMx7wjOMAChXNA
	 RAr6L5GaJFDyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9799DF3026E
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177358889359.12442.14051922282501578383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13b91c59f33d813e11b5f8aaa33c4b1a2115f5b35f7949343c68ff933331908a
Date: Sun, 15 Mar 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773588893
