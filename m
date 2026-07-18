Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F7783D5C05
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 14:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784386114; cv=none; b=kdgIt7SQraBTlk6drhV4qViJWv16zxxh2eIaoEK9BC/O8WixzIOQAu1IdHOl1u/4umhHDRcjtQrqGXG3hZiyZcbF08RLtG40CGrPPozXV5Ttr2Xv07TOInODH0udOUpIV6YXVk91KZJJvGUhegKLOZ82kXqg+v1+NwANAjwzhZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784386114; c=relaxed/simple;
	bh=brr/CTy0Lo0HEqWlTRmZ2ORvn581REqPJLhN7s3XKzw=;
	h=To:Subject:From:Message-Id:Date; b=drxDW18ZrBRHLvgWeY4pvzGE5IUHm/u9dydxY6A6D4bZewolektDRD3LC9WJDtWaB+FgbIJITvTnXdI3m9WcnGI7Rw1/ls0eMeu54HhkPBWwafB1bf1Rzrulu5OtvWiTcxgbgXz/fdW+IfWvor0Pf8EXsKoGGkR0gadCG+6arqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ORmLQlij; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ORmLQlij"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4534C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 14:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784386113;
	bh=brr/CTy0Lo0HEqWlTRmZ2ORvn581REqPJLhN7s3XKzw=;
	h=To:Subject:From:Date:From;
	b=ORmLQlij49uUTe5m0RCXwXUdlccfm8irrNmJWTHESfUPx9qOt5R6Ir+UFY6StW/89
	 goz1JLSjjrn6gqdC6R6FhDknUPYpbcYoQVeKop5D2hUrzZBGfM9+esw2AmzMzK6aSu
	 IHSL82TjohlqIuEOKLxykskH8KvJltwfEqdTUIAJzdMMu/pOhuv75iFmuWJR0sEQqu
	 F4bHV6jko8AxKycWOwZggBv4v1wbczJoEl7IWcz0eqT5ARJsDuzzL+SWUG0WksI5+8
	 SZnKPi2gM2iJInQHVbgTfcu+68NRxP3PMI9HphOZh//TDtCRWMhwvqC5lS08S1M2Zv
	 DUTnjpXeNw9lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1E0C4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 14:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178438611369.23328.866481706049050222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21561b4558dd791903fb28303ce624988e4f54102b9b4548ee91e1f27c7bb937
Date: Sat, 18 Jul 2026 14:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784386113
