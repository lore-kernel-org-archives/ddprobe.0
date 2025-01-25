Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3682A13C9B3
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737798354; cv=none; b=NGTrxp8G6+kOb3sGTH4Tjm0NOKNYEbQOVBeNCZbSBbZVqZkythfpBFf6xx13v5kJRJ0e+FD0x/wL4RtwMxQ6JV89Lu25ouGTrSjtGBjBgOrGFK7GBlaWhOv23Pqk/KZkklC0DbizfvvE7oPjItpf9H52wM9PfD5h7Lxk3oiSZ24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737798354; c=relaxed/simple;
	bh=WawmPHsKeT984zjyRaWG9NtfJhZrttiww6H63UM75Bo=;
	h=To:Subject:From:Message-Id:Date; b=kavFCf9W8mwOUOCn1iOW3uNqxCl0/FJM4Z0QCj/PNuNjWnPIvCItP/j4UmA4pm/zh2ZSQOFBntbKaHw9hR2LYnXFMpjW0qTYlyp8UjV2lzp14hDVT13ApZ7kgFIT4b+95eGyx0SNt/xv5UHr5aHfdv474Exbll989bHeP4ppyDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HgF8W2Lh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HgF8W2Lh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74BFC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737798353;
	bh=WawmPHsKeT984zjyRaWG9NtfJhZrttiww6H63UM75Bo=;
	h=To:Subject:From:Date:From;
	b=HgF8W2Lh8XRsTkjWXUWVME9W1X6FMcV+GF8mA4zgVlyP1Ttb5WqwmEzETlOxG/0AO
	 x3rRfCLC//KJgEN6TirRE5CpOtXfflHeRjKy8DMRcIBwej0xsxCwlNQ7oEWPyhv7on
	 Yi1rlGkLPPblqDhTbwH92SRdDbai9nXvJSPy6r0+nPPToX0jpDT0nl4mVhfjuwhfDX
	 4MiZxjAShtiqEYbGs/2XTjf5SI9aZfXTz0fQtekkTds/50JcE/F3tu1BYaURXEZL2d
	 9CfYW0aTGSze6WWwqAC3UgsgMZJoy4cbEMntvuDmNKXCLGkzgZUFcPJOqa/rmVhjnB
	 gUNiokdSvP92g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92457C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173779835357.1795.12209541962260277888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0339847546393c69d06e111e9337540769f014d114b38e64fe453599c6a2bc2
Date: Sat, 25 Jan 2025 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737798353
