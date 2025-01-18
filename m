Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 559701632E6
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737237354; cv=none; b=hvZ7xoMlmzU+sIGo7Zgwc319E7L476Fma/RqwAP/wo/mCHAxN1K+uDey4kp10CB5sAO8zlMgovy8fy3CHC/x2YB5mV6ARtZf7gDczNbG/SPMe4hFyChN9VX8YLUQzN5kDgV66U4KvKN2KcCCibAJRNfEea5fSxMiV8CRB9AU1oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737237354; c=relaxed/simple;
	bh=lcwOPbM1nHb3AdhmX8rI8q7bnE0PutzYZsQNIj4YNLI=;
	h=To:Subject:From:Message-Id:Date; b=W/7X/exPy3idsBDrPcrLrQDlsKySQxnVisTcuh+S+n17ReS3Lvt8A7xVwAuG4HH940qNTqWg2OgJATDJepqcUXA8OiPf6RMAwRib43G+RBKh+o0uY/aucEjZbg2P9rN0V/6s01CVaIhn8LdKWrp1ayvvhiBvYQov4YubbyidIN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VKuAHINZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VKuAHINZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5BECC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737237353;
	bh=lcwOPbM1nHb3AdhmX8rI8q7bnE0PutzYZsQNIj4YNLI=;
	h=To:Subject:From:Date:From;
	b=VKuAHINZSVrInOammovWrECxw6GlQrIkaWum22Wv7VaMQldAR6Opj4MlbW5OMlSQE
	 8rs62+HvgLm2rR6LLFiDvOxyiqO/y8MH5Byr5fE99edexJqZVCGtuqhLk+ZzOZSQNN
	 apAueGNcp4R4SuAU/fJkjHfMEbRezZU/fgNr0GlR6u42BtoqWWt4W29fBbLAV9A5gu
	 RF98eKUd/oPVaAm5gtcE75S0Y6ckR//GJADx/KWRDVR13DiZHlpHcX5F13ZQrDT6zn
	 +DKSZfRnzi9OfrModpnmEqjLCc7W1jpOf5ACTxd6i1PpcN+NxW+25PIQNF1FMJZj6i
	 uCwPuImbkfo8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A02E1C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173723735364.29223.9029245395468007770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88929282f4ba3838b02f47ab40ad940ceeaa72d8bdb55a442e58e11e58a2a769
Date: Sat, 18 Jan 2025 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737237353
