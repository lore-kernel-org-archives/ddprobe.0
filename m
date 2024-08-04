Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAE779C2
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722792954; cv=none; b=lm957REjwrlvY51/Yub6JwUz69zZrcQxxYF0lOMTny5GNylDeq6pNNxuls1RAGNKvyXzLKOqu+qPCzWn7KddzEVqxkGyKVq92qOGvZkDZfSs8bMnvxccAgsgc7/eFLxnPuqrrZJHDZyVqidIO9QhVs6KNR9M/Jss9Cq7NfjN4EE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722792954; c=relaxed/simple;
	bh=Ul1CgHeYmdTbm72Qa0JCLyKXAbNhXNURGUSQg3Tavic=;
	h=To:Subject:From:Message-Id:Date; b=CKgxwXA36xiA98Ii2mODSY+yryMpcr0sB/1loegU4eSHnHYRCA/UX6Y7V/TBHcOKKaI21sSWRfqfhjhUajB3KeMSW8gFs2QZTJSqjp54XG1clNjuFM1N8gM+LgIDSC24N5s5sNbZ77PUD2ldmkD2PajA4YWT6O/xv8czqp1C1QY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VBHipoRA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VBHipoRA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE4F9C32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722792953;
	bh=Ul1CgHeYmdTbm72Qa0JCLyKXAbNhXNURGUSQg3Tavic=;
	h=To:Subject:From:Date:From;
	b=VBHipoRAaA0o8WhzI1ghnvahHfRUEEmLJU+8xma6kTdVbAKyVtuk0MBS9M3Ph6qGc
	 0ZRqsddgK5EyIOozN9XJAXrithIaZ4xG5lC2jfj2clWZsnsQ6tG67EtHh7NZTbVyAv
	 Xo5ePDzvHl2Kc/PJ1DzshKJk3jpaM2wUy/p9MxwZxiAdC+JMVJggHWx6NNDMpcNeFs
	 RF+tLsQzqDNZLp2lBZW/p/FSIgfiHxp0Y0v3LvSi44mPsUG/+6F6jV923uceKDXCeL
	 UjPn3ARZbCK1T7QemUBuXI7xbeOCTeUC/INh7/XCtZ4HKNBlzBlOYhFQ5WrReIevQg
	 SYS1IBNLLGpqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F6F8C3DA64
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172279295363.22209.14008109894977347154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fa80d3725851e304488e99d2b0855a670867666183f7a6f1c7472003eee384d
Date: Sun, 04 Aug 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722792953
