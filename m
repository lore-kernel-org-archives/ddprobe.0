Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F561189F20
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760532594; cv=none; b=VuBqNSA7+FJEj37QshjbBdojMPMmGKXlg02aVWBIbJ5ueSDe1u0Gq87BSs2HCoCN6c9D8n0CUpBglR8YbPIPaWq4TZM1NTszoWkb/0R55wZ1dZV3MSr8MYOzZoXTVreIdepmt21m5IcyLj0TnPq9QmVdKmh7sjJ0jbC+0s7y8WE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760532594; c=relaxed/simple;
	bh=u4+coBPXotaMzpj+b+ptxCD40HykcdCjaTZ83t7U6MQ=;
	h=To:Subject:From:Message-Id:Date; b=Eu+uESeafi7FA4Shafi7l0X3M08mZRV3x60QusYMOhgV4wicniLlPdRIBNzo5nVqHj9hYlWmNSQt9Eb7YvXNkxPpRo90UDy/mDwTFWX7iCRA9NhzwHQfzwMFhvVgdiCxcT264tQ1KeZfw63yU7yMkV+y+0UHA7pgX7VEFsiyJ6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SliKNVg2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SliKNVg2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14C2C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760532593;
	bh=u4+coBPXotaMzpj+b+ptxCD40HykcdCjaTZ83t7U6MQ=;
	h=To:Subject:From:Date:From;
	b=SliKNVg2MMwGxd0JgePgyrSZE0X4sChBJfezzXN6tYW/gf2vOlHy5kdz9Ayzoh9I5
	 xOyEJlja1GMQBBdooaeImh+Eeqv1fFlWs/dX1y4fQiaK3NPhRJMd8KpNIWnkb6uHGP
	 cqVBV6ofeWfcoxjg4lkgcUyDbBnBDlQ3Gvn9PrLuk3COIvv/AfW/EkxOUTgrNW71sS
	 R9SXLp53lUipX8Darip5o4FTOSPxFCvXwBpUxsYg9/FCViDCiPPEfNlJUL0Tzkvml+
	 EVK8Y4Fcyr9NdKKjxbea9zzY/R15xCA0sC5YksDLK5rgx7In+xnc9S8r4bnnlqzybB
	 WUd27FEwgI7Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9224FCCD192
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176053259358.26597.13738213067474129144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2696b81f8349d39a8b4d0895253e453b531a5e0f1f19c84f4f621cf107a2717
Date: Wed, 15 Oct 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760532593
