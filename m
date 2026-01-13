Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2247338FEF9
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768310034; cv=none; b=N673RJb+n5FF43Y5Jq/48sNxzRWbhR5cf76nEKPd7OWn+X87/VA993KJAPmJI7WDYJlaK5QZ/JMe/eoOm7U1grHXh46imY7/4Qwk3aOEuT6MsUb8k7mE+sq4ZSHp+9NmzRESwC153MBB0mt6+Q9gfhllsAuVFBz9yGfwezHcB78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768310034; c=relaxed/simple;
	bh=esknSZpc0gEr4YZP9EGqKZOb15h6ibdU2NTdDIUfxCU=;
	h=To:Subject:From:Message-Id:Date; b=onx54Brs6b+2aYD0i7l4bmM1Y3f5WdZaOs7JiqWpDq/DOIHbTzMbakU+PL3HRoqLCQvz0Rige6pYFtafKsPJHt5f/j8B4UslMwwOaOKjr/BjzCiQgN7STC3rNOIaM3j1sb7zni+7LAHaHYPulVd69jfIDt16yYjwuriRbf6L9s0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vEEBOhna; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vEEBOhna"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC1DC116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768310033;
	bh=esknSZpc0gEr4YZP9EGqKZOb15h6ibdU2NTdDIUfxCU=;
	h=To:Subject:From:Date:From;
	b=vEEBOhnaBCHjf3jftQ+lxkhYr4Xty4YD09CxAjgVdl8PZ1Xhgdqp+Ltb0pUkFmW4g
	 GRrq7R1CwZdzBVBTdIdZvc3O+zlcyhMTkDCU8nrANqVALGwO1WdPiN8ScUZz6ZiKHV
	 OE9Ih298eTpVnnAjP3nLdo++lbECPyaRHq0jl8gc8UuGHNBmCSL3w7CZUgaOg5om56
	 0EEeSfo1Vywt4GtZK6GnQmVABBTbPcMHCM+7RKS1g6u6YgFcq01gsINV/fBMB5588e
	 3KHGmBdPkAt1AsJMnnhOIQRqimaN6R2L+6DzAs/VlkfWfvla7b6HhlzdnqxjMC2WCY
	 yfIT344FvcgFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7E9D2D0F9
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176831003358.12821.13650663225061695845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d54ab6540b9efda87d689e296ffa6754843a4a469749bc5dbf5c53524d3a2f4
Date: Tue, 13 Jan 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768310033
