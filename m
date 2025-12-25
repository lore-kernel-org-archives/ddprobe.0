Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F30E1367
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766638434; cv=none; b=Et9VFM8A2dktVbSC5EkvA3/XpjHBweALgCcLPsp4M4toX9Ii7jZA0oGV53rOC73rjYsGyNuc7UHlii5N5oxiU34BYizNdEWgUC7St1L9nBRvq5rn3AlEMVYBcH64v/CmAIIMp2USTBRDFdVeWHksdZVnHCRzNkFUvrskn50T4lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766638434; c=relaxed/simple;
	bh=egejEnDawHQp+DB6ReFxDG1xikhbNsf09dFoZia5OPo=;
	h=To:Subject:From:Message-Id:Date; b=PY5djy2//iv67GhMbS8aNHFsJ4UZSuZffhsz7+11OVZWd7JuiyB6kp5nLru60Kai0ETsxs9EVhsu/dvV5lRdMtm2l52xGl7jwpvXmGgwUW7LsO+arcEPJr0wzuNwI9Gc3wAH28wJoSLFVlIOtprisLvvs1l7kLwQblcvnpN5dHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AP8iZ45T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AP8iZ45T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A760CC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766638433;
	bh=egejEnDawHQp+DB6ReFxDG1xikhbNsf09dFoZia5OPo=;
	h=To:Subject:From:Date:From;
	b=AP8iZ45TZs8QnAqUJ5aXfpV9xSvJ/jRlc+Gk+ajcJ80w1Q8fBR5x5uiEwdYKokXnq
	 AzanNtI3jRwqdBdWCj2wMhJRgQJMyqfd/SeFdabDKO2NH1t7Prux5DgBxk5oodGl+U
	 54wAGo0K69iNbVQ/BCM+ZwNc9BO/0MindE2tjFyN5HEZ3NzMox/kybSbrA1IHM8MI3
	 D1QgTWhO7fMB3AT+BaUlvsw2ADWX0Uzjgc90GiczdYqdiXwoywgUQpx5hTBPqTRavZ
	 nDIRbMHYFx9zveZ1Jh/x6iPnedReMkzkdOXIrB1Yqsfz5+UWwvC3suib2CYR51IvOI
	 SbIXuInFyokqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931DCE7AD40
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176663843358.2624.5775638009701670313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cc5b8dd5fae39b5120bfbacafd7f707429606cbe7261708341a21ff43133769
Date: Thu, 25 Dec 2025 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766638433
