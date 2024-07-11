Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1A301642B
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 15:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720713443; cv=none; b=IcCSi2pEr30U2h88AuDivLhMK8UIptYjkKGCD0hJrKkCRXm4AFNYqL9gX75fofPAuC01iHS3Utgu0tZEmungjZcmJ8eBIiGR7KdNRf2Li9qHBuA1Ap3kIvtbk9ccZ0A1PIqwEyuuwTDy9qsyzz6rdv2IAU1NYD0wP7zuia9gjOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720713443; c=relaxed/simple;
	bh=cXbYeFmd45BnUYXU5r67CNMAaYGkauhfq8Vvfl+T1hY=;
	h=To:Subject:From:Message-Id:Date; b=F2jPp5gEfpluaOtSGGjsi76Z8IrjYt2YijslCeLv3pA1yHcirf3gQNlHGilodTbhyG+DXmY1MGlQqXRVq5z7FOaoVHjVDkQQPATblcuwThxpdLVBKogS9lvlCm6h4iTLGWH+s48TIYkdDlAl++pFQk6p37q5s0KvML7e4QlDecc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXxXk6ey; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXxXk6ey"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF1FFC32786
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 15:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720713442;
	bh=cXbYeFmd45BnUYXU5r67CNMAaYGkauhfq8Vvfl+T1hY=;
	h=To:Subject:From:Date:From;
	b=pXxXk6eyVKMsvHY3fxo3PW1IU9KrD45Dwd4T0X5kOiAH8PWQuDXcQcp6d+ILEUsmg
	 F0ZjVaoAj/TYo/H5QF3pqVxfAyHSDErvERfmnlqM5L8fXkTGHAmaYS41EuXOYCN0Hz
	 jv4ge33hGRPYJJktF4dn4CmrZiZEoC0SAkQU+TfyY5YUtiKr1Y2VlVbwVRQ6mGbuGi
	 dh4WDuNg4Ro1X9ADZZJfiQb5rAzdWAfx3YJTx7I0n2nE5Mra/Ck7f8FyXrCqbt7K5y
	 C4Zkhw+JJTWFTKntzbH7kAi1c/Ymf5uDBlWRWr+nrbV03KN2gnLcUWVIeDW/QNO2Lp
	 6Dsgcei9emWIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD096C3DA49
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 15:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172071344276.27056.16113894494457696523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 503df91eff216a2c5dae49603233cdf5e945614dd66838bbebb3dcdb84aa1ec8
Date: Thu, 11 Jul 2024 15:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720713442
