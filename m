Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5049631B80E
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791746434; cv=none; b=thHARpf2kGqvIoyoSRuHAo0+MY82HbvC84kBkUMjeMNpeNlawsICjAufZcL/kNHOBUnoISfhq8SHsO9NuqeAZ2CdOAmm4Z+A0f/o9XjP8NiIBWqbK/6JV2447IQ8zEr7Eoh+gvp7IUgnLH9/lq6JoSGGTj3iJHnnhT2MODj49oA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791746434; c=relaxed/simple;
	bh=O+2189lOwcIYZ9cx/658PD0novROhX3e9UsD7NITl6Y=;
	h=To:Subject:From:Message-Id:Date; b=oX358XIQcmdE1g4PopRCHYDP20m5FRCf1P4Vd6xvp3m3/DGgWKRfjPTwoacwqIhIPUs8kLEVXB8KPCoFw47pHMrKQ1EeVQm4+QhfhTdEEAKbJZHbG8DTBtGOR1gjRPDIoiKXuavSBvwY60T4RH5wBa5bpjYwiEKxXDxWw1tAGM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ipgy4UWo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ipgy4UWo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CECDAC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791746433;
	bh=O+2189lOwcIYZ9cx/658PD0novROhX3e9UsD7NITl6Y=;
	h=To:Subject:From:Date:From;
	b=ipgy4UWoFm5flj2/OzL3YOkTPtzNgtQK5lFQXswDvUUaxfFDlnhNY8Up0h89IPwww
	 6LesQVkDxTYSmViOwThiBnDr6nIY7A0Qxp773Yioye8tDnz3I77uZc1ORL4Zq8ZylA
	 v9ljfWtbqH4j/47b/fDnT8TSLwWe2Jj1tRpGRCpgIEaytjEHkaW11ItHbvjnalmLVP
	 rSjwzUQmAi9j2LaAct1dLo394GwH5zX7cV3kdBAJ67ztnZkIYNmQnTmx0mOgPE/IXu
	 y7mA/uDvXLeO1A/jKC36Ge/RGIQ9yxbeiZr4XUyQdkwie1FaFHPZwNpW3poBm/IUmL
	 gKov6j2GpivJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE022CA9ECA
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179174643369.786.2276644975769554848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46506ea5ea7f89e34591dc902ec0e22e89a725a2d68379dc93ed0b944a2de03d
Date: Sun, 11 Oct 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791746433
