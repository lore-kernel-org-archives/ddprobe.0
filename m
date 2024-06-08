Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A372B2DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 07:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717831643; cv=none; b=JoWJuLpUAgGxtaS5OWcsgFaCn6BkbV592iWBbQtD+9k/u9dsH8U18afM84awUvs5Vftf0K7B17AdFGOcGzt+I+DzOBVuUoiQxoWVJ5/SdclgCaBKXWMDz04Y9O7Zs4g75kuOaH3b44o90m2Q1bX0bOS6Gsif4PEKYtQwaK15gr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717831643; c=relaxed/simple;
	bh=gxGjqWgPBU0Z+rwjiS9xDT7/bfCvrNnvWWLT+P/fSUA=;
	h=To:Subject:From:Message-Id:Date; b=KvPAwHUkKA8cbAB+o/uxNcAHhqccVI5kls8Tq3C9nTaq6tiFDyUhkd6NHcjn1ycq3NIxTnYfu38PXR+eu8GWVZ49U1KRo0gyQEPMdsxWgMt/ZOCQlcCxUP8c4FBAB95qxSB2rU0wUUE23lUHXpywwd+JTAX8naaHcZe9wexL9/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s0b4GVJc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s0b4GVJc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D92F3C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 07:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717831642;
	bh=gxGjqWgPBU0Z+rwjiS9xDT7/bfCvrNnvWWLT+P/fSUA=;
	h=To:Subject:From:Date:From;
	b=s0b4GVJc+PDuEOXowpKI+Mnih67gfdrWcCGizmQ5/FitV2sF8pA9bI7WCTkKwNNxq
	 sQt+aFbNoarE2RSS6ZMVQFwfAL7U9iQJtt8ZNAtWqN0Ny9zFK5WxFmi4w6+ZEltPJ7
	 M4kVAh58yrvAYxViEfSkNA1PhP1y3aB8laiAQkYwnghN3E2zPTnh7vnjr8qJ9RXYaQ
	 iqBirr2ITgVEM/BdKqx0xFxQ4b0Wb7t02UDEjhcBPGCgKRP6p98TF8kRSdB8pUzWqe
	 ZQUuDuCS6XNOffka/ga9t2UqRX9rdFI2+mkfKWfQwLikE+NyTIZDsSZVh0vHEuxMx3
	 vBXGdUfkqZO4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3C8EC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 07:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171783164279.26555.6093878154026672286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6be3d6d2fc687868d488325d29f9c2528429202617e2afc96334246edb44e0e1
Date: Sat, 08 Jun 2024 07:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717831642
