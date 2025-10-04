Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3746A48CFC
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759613994; cv=none; b=T/xvJiLT5e1mnR0Thu9vRmJefyMy5grlkNvxVRl9btH5Fpg8gkN0nI5mpxO/1yE7XURQON9QiKgvWWSMMZqdpPpcSz1VQhbASZHIIAwD3gq8Yfcj9s8Dt+Ra6Qs/UiVFFQbJSV7GMC1zrRkLuQ+THo87Ff9xb0XdXxMX39yeUVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759613994; c=relaxed/simple;
	bh=z+QZqHUOpnRa2M9XOUyCK/+TGtt4+MHbGjtwD50elDs=;
	h=To:Subject:From:Message-Id:Date; b=uaZXNH+ks7QOVw8gKwbccxNvRkULvKCeWIShCg8etP9cjO/K59UsCKh6eVh7GJM2xXywK+OQ2ANrQJVUlq2o3JOvUY8+gSSmkADMEqH1d8t3TWJ+PmgmaKzlpQYvB5pv/5rcBc82YngtC9hw2/6GNeav+IIqcXh/y8YPbO0FyxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KmbT2uR4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KmbT2uR4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A616DC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759613993;
	bh=z+QZqHUOpnRa2M9XOUyCK/+TGtt4+MHbGjtwD50elDs=;
	h=To:Subject:From:Date:From;
	b=KmbT2uR4PCPLShb8/qT43mxN3cWVHtuW7bGGQorN4RN2Loaucm2kCGL/2qEcFeHUT
	 8kiD4er11zyA3qnefac4b4Hi2WekZ3onVxSxq3+gUVdPFCcH/B3O9E/fb//Vrdf/Nb
	 fmDWgl4hWuqnah+HucxMPECMJ4DG10GxdGQhmo7gDhed1eK+EzRBh1nh8lZH9gYMfz
	 pnkrDE8jhR1w/H4e7rb6EFPqlSB2uZztsuTTIrT+F4/oeCjygzVvrLGmvEGoeFNwIK
	 6vfLGygENmbNbBra6I4GVbUScMXymUm1k7PPgMJWiO4VM7ANQFHgqqTiKW62h0U1Lb
	 2dnBw033tlzdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E8DCAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175961399358.25266.10699245111230918548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 281f1c13115384d0ce2dff8a71f0bc2a5591753dc1e16d554d8a86a94c0f9132
Date: Sat, 04 Oct 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759613993
