Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E92443FC2
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 23:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710632297; cv=none; b=K+hz3qEK4cmADsJdY4zERfyW6TC02L94c+upgHE+LDJ/H0sWugEMyRIq4rsnnkC+0drYeGbvzKMPmOept2oYuiFafjUxpusqsunvRYc3AeHSY2jA/iLOyAzzOWd1JCZaOJXiw+2wa7w69yzvFzyoiL7yOyIly6wRlQT8Dmyzs8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710632297; c=relaxed/simple;
	bh=q2e1zE7RVOEAjHAhtSAMNCSRcT0q30BbSbtIxrM6nNs=;
	h=To:Subject:From:Message-Id:Date; b=HqZuhr4hHaPdL9t5egPepoeVxWH3ySijbjY4+7q8QmKjOIEGTHRfhc33Vm01C2ZGYoc3+AYYedpfX6S0JdOGee8dL7f+AvT5gRxlbiicCJ3GQDVgodALeU9+PRYCsO9ja1fFALMxqtI6JGSTP2+bvp/CH0OK8JU3nQbxFF50l00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m1Std9P1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m1Std9P1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7209EC433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 23:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710632296;
	bh=q2e1zE7RVOEAjHAhtSAMNCSRcT0q30BbSbtIxrM6nNs=;
	h=To:Subject:From:Date:From;
	b=m1Std9P1D2wsFm7/aocowMnjd3Wf8W2LGGDjKo2vzbVWVakr06DnhXcX5Js8w9l2r
	 kcLfLg2aXhK6/fnyrdtgAOc5BxlTt86JRJF8kHg4wL/ImjkhjzQQh3sKKnKXI66nrk
	 G1xqgzYKdd786bR4NMNs76jIRKr+5hnHDj8x388X0tuqc2brZUYfH1DLfy0hoIiVMI
	 rwquxuRofDdOu+HT6OEa22hEzjCSOQ5AGEp5XuRc9LKv2jfGrr1Zy0Atxs+nSj+PHS
	 Coax1MhF0k4TxwqcIgNbbzBo+7ddsaAprKMeNPhBLBab12Cz9xVCGalRqnLaIPvVCn
	 M174m1wwOyu1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 604F4C54E60
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 23:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171063229637.20200.2651544361575494613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffd80e82442648cb3524ba3aee9452bae91b45c0fceaada69a7fd0090c9258fa
Date: Sat, 16 Mar 2024 23:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710632296
