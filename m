Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E434253958
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767047034; cv=none; b=WFo5nquiyG2nBlz/ZySNXmXjLscr//SjyCh38UwzMxjMv92m4b7cZvUl0pnUlDIN8YHrVw8S/x9V1IfGs651Cx/i/sXFmxj5Gi0BZLjwUiUCWFuxbfnX9Hw2TvO2RneTKS7yn8NLNKYfbCuJd/DTBCOUadNqHZVVdBRFVF958qU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767047034; c=relaxed/simple;
	bh=4WcA+5c8Bwxh0FE87vel5o0UT+HB7y337SsI3S1PKx4=;
	h=To:Subject:From:Message-Id:Date; b=Ghg+rQ6C8zPzUHvbpSaV9u4YhCb/5Y7QfKq4qyFAJBl5pKSHdFIHMpHLXsZJhdg9kBfXsvjiIGjGSNeVf5J8UCFZeZkMzjMAtH9OkQpz3gYaRNiAbCkNK+rzbZeXIaN1PgzkKDzzuSTOC/OhAnDQyaA6Yvl+UUkSDBsE1IPr1oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YhSTsjc1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YhSTsjc1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F69C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767047033;
	bh=4WcA+5c8Bwxh0FE87vel5o0UT+HB7y337SsI3S1PKx4=;
	h=To:Subject:From:Date:From;
	b=YhSTsjc1VnThZn1CkeqkblCqHVKQ5ZI6NsOMBsp51m7l7XZe+eACX8HcOaTzwgJwN
	 V8F6UaBu8+nwpJyh28PbA03/rSPszh41kBB7HsZSjPFqTeiH0pLnWqVXSScsyAgSvT
	 lfjeWdRzygib4wmrBks4HdJO7+f9WKlreAtU2NU4JR+56RA/hIcInMSPlAijRk0ct7
	 a5E2wQmDLPAPnnvwBZFadW8w/itaBMpc9yq4Qs854Uuj4xBfRJ5Th9XIbNJtTAYTMD
	 f4ex2HBHcscXMqKqK0g4LCMTCWNpY5cDIPZSFm790ZOxKzw5Z6v/naT51pqk3b7n6n
	 WCdlZC14AnUsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BD7E92FE3
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176704703358.13508.13261314085082429468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63b0718150158a10a2cea82d8d7fa3e4910a97fd180610c85d387a1efb3c9444
Date: Mon, 29 Dec 2025 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767047033
