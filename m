Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F911A256B
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 20:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763237454; cv=none; b=qKZbnaMV5fGu8ACFG/b/lTxWc19feIHXy+f4HOzxrLQXw1XceACuIlJdajoL/phyybRHTob0QXNSm83KW5Gec+FPyLOe1MLv9KIogYj5O65PuyRHZKd0ZC5mENJhm4AO/MW8QLkxL+DFVViVr+BJ5ChZDLkjKEE6497BLj+fDlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763237454; c=relaxed/simple;
	bh=sAfc6ohJW4lk4z8A0ky7R9TDlMagMTNPwt7A/+7UdNc=;
	h=To:Subject:From:Message-Id:Date; b=gREHPJ8y/xP6glULxGWHIDrBPocwJWZPTk0CY0e5+jgvAhMZgpyPZr6uOwmZ0ljWQp+SvS4S4xeHerG6YbNPq/zInjNgKlz/04+y+q6Uy+uQUKvAKwHjoScjak0LbPer1gqp0DBvYH1R5HdtqfY4cjAjd1/Z4sRP62SvNDmNf/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FlKWDvDM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FlKWDvDM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36FBC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763237453;
	bh=sAfc6ohJW4lk4z8A0ky7R9TDlMagMTNPwt7A/+7UdNc=;
	h=To:Subject:From:Date:From;
	b=FlKWDvDMyfIgyI3g5174zrdCeEdw9in4UvXTT+IIx+ANNqNBU+Ltv2eTb8hdF5l+f
	 hVquTP1ZQOhfnihSFh/+4Avw7ybT3jq5omRrJhpceTLBM1CQQW3R38HGnpr9B6WqoW
	 rMCrVu6+tCPSeUxPd+KOoIp8Z7W8DGXxeMJwyTLxDqs1F3YnegVDlkA4B55D52Roud
	 vTCs5nLW58/LzxmAJkqTGJPg+NAXQA9nXphY3mv92DlcQU9qblnw+2HPSAK3R/YOsw
	 OLNiAXMVaZXv6mnMBjOlv3xdpiSzYprU7qOTkd1IZPegob50l7gWOJZzbPjZn9t7Py
	 GkT64KHUsbl+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94049CEBF84
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 20:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176323745358.25077.17462103390848263822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd335518e16aab071bd9b318565e5db8a984f3279b65975f07aa68caa76a0ff7
Date: Sat, 15 Nov 2025 20:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763237453
