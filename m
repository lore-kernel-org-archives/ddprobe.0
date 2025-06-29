Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2258A49625
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751218194; cv=none; b=XMBKiq/sDPAgvxqFuRdNT5rK2l6PUnNrtG3zLudfOQg/JY8ZNsOhlnOZ1yTNkJEUOW3GGjKkYywQrATVcvb4QzivOpmn77C1tQspNWCwe+45aoGuXAFaK6EPvBxV5OG/j5CER/1lt5hckjwjXDcYqOyR+QBuKndH/5WkubS/i+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751218194; c=relaxed/simple;
	bh=3zzQgpqg07IGIy9pluOf7S0xWXpW0dS2iw34UEIaJMo=;
	h=To:Subject:From:Message-Id:Date; b=Ypix03xAmg99sKQrw1/ZPpF07eKj9XEUhGPOi623yI+abDIi+srF2KXJFjNI8430x7Ssy0uo51rMmBj8KSTwEvgoqxPuW2qO2ajjCRlP885fAeXk4Cnzo9mo4JCySGcOFa8A2Lhb63Z2f50t6f8C7lYtOdnosRIb6li72hoN8+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MIZXDcee; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MIZXDcee"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D204C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751218193;
	bh=3zzQgpqg07IGIy9pluOf7S0xWXpW0dS2iw34UEIaJMo=;
	h=To:Subject:From:Date:From;
	b=MIZXDceeogLT8XZRPJrkTwwG7sWldwhb3xBb9iOT2on5YdKCNQzne1UJxPJ5d1wkh
	 3oYfAlDysQn0ZnqeY9U2X+7c4EW5Py54OJFN+swF0fhiHvjfucCkLHffnB4obxBwS8
	 jYTICqwJWt5YrqHfGU0WynN9DH4SJtLgbINMZW8FhxB4dDtvnLAdjtQC/2iFOdH8Uv
	 Pt2+EBIlSGXd6IV1yumrMmO88mVglU8FWEoyeVzREyFRHBcfMnMfnU7BREjTKY+I3T
	 rdgd7bJYbFsVTkVLa4iNIcRabwEwtjFB9M4DT/uGJzDxDGDr54HGqsMcWL05lBzSuJ
	 7cJetbIPavBYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9A7C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175121819357.9490.6011183277584994256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bbd16e5b0aa91ce850e7eb4cc30d9d8361383e68c82e936ffeb3f787721925e
Date: Sun, 29 Jun 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751218193
