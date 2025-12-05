Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F16BF18DB1E
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 03:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764906174; cv=none; b=KuL+y9Iaw6jCmqYCqnTnhq1nwj9AMVrrZ8xgPdY3CGRLQIT4UzRjnaQpoMxNAPi6P0LdcJTxXiN1spA6TeAniMc+VXFlnoCk9K3E/9EleTatdzWHOmsaYojxahccVI9okOR0ZWBQduUrcKuQvn1eYPkvClQO7jEuybs+tz1vwac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764906174; c=relaxed/simple;
	bh=raRbb13ZkJ7KBMqoE2np5oCesRDnls10CrPOxWLRElc=;
	h=To:Subject:From:Message-Id:Date; b=DZkw9OB6/8I9Ku+wiwjy+X+PV8Rg05UlUvgcPnnWnCAL1RcdnywsuBQjYXufLw03CcWgELapr9/0skvo/UwMmRKYJNf3NLD9m4mbaUYQ7UXhvRVv00cY/gq2/GA+SWXbJ7vGaY/v0j9Kf8JCyhjmEQxtepMcRP8WvWEAcQVgG9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uMPgR09m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uMPgR09m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38C9C4CEFB
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 03:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764906173;
	bh=raRbb13ZkJ7KBMqoE2np5oCesRDnls10CrPOxWLRElc=;
	h=To:Subject:From:Date:From;
	b=uMPgR09mPHHr++WsDsHl70vvVr+MAwP6wHC4N+OFt3ehWgm8dPmJcLclK+lNkJaZV
	 niyEBjq8eL/+dZBdZdTMQTxfX8OK8SZJw3MdVt7TCkgMLG1Tapl9yNdXkcovf+l8l3
	 5mvFVIT3+sPh7M3H/EJKduhjbztcFgtSYr+0Bb255HGba9YCOsUjzqV9nzjDWV/6HC
	 UDv87X8oB4b394STN5W+j5F5wcru5Mvm/DEsDIlVjgmQaOlJOavnmNahFyKVXvnYuM
	 vFRtfUSUT7k4C6qRUAynsROb4v3PAfh1fhvSPas1Qcqov0FgDm874x4pa9kfVTHfc5
	 yl3aahZoSm4Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDB0D2CE1B
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 03:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176490617358.29080.17631311010018450489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 705f52fa4e5ffc78837311d4fc88feae720dc3327103b97081c147d97dee07ea
Date: Fri, 05 Dec 2025 03:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764906173
