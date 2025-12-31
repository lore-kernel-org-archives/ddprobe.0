Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0366227EA8
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767189834; cv=none; b=pSp2K2IaQHXCnW1RzxZzCVpv/n/IrgXu6V86hWE/OHhehgys0aDfOWGNX2rd7mQWfwZroOb61K7C2x9sx0a2RleVWLf+x5A5AOMpQsFwlTfKyAQP6LaR7byOJNIHW2JQ9Xtb7NrTiSE1tEjJbiLNDU8bwSgAcZ76PzufxdJidxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767189834; c=relaxed/simple;
	bh=aCtR0s6/MvB96E4uOLuB1HM6WgXyKKc/A+AGmNdGOdo=;
	h=To:Subject:From:Message-Id:Date; b=DlW0/I/lVuW7f6c1nJlQRag/PAkhajUMgLEkc1Rq3MFYMwjBImAzW+AVwvfvsqyGo6Bp8NoA9PBMPZQvtNXy4cgtb5VHYRnujvKLelUV25mnmDv4obVbFhcIm7BPEx7k1icF1TpF5NOH75bz4JY5pPXSKd4Rj+N8dsR+3Bw+Mzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H90bLWOO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H90bLWOO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F078C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767189833;
	bh=aCtR0s6/MvB96E4uOLuB1HM6WgXyKKc/A+AGmNdGOdo=;
	h=To:Subject:From:Date:From;
	b=H90bLWOOSXKy3kSF1JFnnaD4USf7ypkdXSbQwOVX75c4Ap1gIp8usrLZNVPpqWVX4
	 EtMh+mqW3Cxnb5OeGF2WI0sfMV9+9spOEwdBftJAzZUX4VqsX2Oh5TTvxpZo3p1Ynr
	 U46Q0G7dPztfh5xmbYZZPkiV04Qz9qMGKlD2QVzOOIct36IXm+dlwohGqBgXT/DRDi
	 4Qh3F5dg19G0SItgDeO6aPy7dSHL5lZ6nSKoYLUCZTEWMPgcijG9YbauQIONdE12PO
	 wP8p9m3uq2hh7C5uVk+Ld5+7IKlUYfh++H6YXinDsGFwTOxRScKH37MqhZtLcZE9Jm
	 djsDqo5oavcwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9122BEE6428
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176718983358.2511.8810607491695333932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eb5f1d138c1868916d93aefbc6c9bfee0d4ed5f9bd110908aa7ca8ead9fbf4d
Date: Wed, 31 Dec 2025 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767189833
