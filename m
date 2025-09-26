Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26304433AD
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758928194; cv=none; b=XhlCvph4xqKnhxYuS7cuFXhkxApfxGXpwqwtG8KmbhLlbtvlPhcO61+ym0HU/1YHiMx+oejo0cnqwWcFE41TE+MCSKw2XI3zRXVzfI4qrIJtX6Q7NYxBt5cofkcVo+HvgILixd4fz3o0clNA5WySgfiPz2GvBW9hrgDQ7Bq9qBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758928194; c=relaxed/simple;
	bh=p8zTeWuwtW8TA+3RngK+rEXGbS7VHskI+uMx42C0Qb4=;
	h=To:Subject:From:Message-Id:Date; b=P2EzoO9vw3AbD7Cm9/EevkhfAYQqX39J7ehY5ofjDrPnmWE/kEtlN+/BG+8HMgeU73SMXSRnV1Ccw/uDtS0df5mGRvrqdQaZjqLME+xux1XrpFTOl3zcWmc/0IZnpzB5HykaiFbThh7N3FdmQmKAl78EsP1CcNDktCdmHQH2TfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jw0GdaKa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jw0GdaKa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96C8C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758928193;
	bh=p8zTeWuwtW8TA+3RngK+rEXGbS7VHskI+uMx42C0Qb4=;
	h=To:Subject:From:Date:From;
	b=Jw0GdaKasrPGKt4S0HfJKCDZ6nC6ft0yXzAzEcsISuXSJK9epmK49pVHcq4uOhWkS
	 DSok/xUc+IGkl2bxwhlBlnnEH+Oap7daodD8Vrsg8SCJYwYPxI+sy5emdGlJ8yTJUK
	 0Q94Q1P7FkUYXqTM/3z8Uk2TZYwbsh6B/wD2grzjLGOqxi+TTAvK0hRNm3Bh3k2V/R
	 vluPsdKodvDeiqb1ds5Vqhz77GNYKzDQ7D2I4G+V+2yEf2VNjsxH0lkXbf5oKjCC8x
	 SRSUI9aycMfyIa7htary/gyOEgExeUw1epYujoyXf/PkImiMoS8dev+b3hmpcmewXl
	 sxnuuZvyIO6nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92775CAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175892819357.26759.15432958307249105632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cac98e7c8c0c853e5fa7aed4bb639c258fb6150a7b6629ca710b5123c81ed106
Date: Fri, 26 Sep 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758928193
