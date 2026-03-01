Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13382220F38
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772395494; cv=none; b=CCo6oXBKuojoDj1tqRW1X8Xvnx910m7R7lt5evrK4Ak29KJYekpNIt6+eFAhG9SOEZpVlnY+91xsTxWse3yAjvCy9XRsi0Um62BmtRVrf/o1VSSkzINcKpL7HhU3AxYgHdheiJVcjqF+BvPy7Kn6OOY5lCR2ANAgkNkI5mfEt8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772395494; c=relaxed/simple;
	bh=p5yjC0GM3qEzFDd/euKNSQwJOfynn0qPsWluGDMWW5s=;
	h=To:Subject:From:Message-Id:Date; b=kC6iOs2L3fYbkrG04dWOU1tFknujwkhvY78CU5rxXnDQlFirM20wnZ9pp9tgQFrNKjTlARgn4vfWGOnf+6OY0fb8jeq5bswM1eSlrLceEz+fx5fPi1VM/TRYOR3wd9l1RsQJONtIXvoN6H9TvNSWeixBiJpdjw3+bA5KJvsqLpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X0QyF41o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X0QyF41o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B59EDC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772395493;
	bh=p5yjC0GM3qEzFDd/euKNSQwJOfynn0qPsWluGDMWW5s=;
	h=To:Subject:From:Date:From;
	b=X0QyF41oTAa+Cwn3u3H2yryzaTzu/z9WmOVECgAqxmBeuSfJdvtpzVShqvaNXTYNE
	 imSNhOa1XwmB1CcexIdWteJPeW1EX5Ls+pDmrzJZsdOz0paoaqJnT0J9z3T/mIGkuC
	 wCAtxtkuWMfWbUEd15sGll4X1xBmIIT+83rVnWp1cHP7Rz7JoZMX0OMltr52OwFpzi
	 7oydY9h5o9d0zT77d5qXX9Y+P5Qjkmh8yBBiJnFvmp6szn576SAw4NhIonllaJrBr3
	 1ktx1DYMePth+PToWzwxVdho7NDDNoQxLKyWYT+ioo8CLvhG0F65pEneuOhVjgyOe4
	 f2ckoYtG+1K4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B353FD0077
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177239549362.20732.8568570687584782328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 657b9775451e8ebd7a01a6b6cf353b0dae5f7bb527d0f66349b6f89e5b2f78e7
Date: Sun, 01 Mar 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772395493
