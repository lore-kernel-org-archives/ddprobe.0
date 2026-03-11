Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F377B359A8F
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773217494; cv=none; b=KPRp7T+FkgmFTbwYrwz/Mk2YowWvaIolziwJ/SfclSCl8e1gU9L4sCabkTPvahT9dWfzA5wbgf7bGpLCjQD0E25eBgFltpULzQDOx1t+Hm0F4HoB1pSbMUqTwsQl63woeXJwgnrl9/k14GU+/HohalpeuZAE3A/MJLzL4pSKpdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773217494; c=relaxed/simple;
	bh=z47gamIL/CbFQDi0MHYPkntuYTpathZNe66rirBpt4M=;
	h=To:Subject:From:Message-Id:Date; b=HL8v7tYerGWP0I0S4KkZebul00dYMZisvNnDoRPci8ocQTA90S7RaiHucl+agpHMX+JWp0cyQP4zf0tbnOggHQy+NgHDMIvAMY9vdlgj3f4Nd//nO+MqrfhSUbkEcvBgYWI6tiSAhmJwbU8A0JmoAvVcc5JGWgXzHtbdJQX9DFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KzFIO4Mp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KzFIO4Mp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A155CC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773217493;
	bh=z47gamIL/CbFQDi0MHYPkntuYTpathZNe66rirBpt4M=;
	h=To:Subject:From:Date:From;
	b=KzFIO4Mpnmku9t6haeFTIS0r4Z/VyIs9Z+OcTGhaEo/qXly8GI1EWBVaMz2aAy2EI
	 wN5va5KAEcRh8smOoNzPcRf3sGyNW9ITHDCedvy9iSTKYdylpARmxP9aXgLiRgrcf+
	 HpzIM50X/+tlpcZgEEdbYDl/fZ+GnROh0rbupnkx6JN+50duRaWgRnJ2GGyo7nLI5B
	 z4frqawaHmpxspDzCPq2aOEQx4kcxq0F1czK7vfGdHrJCvb5x9Dd4m2orQYSYhvctY
	 AMsQ5PsvoHjQN8+kFNRHvdP22uEdg25YZOzmvPtPOIEswuuP6eQv7AdRvKLbBhOXZm
	 hrJjjrNs7erpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C4AFD0655
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177321749358.14521.8787669798407287070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d70aca1680abe52a883b1db45ce658c8afebfe27794e844f807764c431fe1d45
Date: Wed, 11 Mar 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773217493
