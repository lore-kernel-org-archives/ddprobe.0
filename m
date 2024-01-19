Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F30254689
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705646297; cv=none; b=bbBVCbSfvpftnjb+Jys5DxvA0dWcaAzbBBTm0wr2FHgNyCNMDDtYK23Olcw4x85bPeYvHI9cGISaDf1ljFoe5u17LCP1Q/WMVw7l4zzkziLGU8KjeknoFOQWldem0A93Y8iZ5YkpQATfEAa/7M/ISwTRzGv4LsW70ufeyungIJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705646297; c=relaxed/simple;
	bh=zJa4fIvNig8G7tWA29YE0KmK4JI1Dj8jfQlJptly9Ls=;
	h=To:Subject:From:Message-Id:Date; b=UYC6/gNK0yMq/DVz9NFZCO1DcKWMgh5OkZ01xyqc0hrx6QXFwf6AdCoOABjyqhoK6ozRiQ4ckxHUeaD+3LHj1dXDXOwQs4oFKvTqcpB0V+JkLkC7XHujtC41Fia+AyW9q09G02uZN2hEXcFJjt0ooUMlvZBG6Vin9Cxdyha7a/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uv0KWEHB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uv0KWEHB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B925C433C7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705646296;
	bh=zJa4fIvNig8G7tWA29YE0KmK4JI1Dj8jfQlJptly9Ls=;
	h=To:Subject:From:Date:From;
	b=uv0KWEHBKI+XKNTHDaRejFwGxdtj6pLKOorDObt16lvZyJUprPQA/rDh97G2AxXSu
	 PzUznzSwIOUFK2726rswmHp5X/1oiQX7Z6OKa9i0GIKPi/q+Q7I/vaGzmJfrPEnIrC
	 zd0kGycNb1XDEtbcNxjyrHsfvrRXzixdRkYUW4oPXmS9T9IoWqx63ZT4lhHDAvTXLS
	 7r9dImRDHq7bodOqwRmpOFPLSUeEy2C6aUof1EPKMer52ZsGXZo3yApeKbzvcokWEQ
	 gz95Hgv3EltINKey8uzTQQIXvJR6jPyYyIljhqkTUf01BoGbOuh22l0KsMp2w2hBQr
	 ISBS3ZSYpZhww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 611CBC47DD3
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170564629639.10134.2456827801147772663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9f00edf302e2065225c8015d86958f69dc75e3c44e4dadc83df99eb392a090b
Date: Fri, 19 Jan 2024 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705646296
