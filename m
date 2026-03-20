Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FFC217A305
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773986694; cv=none; b=EBgNySq5oiwqpq54pNRPS7YRkd/+kEFjAoyDQZVEz4y1EWh7AsclPkl7pz4HldVLjnjoy/d9cn9AgPv6IXOP1P8bGxOLz8IkuWmrz8PGgltkewyqda3q0rSU3/EVIizrcAT26CukMou6MUSeB2vaa0CbzW9stxUarDVBWAVRiSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773986694; c=relaxed/simple;
	bh=LtmNPfL01rBxttF/19DdjvjvKKbtLjU8r2Or1iYgDkM=;
	h=To:Subject:From:Message-Id:Date; b=JVVXfJ5ufUeg10ehJ7mhlFmYvR2OKLmFXqFB7W5PjgE8tLp8Zs9FnpPSF3w+bdxAWFDycLz/KvpCYBKKvYCUdDju3xGFXYbN99pX14WQIqtnbHCMwXenVT5GulmzirT1h+dYv1WmbaZVeOI9pQNUrr59/qSihVzL7hirdC21dYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HBh83rG6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HBh83rG6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C07D8C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773986693;
	bh=LtmNPfL01rBxttF/19DdjvjvKKbtLjU8r2Or1iYgDkM=;
	h=To:Subject:From:Date:From;
	b=HBh83rG6dEsIYTAAQXWG4u8taLld9ASCwlW9qBEM10FR08mU6ouIhl38DwcXIJj8A
	 gsH43IWIKtZn6BcQXVYOEFoEKlkrOOmng8/raQznkyTPb8G8PcCoLcJIvLC4npysYK
	 vozNPBZDp59Unde73WmvdRTwPeZ9J1VqLNxNFEngXDWd5QWW/XwWU+OUBKe6gremYB
	 VC3+ElbM2scytk+Q+E7EdbT+IPvxmEdG/ZQ3eoLTIZR+QPhY/1yD0w52iC7H0hjC8B
	 P0plPi+jVA9yFAkj04RNU7DTYAhRlTKqeb/BaxavVue149wrLXO3I05vVLsx3553ln
	 C5BrlskP+Flfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0B711093179
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177398669364.13697.12718924151881401851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2ad815f826e374fe109950f43b300eab526a6e24bbf01e156a775869693c0bc
Date: Fri, 20 Mar 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773986693
