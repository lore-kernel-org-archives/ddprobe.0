Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5029D2BD599
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744414194; cv=none; b=WxlESyaLHBFdNqS+pqtrFKifO4apqStk7JtoZJrR60GvqxAcsC6Q3XXEHfa+im/bfkK4DYOmqH8VZ9nCeR2OpbBbSVEMyLgZYWI4w53Hn3FTa5h+hqZpZA/UlvFBhvFawzcCoIN8ebkmWmlCTqMewg0PKZWoL/6wEdjxBlOYhTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744414194; c=relaxed/simple;
	bh=6u7vHqCPM9gegVul94gJamzcawOr6fi7thDh5Fttv7s=;
	h=To:Subject:From:Message-Id:Date; b=oK2s8KI1hTNiOgi2FDJFDi6fHnYeCwW75qfzZYLRSOTWos32aaO/PHwIKoDoJktg/jIPmQsnTkkRbqYG74HKXRpZROZtypeSpiR46lv+w15HMHg9mVEE0GlPRDcxVTxM3qzB1/lvwAAjlSPRBAqjPJsXORLeHFKVSpVePHLnGIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GMurhb6G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GMurhb6G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5A01C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744414193;
	bh=6u7vHqCPM9gegVul94gJamzcawOr6fi7thDh5Fttv7s=;
	h=To:Subject:From:Date:From;
	b=GMurhb6GEURDnTdpzZ3j/aBLxVp4jxpJef55x2HTZQp3l+uG/jAlvb2lI2n/auL/C
	 KE59ppmTWdcywsV5Ytz1JfPjU1P8OdfsMOMw5F0dJaTe6esAEBjyaFe1wRCo8EdHJ8
	 UkD5Qzsx681o8OAZdaZOW7QzZm9WVZeK9VqEwODqD07cvdRlWM3+zJ9jv5QMxEci+C
	 NKdq9w6HbpT74eBRyeUf36v3Wo7x4JJKA2BgNHfmzbcAhLXY6vFzHJc8vhNFnwX2en
	 hmX1qrJpzLmbtiXSwDBviqEMfI29GtcvwmR3Pd38FsfZDZpnf0RhSTqHYk7XY9iiMM
	 2E5EY8dAvGF/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD03C369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174441419362.24350.625619675694049909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 161c1e16c1c2754c009f219961e04eecd31686c81828055cad1ba60f8336302f
Date: Fri, 11 Apr 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744414193
