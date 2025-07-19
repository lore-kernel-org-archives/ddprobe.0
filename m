Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4A11DF74F
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752953994; cv=none; b=alNx5LfSXF2WFqQAfnKWjz6gqPOZ23QHHO8QOSPnGjejUS755wbXdOAqR8LZQGVaAG6Gh9/J/N5kpGsTSgWNFyE3nk89pYJmTAsTe9LwHnQbIB+aG1qXA7uSy+7qSS7E304bh6dMC5yO1RTmguMjXvAg1fS71vggNW2PYOeT2nI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752953994; c=relaxed/simple;
	bh=ysYqAqEDzwSkvt/7HajPrxVnNzSoe9ZmcEfUVS4RxHw=;
	h=To:Subject:From:Message-Id:Date; b=MlR5BkLZ11cIDul5fZ65wIwDWUPuWcZEJkEmctyx12IFsTG/Dn3gyC3LVonnwh7y2Z1zTB9jXu+WNU4QqbhoQ1Lo2HK5mtwP2ujurXh4XSQMPeuptre21i7B6+g+Us2khWTFGUd4P744ieczPxiYxFCEpAz7/egx2pZPbI6jaXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ir+ha/JB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ir+ha/JB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC600C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752953993;
	bh=ysYqAqEDzwSkvt/7HajPrxVnNzSoe9ZmcEfUVS4RxHw=;
	h=To:Subject:From:Date:From;
	b=Ir+ha/JBO6XrnPikMIzFZ5/yhZPoxgJfLTUHa7OtPJBox6/+yay5s0Gu7IPIaac0e
	 17lK6iI2Y91p1Jly0AlSxq6RvwI/Kz/vPX1otS3MbVEzSUnCJuUKjPYkXcEikDy/6E
	 r3q8jCTFDJUCfApGgWJYWj3fCtzOSQWVAO3HD7b57DfhXLys/UQvJCmysBcE1mm5Y/
	 oPmOL6AGqdOVCgVWuluRCKvc/C3blZfGq++sDdUD7YaLUewZqcwA+Q45LS5vxG0laJ
	 BLQ94lW/o7cF7rbmPwAIrdlUwUE9zKeMzZahb0Y3RJNKoJ4Akxeokb4zmLE1Hp0z63
	 ZN24JdDmveXpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949E8C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175295399358.24467.12488574943686595710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9d3b2f56d84b7c92e18f315703a1a410ff4a9db6973aece90ef65326e502bb5
Date: Sat, 19 Jul 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752953993
