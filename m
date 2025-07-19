Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 815FCDDC1
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752930596; cv=none; b=A/A96YAlIEq6sRP12tldOwaILEgAdllbVYzXqPnaHs/C7hXKhgldydsau23DPaMrJ8LjlV71pIfqhqfIigFmX5wxWEPBZJBP2izOYQ+pPhKQsdd3BBz3/rnLFWeIOe9XWpXEElSNJt9T/FJhCL2izyh1kkfa0io2TH1E58tHOi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752930596; c=relaxed/simple;
	bh=4hrVny2OUIvc1FZioKXe3hhbet8UEH4uNKifguMwdmA=;
	h=To:Subject:From:Message-Id:Date; b=Cu7Waxl6+7I2hTMpEeRCCy+3zOcExFubzVgAdFkS7A5PUWwExPJI6ET3fIgQoTSuuTUwcsyeu4jKCqTLgeiY7p9bsBuwgl6E1lDViNIkNS8VMqEMMZ6gNjLGYluJXyhSeEfmYM4FTWCRT4utxhU6igGInUJq90GrLoHp0744Sac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bVmHP7Dg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bVmHP7Dg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CABC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752930593;
	bh=4hrVny2OUIvc1FZioKXe3hhbet8UEH4uNKifguMwdmA=;
	h=To:Subject:From:Date:From;
	b=bVmHP7DgkeCPE4+xNMPFabFHvS7g0fhbRdituynckKoSSjD99+3k3grIuG1/t9Q6u
	 +IuJZCpu41cEY8N6x65lJ3GeUeR20EMUPpqrpcwHR8UBj3938S3F1fOy8Gckc7jYS8
	 nzcUTtohG9/Nw/QquHtTX57EH9NXO9m7L3CJ0cStcfnm4/RaDlWqTtLB+mb0gg/1oR
	 7Qlhr0mZ7o49F4xWE1h6p17QZjITAdbWgcagA8GWfXpDJXHJvrsgk2Ly6bgwV4QoQu
	 SteA9KxKZ/tEkRz/N3VfbqDVjVSRyNSSJhKnTmsw8SlxmvLjVYrDGY9zm47kFi4RP4
	 ZudKZwpAmQoow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBC0C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175293059357.3674.7453662802505199138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdff33ca9150bb21e3493236a2611902f92d4a1c18e99429e2d4c28f85ed1960
Date: Sat, 19 Jul 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752930593
