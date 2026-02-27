Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19EB4296BBF
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772235294; cv=none; b=dnD6Q8TfZO8cVE1Sw7P8VBGxnvur6QTbrIiQAwBMeOPFZ7ozgwZNbFARZaE2fNekjMCuIH9Yay3NxINqs0m7e/opO8yXZoufIeYzMXEvlwduezNBudijCykUH/CPBiCVV4CpiSxphtPhsrmwMqLEily4WKZogx/RvGi1xIkmSx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772235294; c=relaxed/simple;
	bh=21sGKjR+zOpJrxt6qm15bkvZtB59khP3Uz/3be4KleU=;
	h=To:Subject:From:Message-Id:Date; b=k9SKa4q94Eqf0gYthe5JDSIAVNalYtZG7xYifspIYEi1oNScKDRocGHA40tdfd7xB2K0+oajdOYiqj0a3sIUqy+Py9R0Q71Afpy0Q85odqHmF2VAUl7CiHxCa7SJor5Ka2d5OKEVqjl+dw6DSeW/41uQgA3ICYW0T1xwezGE/A4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cIJxVhCu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cIJxVhCu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B25C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772235293;
	bh=21sGKjR+zOpJrxt6qm15bkvZtB59khP3Uz/3be4KleU=;
	h=To:Subject:From:Date:From;
	b=cIJxVhCuYIBVC/VP1Fmt7gWJHz57+NAbXKEjGevsWWFRoHPqcCYw1SlX5o+Bpo/vU
	 LAzRczloN56kN7qANYOodz5PUO9CnFuMl7iJgX8X0kxkIvpJqKYCrABs30Psr7Fyrx
	 Gv9CIrf4ngoHX0FnahWmbGo0oBTtCkZoS6y9rCoRNIpbB7t+NGzn8Mb9YmWLEhCf4o
	 axoTjiyFSVXNn3JkoikrJP0IWrZS5+oiaRHJ8OUjb84FmHv3nv74f0Tc0Dnmd7Ic7y
	 qykl677rO1yQf155CesSSnu4FX1B5SPCdsFwxhzlzP7tMRM/EZUYn5ZycdCG938OLX
	 8WkcN0V+QrUpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F973104891D
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177223529357.954.11008528848149261919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 129a943aed78df4ed44f0b6682f6a5937287c405ebc660b72498db036608a661
Date: Fri, 27 Feb 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772235293
