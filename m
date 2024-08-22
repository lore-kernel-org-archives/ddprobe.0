Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205DE1514E4
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724363754; cv=none; b=f7bPob40J0vr1gThEiNU0dEdfs108IlrE9/MvP1DP/Qokj2Or57ykQ0pRyvTqT7hZV1Vr506qgZrlszmpOIvM1NUzrnHRJqfqWQtMw7C7xj1un+4tHPIJ+cj//mUzrX9KCUacNXAfmzbfnYXDMqI5tR/hT7uqrBCHVnu9PpTnpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724363754; c=relaxed/simple;
	bh=yWMlu15uPfOXen97zBzROUjm9/ofLk1Vx2EBcb/Dt2Q=;
	h=To:Subject:From:Message-Id:Date; b=Ko+X+yjhPWLUMql6hUt086vuGWeCohc/GcqiFRIG1aXe/NjzEB2dj9zoW4Hz7xkHlT9P4iEOZZc70IXGoHFw1lkbgD+Wn/wPP7zPhhB0cRawQPr/5Wg+nsMDAcgwdOBESCIyiP5teqSN+aYytzStpH9njmK/Sz4t9FyMGW42FYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=usYf+Iz+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="usYf+Iz+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1628C32782
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724363753;
	bh=yWMlu15uPfOXen97zBzROUjm9/ofLk1Vx2EBcb/Dt2Q=;
	h=To:Subject:From:Date:From;
	b=usYf+Iz+akTQce6meTFqtKvbaJJ+udR25zMX4nh2E9S1kVSpePVLeEycx0JVCnI9E
	 FO5IZVJJD6n+rQotUfZ/JDmSpJlUlXHWlYCcUiy75K8CVRBu0P+DvTkTg6zLpnYKQ+
	 2hiqoPO5pMu1msfke1aaUpjedmNwpc/E82ltWQ0+yEhVwpMwf5f+ydHqhuPKpRB1V2
	 Hln8R8QXidK83jlfkVGVqwMYQ4G+tIX7vkSqce3LnPvpwjcqocf/Hk5nfr/pK1KE7m
	 40fVL95yDeJnK8hYJC6fDC1L45k6XZFBK1oCFih85SwviIGQEFBvHIzNl9WHN5Vdwc
	 OEdccqrHXaraw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8A6C5320E
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172436375361.4462.14332561504944038102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b70aadbaff07359124e379d803be4eb4e95392ddcabfe86e24134afee589a85a
Date: Thu, 22 Aug 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724363753
