Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 769A4208CB
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 22:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717973843; cv=none; b=DUUQXXnEA1DcYU/QkFLmsNIoc92CwEiQxaXfym9YwrCxmPCdst/y0jFGVC3QTgw1yYgAnUFgHmwdfk34OC27IhKTdH10qs4yBTRTBJpazmgM1FGXpD30G9q8Vhu7pHLtZBoRhmMWtlUet8+Qeuam8+xcIrDG3A2nWCSx0OAnt/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717973843; c=relaxed/simple;
	bh=s2gpXiXc94bCZfZc7HBEgAs7EccP8baQAAvdNG2GiWM=;
	h=To:Subject:From:Message-Id:Date; b=tdQYa8Zjoa+8ODJBhzQKpRsVDUUcjH6kLEpahbOe5KUMV/v1WLhG9R+IlSAjDggFU8Sxxvdq32jyP4Rm0T9D3rGEg0Jtyur8VDrU15deW/UIhNWWiinzErG5eeCTHHKuYrQLGBdXRZd6JbpM1g1RSmxKC0fPn/0hoD6NWNMhNu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bdaOmlRC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bdaOmlRC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E81FBC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 22:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717973842;
	bh=s2gpXiXc94bCZfZc7HBEgAs7EccP8baQAAvdNG2GiWM=;
	h=To:Subject:From:Date:From;
	b=bdaOmlRCO/16HW/loWFlqITZBHZEZymMGo43z3lFR9HfQtv81BMQWchxIyznhVj84
	 JhqF5Njyh6p3bFXVDPRAkIsCQEEShiPW6EIn9E1AZcRNEexBz/oixeP8uPe7T6IVV4
	 Y4+azqW7AqGYh4OYiCYNO2zvRpoCwp502f3t1yLrgGF0m5j4XL00O3ryehic+t4JQm
	 eimpQJDo42xfR0VNWj0PRVh2oJe7AhP6Kow6a8MEvtP0dA9mbDOSSgmWvvH5kpyLjF
	 Kpq7wdsKMCcdu5kvpejo9Zd9FQ91DHJaPuIQmcZ1VcRjc/iC3R6bcJPCuHPA9Cpbg/
	 KK6xetkkjfdvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5018C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 22:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171797384283.27108.10191040725815319578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b942651503d106e69616d34b9df3baceff6a26a7df6e5b217fbdd669aa81c6d0
Date: Sun, 09 Jun 2024 22:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717973842
