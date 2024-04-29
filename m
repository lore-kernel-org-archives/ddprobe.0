Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B38B17C7B
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 09:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714381943; cv=none; b=YWWk55epv4SHvKxgnib/8Vizalhk6xd5RIagG1aKWABxBtwXRtLvhXHX1YLb9Qn4buCG1oFET1McshxSWEHaqUT4nCIg9PElcXpMz4e+A/ZBCsxZz1IzBk7EvGDTQb+zoW5xNx+F1In9IBFe0DAiiE9dt1sw3RJzcMUAj7AjrV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714381943; c=relaxed/simple;
	bh=4CVXfqG4J/RKULMRgt20jynPSU2a/JQr/fszbrLOqwc=;
	h=To:Subject:From:Message-Id:Date; b=JyJSBgJfE/IyWyjMaKSDm4FXE1p2h2Iae1gZ68818MgpCX2wc3jfcfGEqXxTpmjHgA2pbB6ZYt0uSS+pSSQtaJ+m4PfWElRT/neZBsm9jtla6Vd25JnO5gaBiB6eKiKomi1ykit8Ajy9ss3C+usP4yGPnUQ6pwBwDMvwSmFi0YQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rzznZ5HA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rzznZ5HA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDCFDC113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 09:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714381942;
	bh=4CVXfqG4J/RKULMRgt20jynPSU2a/JQr/fszbrLOqwc=;
	h=To:Subject:From:Date:From;
	b=rzznZ5HA0eyGuqYCbMaTG7ZTkmpgmyLMars1h5A3suKS1DP4QGkdHRrrtxK8Ci5Sq
	 roOW1vs+85x57vLVr9agEqqwaWepopSZFDKDtEyle/fVbesggq0NRP0p7I1nFSQjuY
	 d2jghoPCpocMEOMs0HrHWisOyzVHT9wb27TmVwXGkBxRjaCIb8zs8Qwb1idLn2X0OD
	 SfVdLX7/l1BQ2ER0RokrQefX2jv740NqfExhm/ElMMDs0v1TNfGwM+a0yVBTr4RbF8
	 3SZTAqn3Xn2epUA+YHL7HtwTjNHpmMNKwrYKMxQ/bG5ALV74lXfR0vsProRg/d2e1e
	 7h74s9Zq/qnAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB810C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 09:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171438194275.19842.11812112264456539630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a9dc27767541aad4f338ecfd1069879c0fdf4ec925d3f42ac58d58dd59de0d3
Date: Mon, 29 Apr 2024 09:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714381942
