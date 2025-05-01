Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF99EC5
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746098394; cv=none; b=s4AwjM3Q886bwmRlXoZTgMDMORo3rL4JqtLHU43dPtGqMgO37A07OIRw1NqgCrybrRf1LgcpuLtDMPyQ+dg1HSvmbnSXFiv2v35fT5S+2mocxTa5S0eDprIbqeSbcpalrNf791WXfXNtuiRSzKRj12JTfm4tqUGJY922X7dObvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746098394; c=relaxed/simple;
	bh=trOYRPejXtiFtYJIxR0qQ1RjrPGR648ZeIJJxF29j+E=;
	h=To:Subject:From:Message-Id:Date; b=dowzfdFaVEWGhK/RH3mL8g6vRrvfJ1iSjf1KkDIG9rmpZokr/3pCRZf0lsDN/VNjOwElbET3zJ7Hm3hooFkIrkLxjguajDTHq4+NxTK+UwgigFLn4uCrm9FGmKTWROQuN4o+/zykKeRq5qJ5kzPg966gQ5VgNZOGyvFoAyWqAGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EcjiQQkl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EcjiQQkl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0625C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746098393;
	bh=trOYRPejXtiFtYJIxR0qQ1RjrPGR648ZeIJJxF29j+E=;
	h=To:Subject:From:Date:From;
	b=EcjiQQklkeO43Nfr6dt61rXGLGA4Wg9qODgcTqUTuWAlWC0vxg8CeODBVj9e3dKGp
	 vr3QQIM8ssqflSQBej0cy0u+8HnMZ/VizF50iFvEdXLDpZktOiPlvd4frBlw4aCiIk
	 iiLpwX1SISWsOFzokjsWfg/GuEJ/RNH8B07ZlFoOzKxl8XK+KTgw/1iCmU1qZFzBbD
	 ypqzno5H7onDeKD1E051bHiOcf52GsfF4UxXv2kN2lEnPhRsvigTelrqb2jA8bgvSO
	 IiS0j15GQuYKk3i3HjlOg1RJfiY1D1aAQq/4S8r/cbO053OaBWD5Krh4/3YSo7Qq5W
	 BevYGAZHxHAkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E40EC369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174609839357.4994.5005407853500075553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bea50e6d263e40763c353061938d4f734e190d430d97503a03e291c87b3a1a7
Date: Thu, 01 May 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746098393
