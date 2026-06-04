Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC7C37F8DF
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 16:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780591474; cv=none; b=EZ6er4K8+ba6hbGgJNIWfk9OCUfNo3IjyFIZ+gz0vsLwOw5Oq1dErlpGEzX+Ux2kQ2LJZZAx6ut3GrJMQuOGqVKGd6fJ8MgZyo1nDiy3i4KLqSnP8AOjZ31YzPAh2fCn9aeyYut1qDUU+42V+puL6jzYeNdtgC4EsUFcA8+0tEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780591474; c=relaxed/simple;
	bh=Tk6nL1IIqqAuRzYNDEcVaqVn7xpWhKjU0yyaFivgDg4=;
	h=To:Subject:From:Message-Id:Date; b=iJj2LngPwJBXUfLsbzQVpfiM6RhOY9IYYVQ0GaeA4yNi81lrhsutenwqWCav5F1OcJnI1EptQpIPVRhuK2N4ms2QwXFIT4xNwhhSindg/9gSjmmpoNKJ0okm0sDwohJD5Gjr1yFnW4IdRRmtKCbbFwXcVCJV817aq8sBxXWujqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TYyMKdlW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TYyMKdlW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C495BC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 16:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780591473;
	bh=Tk6nL1IIqqAuRzYNDEcVaqVn7xpWhKjU0yyaFivgDg4=;
	h=To:Subject:From:Date:From;
	b=TYyMKdlWRuHSvvcQfTVma7f6dsgdXltr7TmOrCP5QIZ9t2JngOJdWwsqo+yV4MKKT
	 EC5Wb1PxdAltmDVe6vmL8AQym/j3J2Cvd6iU5YdBqf9A1dy5KFUIIrisnGIrHg2V+q
	 JOwKCtk4H8UEFSEeHF1IIyE35Esjc2cg+t3kZLZaCyRIFZRZpSJHReqW/ktK8x7G/w
	 YgMlppvRLqOcGO8ikJwVyiGQVNwx6sq/PFMWOlA3H4vJIso4FqQIOAhtv9PMw4vhrT
	 074dyB7vEEjZe0aLxpcdOYYzyyKnNDSvJIBQz2ZmHkT/IFXrqJdF22GP83IIJ6cMOn
	 MvFKuKJVuNaEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB086CD6E77
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 16:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178059147369.11127.444411986558272059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5ffcb1795d36fcc14a10c597f33d8a9b1930b55d40d60226e3400338fc2e10c
Date: Thu, 04 Jun 2026 16:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780591473
