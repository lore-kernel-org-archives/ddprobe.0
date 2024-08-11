Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F1CA94F
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723364154; cv=none; b=g9kbiyuKlODu0ygs5J4YMoAXSAMv9436iONrzyxHAudGtlvfMXPvKYFzsG7p1u1BcO5OGsHnB64/i6KQ573EzToA8gEye9Sr7lBupsgYld4aHL3vkU08QUi56Y+yTIbbsQmbINkZ3HMrEBlsyCegTx0MxNd3Xbyzz0P0OuS20kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723364154; c=relaxed/simple;
	bh=/6I0FQ6JGYo9BEn/0WHYe4gUeJOI6hH+3Ce9snZ8He8=;
	h=To:Subject:From:Message-Id:Date; b=LzCpLpZI5mKtda2WGJp+j+7QGtYJUhIeN74zXrAPI7Ox/3lTsD+/OlhVw58DB/5sR+vPWJC8pC/jB8uYwq9QdwCi1Vj7eTeqpLykAsYp8SdWoyEAAhKZCkqSsIDOsRyo6+riE1m+6BBapOMcAVT6kGsZ8I4KtNiTxvZKP6/PF5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLPoBMQ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLPoBMQ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB7F7C4AF0D
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723364153;
	bh=/6I0FQ6JGYo9BEn/0WHYe4gUeJOI6hH+3Ce9snZ8He8=;
	h=To:Subject:From:Date:From;
	b=bLPoBMQ2LJ6ZrGUZheQ+gpZp2y8uw+Mh/p5ral8mdSBf3ZCY1HAFKM+ITTZn2wgkv
	 QvhMOeucbD3AsqYsIVSs5wKfPfP74ZzDKDSeLAcHwfNpXCxc6TJtxQidzVkO+VCk2q
	 8Xwjb3jY9XYw1g48EDs3oD2IIAYCTdB3G8iokaKRQp6p1rrbUdYOyCzV6lxQJztn8z
	 f71vo9BHj6CCKm5R6oPabuLMWXUZ7niO42x5YScU+E+E+qCzYMSRcYElDl1c0oTc/+
	 YuMDR1qakkzaM600Iwr71wUcHFnZTw1CyJcZtQCUeaC615NFuOQhPPYijVHlgpD850
	 MeAFJ51djaIKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84B5C3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172336415365.6907.14785010213886174328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e1197c59a9c0fed19ccc8f36a886d040b160093fb30127d7b58a5565676c00b
Date: Sun, 11 Aug 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723364153
