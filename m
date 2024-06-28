Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A6461C20
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 04:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719548663; cv=none; b=D5E03bKEz8GJzHG/TRqbj4NEFXI6Wu5RkdeCpjsauNgdVm9NuqXOoNABdcfXupcQ0NC0VPAZyBtmA55gl+1HuKrsnWUVeZaZqagPk5HeQlbfAp1fHR4Y67cGZzPk1RtvzYwFwc7Sc62TPmFUuHpkMnZT7+M6BObg0V+tBLqTV5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719548663; c=relaxed/simple;
	bh=lzq/VYNxhWYJw9ZsZ4msDc9XSidkht5+fzj2OWkpSes=;
	h=To:Subject:From:Message-Id:Date; b=uDlKGKHuyB8YoiUpQgYBtsg761XO+QTNi4gwu1RPFupDWZ/o7IK+D6QF2ZhqWRaZvPberVMzulKU/I3p/pSXDHGjJHL7pfyw26Kd5s5wTkNnPeVU3NotKjNtoCZAUEu+io55tEh4GXB+ktFSS4S33tCwCT+i8kK+XL+r3YE2LSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SedEm/uV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SedEm/uV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF9F7C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 04:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719548663;
	bh=lzq/VYNxhWYJw9ZsZ4msDc9XSidkht5+fzj2OWkpSes=;
	h=To:Subject:From:Date:From;
	b=SedEm/uVqXBg55dEJtbT+KI/YwkdxTamTcgLANU1kOaq2qW0f5BSA1gAyOphVIaCB
	 glH7eBpPW0eQEwcn5S3iB8MX76lBS5cLGP6XUToICx09n+ACgryvxmd4uPVRNYuuuB
	 e9EgYoCF9h+LRuW9/TEL9BuNm/kXqjwd733lufq92Yq4TR7zKcYDSinkJp0OdXamma
	 wjv9VvtvWacsjTXaV5u8A894Q3Le/j3Fow20WgPkj0bnuFwU9RMQa+KWToiVbehTDf
	 VU9mEk6UupxhqmmS3h1Kda3B5rMOU+gntceQLdrh3E0YvjJiL6r/MqapHbiqijJm2i
	 1JtJqyfUJE6VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DAE92C2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 04:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171954866288.11533.16479290558210400390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fce0bfacc29540b166d2eb62473678ce99050d73baf7988683a5089f89fae02
Date: Fri, 28 Jun 2024 04:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719548662
