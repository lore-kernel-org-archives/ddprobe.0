Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4441D322768
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772870694; cv=none; b=c3i8DtT+MZX/kBPM3brEiWhEjYHny08MapUNj1ygVt/Ce7O2B1cXA0icAkuSIU9/kuyXPXbA3SxtowYBeA2wPpsSV3oQHJYu1d1vFICDFOJ4APAg3tAdokBUyrtIMQ9bTe9R3k0vKarCZSdePkzmygYOX78QSo48kufWU7J3TTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772870694; c=relaxed/simple;
	bh=haKIvgpP1rzVZgBKcMTE2cdMpcWSIc9F2xMwGKr/wO8=;
	h=To:Subject:From:Message-Id:Date; b=jTjlwu+p2mEDvLvXxs4nQRdfKiToCzUWWmqcu5hitWPAloRp5gH+esp4yOKyqmLZ/rQte82YRQz66u4WyOAh7LzBHZQEScbjV8ebtT+0MVykE0STB1qtxx0SRStGeUhBsgaqRXcoIDpZJluXQRDj1iybUwTn9baf5SYDrV8GB1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rIKEQRQF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rIKEQRQF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C21CFC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772870693;
	bh=haKIvgpP1rzVZgBKcMTE2cdMpcWSIc9F2xMwGKr/wO8=;
	h=To:Subject:From:Date:From;
	b=rIKEQRQFhHSUKw/Fay7lw6OKornFaETGDRRgiwuIIQFL2OYgxKTs5LcoL3dkqYkGt
	 tzYXCSVvIkcI4wfZkZaQqrbP4uR6rvUxNh00/YOKjWMST4P4U7GaEwjCM8F85NwNEi
	 DcCPj/U2zPmtuwR1ZA84TBQKAwddnejuEQrAAHDGmYzj/9unqg2PH0GbrsXSByRENa
	 beQ3VevwrIIJbipiO9/TsxyGSORopkpDd+L5k/FQ4SqXS08LWAIEplYDHZfFkhvir6
	 /7WwH0WrTqUnXMV4OG+HL2dtnLVeySVdbuDd+P/B9jCCu6x0Ve9hniQ3H6fVu8Pvw8
	 SwBAIW0q5qO0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86A5FC9EDA
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177287069361.571.2524314999651057955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eda4ba696c3e1f6e935c6bc51317b79306608815d12d4d3eef33e96486b7550
Date: Sat, 07 Mar 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772870693
