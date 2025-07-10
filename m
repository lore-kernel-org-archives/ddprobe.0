Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391CB23BCFD
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752149395; cv=none; b=csoG+i6tGVAMw13c8NMrDUn0bANT0NC+aEoEXwVJmQkrY1w901OLYAzACa/CJCNxQrrI0e/4HFB5yft3tbuw9sYFFspeb58EXAJktmgavb3LWuy5aJDRjJRGnG+/4kpq7Q0L+zGLIOre5JbhLzcbXlb0HEyjhKkqrKHwAMRV6/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752149395; c=relaxed/simple;
	bh=SVEejAQA8faMPh/bqIBix+I43fc5uZ2y6HKC2qoMsIk=;
	h=To:Subject:From:Message-Id:Date; b=BJitbrov+dfISJ8yEe3b3PKPiUV/L1wr7NZmcKqm+SK3LAXEpsjdEZ6y1btMB0qQ+vVt4QAZ+9E7Q3CF/dlEWAnbaMue9TIhFYM/Mvp0j5o4AsQIqPPK2OUWfcRRiiEo4nvAQcwj7EUx2hGa+ajViZ0UnBwlDlx6bA86+BexGEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HKnVGKem; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HKnVGKem"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77C7C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752149393;
	bh=SVEejAQA8faMPh/bqIBix+I43fc5uZ2y6HKC2qoMsIk=;
	h=To:Subject:From:Date:From;
	b=HKnVGKem8vmMhUSeMAhq1leJWMQ4M6eb8X/rm/sQ+pIOWPPO4rNkrUC+D83+Tjr3w
	 Kteo5yaSNFVhI0BQjMWQfEYQv/LYFR/fkunOnFl3vmiqjOBJIVz3DThG+Ys69SeIzN
	 MgpurOzGW3IKiSawmrIpywbclA+lBg+wEVJHUOMOMRc/doURpeN7e4H2kJPsqq0okA
	 w/Yp2suMwmDjghl7AhAnDZVsKcnH27Cdmkux5f5j9kqhlfOq1B3FSbYr2AxAqjJHy3
	 OSUssybgONX7ZzzMDy7a1ZzOyMiDQ2Thw8UXOBFKelz8XvkPhsLwakheuid/R7TWE7
	 qZVoIqDHTrfNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904D7C83F1D
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175214939358.10989.1340489457581532813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c095c6f131c60ec843676c9a4871f01c46a96534066162cd0cea31c334bc1091
Date: Thu, 10 Jul 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752149393
