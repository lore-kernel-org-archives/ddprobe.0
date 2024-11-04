Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379E81FC3
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730759754; cv=none; b=Jn9iyjwVtBJjCABUZWu6yt8j3/YSoeO+nNwLnqltEUoBay+nYnFTY0UquSPHvyTkQf+RPiAvQYFZBP/iN54fSLCD8e597LpbRN7+Exa4JRgN4kKfs43AoJYW9nvTQtrLZrcqmKmtUKq7WstyaiUqKrLYkLtIuZmXUCzBqlRhDlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730759754; c=relaxed/simple;
	bh=VkL7SQ8wjBHY1zyF7STFR5hezPU6fcwtRcHlP8cwRAs=;
	h=To:Subject:From:Message-Id:Date; b=LKcoQstZBEunCUx7QcwKmNY1PD+gpcZpx1kCtqXc/+tJYN/dHtul5BqcwTYbIAm4Lhi6JBMVQ0bQK/VFKC4x5/YhmuY0mUn9/HtvtTZZ5rRcn+ibUZ3RgREd5o9CwIXT/rteyUE4R4eW8zGrAe+tiisRhbHVh4rX6gYKf4CQQYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUJhw/yC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUJhw/yC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAAF3C4CECE
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730759753;
	bh=VkL7SQ8wjBHY1zyF7STFR5hezPU6fcwtRcHlP8cwRAs=;
	h=To:Subject:From:Date:From;
	b=CUJhw/yCUJtB82eWAwq/foZg6EBz/LcPjFR8ctPRtBX64Yep0o6l+xsNJ6KCNgPPX
	 E5ChEZrs6Hu9m+yC6OHdvdb6tcovbHyN6Iqa5wU04I20QcL2iTZuwl7SHYjl4EW9qi
	 oY+btsZiHcFLvAvIz/N357Z3N+WrHaUngHr598ADic6XdjPIzj9Nwx3V6fcNZBgF+M
	 aRWejHZECTpKhWZXop+66VaTS5s/mVP3ZpO9WG+ykfIQ+T8yyDcGVjQ7ohJ1AggciD
	 ur0JpCTRDsO1o6RzMRkmG3p6C6sac23KZ5GNRx4oou1o+/Rm3wJ8UAIliym1tlned+
	 yjIaneL9O8vdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A53B2D1CA07
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173075975360.3049.5661762806419553635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b7175828d26a196d621c6b23b0985c3b7e6fbfbd59eeb25c895ee5aa00e6616
Date: Mon, 04 Nov 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730759753
