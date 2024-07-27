Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204D31B86F7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722062754; cv=none; b=R9Sesl9OFZelINhdhuiJKzlAIBTgChrJp/MocQPBvXrkubZbckzYZZP27kZLfqAyRxfvuQ5r/XaCVqEHjKs0lVpNaILklRak4vh2B+rqDI7LwLgc+en9lDMAjXuAD4gCSEtX/NQVXyxQ9fi1Jd8Nc9n3/xbYDpcTs6BNEad6JSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722062754; c=relaxed/simple;
	bh=9ZVGAq/54Td7qxcBY0mwI8xYsf3yuZemp/sXM26WMcE=;
	h=To:Subject:From:Message-Id:Date; b=b4iOxQj6m2Dqc0aOHLLlWuX1AV9DS4j8+NzpPbAnSLc5ZNf9erz5eDQZMDyzao1AQloqbccTsAourVRKXqv7WB5HdiKgvAR8gaGR2aM3YZ0yQCVqs0NAtFlGDfyBTeEjZyShLGmcY4NhPNnUfIE0xJ8dRHaD/8NkX174xaMUWKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jcYF7Xvp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jcYF7Xvp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83D0C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722062753;
	bh=9ZVGAq/54Td7qxcBY0mwI8xYsf3yuZemp/sXM26WMcE=;
	h=To:Subject:From:Date:From;
	b=jcYF7Xvp4gDNnOQDz/lu8y9s4eTO/MHGSuw1Mol5ChxCIdgaEihTaNt/rRj00yzvW
	 2WftZeQexizyrh6JOM1CHdUTadYJsLe+qPpQpC5+BGSVEa/1tTHrAg5ExmQOTLOz90
	 Y/KcCEmQVXxpgBnuIawhtXWyeNiPp6cOzvK3DO0oR1CfHJGFo9yq0i/yBrIF4YXAxk
	 3HU0s5gMDX2JWeCGaIHI11eK7qlCtgX2ePaT7llQ63YgR9pJ63iUEkIGvSmSN5t6Yu
	 gwvQU9Dr+DnyPVFQvhR39AaslL6k9y5emx+M861DO9EOUdreh4LnRLZ9aAe7vz6HjW
	 x8jvRdcZfaw2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92538C3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172206275358.15084.15038151823140610578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 392e10a53056cc4fe8293bebfe1863b133aa016574c87b4d2aa43842f5bd83db
Date: Sat, 27 Jul 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722062753
