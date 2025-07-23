Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3677182C60
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753299594; cv=none; b=ORmtE8HEP2fsXOrvVRevlYoedvneBlJ79ztantGd4bNJHOzWAVbjGfMhFZssZALkS/IpjGObYvGhL4LkdIgleQJ0Dq5Wfa45QxVY/mR9t/iu0c2gKdh1Ws6HenIX/dFXWHg+g47pTyqDTfw60G/vCy7ms5WO/umM1Q9XxGkC7/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753299594; c=relaxed/simple;
	bh=yFSu7sGy/8v6y7TtZbMpVMgfbKHq2UYmxRStfabxnsA=;
	h=To:Subject:From:Message-Id:Date; b=jXrFKPOuAgXCNYmnOT17Vv3E443o+JapMJh0VZUyhD02U1MB94hZdrGbJM0aj6cIKW2y6j8HuPA7a7lcSQuTqt0hyHk1kks7wpKu65e6wUwryGPsKRbWy5r78NkyigwobIHv2lwln8UIuPROHvAPUY7kgnnDVQX7OqZ3oISBe5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ch5Rp1P/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ch5Rp1P/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE4FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753299593;
	bh=yFSu7sGy/8v6y7TtZbMpVMgfbKHq2UYmxRStfabxnsA=;
	h=To:Subject:From:Date:From;
	b=Ch5Rp1P/uEn3TOZTVIakz8exkSW829QsJEyCEtdXOfcox2ojHjIeBlbzc0Xom6H+E
	 H/LMz+TzIpqSyQXocaPtQuDBB97oGGzvkTrPyUyD6vTpRX4ZDfX6LPKDcTj3a9xttb
	 0gRYXjTNqJeE2c+3Dcasy9EfhGywfPmdLSzRRIEr4AnnG+OK76+8nJGoyk/ZjOTUsw
	 I6ronq7vjnlqaFNI9JLCSntLqpSpqTQy8SZSxlbnC2Un23jR7dwDXTOjS1gMlCFgE0
	 NGDvdaNVhYgGDWW4BvDBvbYi3ryuj4EHFRlPdiLbLwKLKpsuI2laPlKVaQsIZzBp9F
	 4uwgtCWHRAU/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4EDC83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175329959357.6925.11472464777335393149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d471815b4ffb945f555fb8c71e1a81be232d59436034a8d4b41b1d0a9efe2a5
Date: Wed, 23 Jul 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753299593
