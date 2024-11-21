Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2FA157485
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732208754; cv=none; b=BR+L+oSlyoBik1U9hBc2SnG5NdkPw8lIw9CIqGukIl82rmzNDTuLF8u1Dgo6sroMcAQ4cSd30n6JVGRm+Gcn1Zw1pZ2nV6a+8B0z4HrDblXVtY24KPVuxFJgxYJWXHpNtufxyD/UYYMpK7G8f8FaT07Kx+y4N/DNh1h+C90b+ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732208754; c=relaxed/simple;
	bh=vUAhUMhcl8p/hA6I+KSDYBoyfwq4OGt7gIum+fuSYy0=;
	h=To:Subject:From:Message-Id:Date; b=bw+lKUVB0ccb5tm9ZFcCsS79i28RDsRfGBwxTpQVsOQQah3T/YUxZESEpZu5qkIEldlvrVQ4dXlelPBS+bRYHP0mIEQ4ThNR1+jsbO80iuP2NYhsyWdifeJDCcqsrXOogfjyu1zjcyRcvSAt1Wh1sQ4Amc6qIkLp7ujkFP6MNuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EdkZCnEk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EdkZCnEk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6862C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732208753;
	bh=vUAhUMhcl8p/hA6I+KSDYBoyfwq4OGt7gIum+fuSYy0=;
	h=To:Subject:From:Date:From;
	b=EdkZCnEkAxbj0ua0vFTodoApcqDs0oEpt0wdoYeCVCy2RXvjRphNMvIdQQ9Hd6TYV
	 k69vDJX89XPPtjHtRjwWBhseWDYE/h2SjsvZIUA6BX5uwv6UJexFf4zrA23rGEf1VK
	 lI1SL/Y5CXPr3OjjLEXHVO5pAhjDsrtEBfhZpCCTk63/xI81x/U8ECYHbqR6yqQRp3
	 EFOJEfpYH4Ty6PciM9/wmXgUOkrY4jmKN2lDKuBK88NUWo3JXx8uDhfs6pmlh3jVkT
	 oZw1bECOGb+fDam7rehwK7zeUy3NVcMZds9vdG8L1EoknXZbPAHUMzK8vgpbcMm9Fv
	 4vk+nsfH7ar8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A53F7D78799
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173220875365.2459.8290640474595495207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b287f8353bcc618f12e3dfe00d16b89c78b84093d3d482c6ff0a53024f7057b
Date: Thu, 21 Nov 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732208753
