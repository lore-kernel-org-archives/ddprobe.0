Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC2391DB95E
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771982094; cv=none; b=RqPhzQf0F+QO29lwCxMNNgjNblLi5RBSibi2u2RIqaPjh244MdrV4UC1vtRdSky2scOd52S7nK8iBw9ASGlua8B8UlsuD5C+SWqVnyB8wBV7h7vW2Rl5dQfz3SdOYySaubkYrOjI9lp/UFgMx9Q/cHhg9suQ7DZbq8mpP6Hmz8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771982094; c=relaxed/simple;
	bh=o6t1psA6d5TTm2mgQHOCA7ZhPdXriPPTlIzkrr5GwnQ=;
	h=To:Subject:From:Message-Id:Date; b=WVxOscTioUViOuH+Lhft9YYljht4OFt1a6OKebKXfqfn/Vw7KKmt63SP9DIWXCRPfpPVLw8uVAfag1T+3UyPivI/L6GVXXtOuZZ8OpsjoLEE/w+xM4FXW1MILZLDcqo+wurFOImTuAipzJS8hOsMVlr7M+fptUIbjXGvQKru7TE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m89dozZg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m89dozZg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2799C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771982093;
	bh=o6t1psA6d5TTm2mgQHOCA7ZhPdXriPPTlIzkrr5GwnQ=;
	h=To:Subject:From:Date:From;
	b=m89dozZgWDLWSWQKSAtvyA1IZCj7+S0xPeuUIvl3oU1apTa2OtGDvdt3yENGKCVAH
	 vCe6Ep5QfS+CtCxTnYRPBDPNn1KKX95tHwuhy1T7Xmw42sBy0oXn+I/4vOUf9DKyyr
	 bE+1ENsF+uj2vwuA7mpXWO6Sf52btwlwNzTpK0FA7ss6wtfhyzIvCis4EQGh72/Ajb
	 dYQd25GCu6nh6hZkntgXuriAt+Vrcqb+/lQG/YkYj0BOBSqdq4AC3/KnbWXHtlcj9a
	 ea37lvmIrrG6A/0M0ckyrQvOf1bdcJ3ecGQC30hUYhEOeJmbx0xKjH53X1NGxXlshU
	 ruOt046pQjQHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93783F55436
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177198209358.13967.9265646719221468912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e346874166189f8b5323896466d09dabf4d2ca1c13161a76fd8234de451fb3d2
Date: Wed, 25 Feb 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771982093
