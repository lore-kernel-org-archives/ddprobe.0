Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402E14EE846
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791563434; cv=none; b=sp1/mXmW5cOXxepDmmX0zslaRyDT+0W1iUcPqjMUvBfkHMTkUzcp/rxX3kgPM58VzcIxpUDH4wQX0oacjoLRs/7ShA5im2JrVdc7wledCwbZ1jqMF+j2VZOgahO20ar0i6nCp+rmnbBkrYO1X3swPfZVQKje6j09HbYjDXxe/z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791563434; c=relaxed/simple;
	bh=vswDghfj6WzLSb5t5wxKGSPU8LaURqT84RQGwSqEVkc=;
	h=To:Subject:From:Message-Id:Date; b=YozpnW+T99GQHFJDwMOsO6SFwxHnE8RwHslD9II4diC5a9Q2N+b0BeQR/eW6BRZqR0tTrVce8xHmirNt1lag791raJtc/bQ9yLa8NucdVKqD8iAup6WWh5K/7Hpu41o7hv4Ppxnz0KG2GyzHS28ZASyQNY0nsk+Rlg0HzFk8490=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oul/JOHV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oul/JOHV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD82C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791563433;
	bh=vswDghfj6WzLSb5t5wxKGSPU8LaURqT84RQGwSqEVkc=;
	h=To:Subject:From:Date:From;
	b=oul/JOHVlMBgsUxusN9tmBMdfsgzKJoOd/aa72ZE21uC7lyYvqpATMZpgoVT800SV
	 vCrFh91ixNaOIiRy1spGaVHVMv16EbRVasBHJ1JmWq8Kbi5FO2s3LhR+YtJHGQK+7T
	 goxT3QWi8tGKMFeQH2pT/3T4P5MeLtiDeupwiUQiypetTd8tKqu0jJg14bNxdTnAmS
	 tznxgsCt9hAqxUbog1ltMLBmz/TwIyL4cee6qwdz3QmhRgcaNTYynbfyBmEj36+Pcu
	 JBDjVA6AlVi0J14YMC+gqOVYApRgqWExg2Ro0PJX4opQ3dV6aSa/QiyY9QODbWhxFq
	 SoROJWzVF0LAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8A3CA601D
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179156343369.2681.8852304260942391206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d680c8a46b79bae0fa9cb52ad31aff543530166cb1d7e7e32d4f7980624448eb
Date: Fri, 09 Oct 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791563433
