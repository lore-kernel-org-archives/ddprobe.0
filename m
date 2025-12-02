Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9E730CDBE
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 09:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764669174; cv=none; b=eNJ899X1jNcemYP8Sz1ifjx2LlzlrO+4JybiaoiHCp3peVuo4612acr9IkOx5kWwEsGhkLnoESxlVRXaSSY6MbRK7DI8ue4Ynkf6Sj8/LVzF6aT5rPPiiSc2dT2To5rnpjac134n7ChfLgfsXjUk8qJ7w8O1RLZtP53o1oN90PA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764669174; c=relaxed/simple;
	bh=fl0sLHKBoB7vuL/h6mnWyaO3pcSGFDXmx+7VFFp5hCw=;
	h=To:Subject:From:Message-Id:Date; b=VtHpi1laL3pl3zioeEYlNV9ma5db4BLIUIB9EVZeeeQV7s3ZnFo45L4/9bJHD5L9fBzSYoEmnKHZsLEEFzsTEWtPooZ6wuzg167GDv4pkc2JipnwLUkLvpAk7SUrLXtPR7Yixc1bmEnNrANfBfMDTvu7QEBRknMvS8Ui+aWORVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+y1KQm9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+y1KQm9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45E9C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 09:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764669173;
	bh=fl0sLHKBoB7vuL/h6mnWyaO3pcSGFDXmx+7VFFp5hCw=;
	h=To:Subject:From:Date:From;
	b=g+y1KQm9FfngrS0eXCUcVpuLqL+NVsKlmOC4LiFyLodVGghlBRHca6D41YB7xOOkr
	 B0mQu9uN/3mwNvw91xxE2x5+XS2qY/vsVUK1mcsG0jDpM5g2E4QmboZlPw6k2jGNgy
	 YhZG4n3+2rqd43Joh+LyZUj1I1jrNo9/AXdzLj0aAH4wEhxPdBQMd+Nhtg8h4X1lmD
	 QW4xJD9DERiJaQUrnSO77a86Q46VE8F5G7YysrSuexcDOq/M8wT0cryYpeH2PshVqg
	 9cjoSqZOiMDJZZ7lZG7kmqEQ/thEI2h/iSV9fTXG+w01M+EZPEkAgncwXxXbMNt/lL
	 iR3+XxzJy2X7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B9ACFD376
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 09:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176466917358.8221.2691266819796085602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b1f29ae74d4fb35e834664ef531af7ecd96f4e9197f96f55e6b28ca425e4c2f
Date: Tue, 02 Dec 2025 09:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764669173
