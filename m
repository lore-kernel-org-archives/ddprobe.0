Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4728C2905
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732395354; cv=none; b=BcMIrc32b5GUGIANrHE/ZHbduEHBRqGjtUcDnRS4TtJKaWTP0dwRujkC7t2FVtMw332nVZP+qIcq09RV3NGQaRBci/hxtsPn078KNdI7uX1G8CNcbhVC7UZ1UnK5eCD1P2OCKO/V5IIlKLvRZIB7LQt1TmTIutE3iqZ1afTeSug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732395354; c=relaxed/simple;
	bh=XOu8CaWOYyJMGyMrO7Bh2H6SqEMbOZal60PRzp/3goI=;
	h=To:Subject:From:Message-Id:Date; b=dqfXvrH8I9/vBy7rzl13SqVZXz1Jov5PbCz32PBHeARxcZFtkc5cVrJGp+1I7OsuGTaJ9nLJ4Kash1Z825CWXFJKGO57PHqemu8yWZcWX9vv98G95HV8R0FU27V/H0Uoc7V+dNZFBA7j7TDa831NmeBKrgZT0B1rMxB07P6gOBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4tzzT2U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4tzzT2U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A2CC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732395353;
	bh=XOu8CaWOYyJMGyMrO7Bh2H6SqEMbOZal60PRzp/3goI=;
	h=To:Subject:From:Date:From;
	b=Y4tzzT2UMOtB+8E73r8ADOeBaNRyrabQN56evocEgCLlDIUgdRXjD2kGpWov/DKzl
	 uAWfHBU5z/Rlf9E8LhFghyG9n7tL7mimbxlOZbCO93euk5nqeDGC7TTrBPeZMW2sQS
	 jdjWECcYu8jhp3820evh6zbgmYJcI/bvTxuxpTJp+ByjdizMCOBzsfS6a6/oY/4YwO
	 nDhLAzodhvH/hlaXLBMLG5VlQsE3rYBWAFucBa4CjGmig/bP3uuc/G8JOXwt1cVnbM
	 y22wlEFvYRTZmOI1kMrGQ8WIwNNekROJn+BmPiZZBfTeQHwY/bCp97rCtih164+QMO
	 oQXiySPfWKyvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A054E66885
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173239535359.2822.16320550014155331058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 876151c9ac43333205f8ca45ca2071692fe9298c332f068c8e6cdfb479cdf345
Date: Sat, 23 Nov 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732395353
