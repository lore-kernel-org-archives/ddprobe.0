Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D1F3603C9
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 10:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780482874; cv=none; b=UXPxlHn3R7PMpbsBB+HLDJDI5lnae/EW+cIUM8SFVlCmygXzosu3jXtgMxTH9xdVaUoldEsCFT7gKjp9srzZGk6Lhc/ZP5XWnjl1Chz4Rua3mQ+E1WZPkDFHpn8ArrDxd6WFHjgsNcUDOdaVGBt6/5TEsStYUp47QMolhyoolNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780482874; c=relaxed/simple;
	bh=XSByLfEQbr9iFZrDzjaCcvkNyrLhgQlzYYNOwpYV49o=;
	h=To:Subject:From:Message-Id:Date; b=avdG+UOZ+rEZFRRmOsVxp3vemsCwz+9NyWftbdD8FfuBSWFiKU+/YoHfvhtwzmapC1KOUl/nQuTnJ8BX5/d4867n+aCBfHZ+wR7pi7SbcEgEncJhxBLRxSlyaOE7DIJDq9BbGwoXRsM3c9j9f5fhP9ORDtwuc63v9Pzq4aZjUsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNV/idnq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNV/idnq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C48F8C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 10:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780482873;
	bh=XSByLfEQbr9iFZrDzjaCcvkNyrLhgQlzYYNOwpYV49o=;
	h=To:Subject:From:Date:From;
	b=vNV/idnqHrmiSUhxO6A5cuPQU/gcJ/KJWl9P7Rr0C9Gphh/2rTZXTqdwgZ9g8FE/P
	 wyRFKVFm1dQBTTxUjbidTMgEky76Fm/4TF1jGg/Cf6Sgt1K+OfafeDDGLaqDE2f3pl
	 bvvVflS9Z0aEVGknY3YByIMIqNzb/foIl5e7toCj7TtB2pxVZfbo4ZyNTDrv81NA/z
	 ETYU71Ept6jgW61reo97cE41EKACo4KlnVNEw8A7st6dWiNOTymeoPr5Rfr7dApasH
	 ryvDrk74AONSMO1WJKG+zGhenla14GiBvK3MsGw2/cfzB1eHXShaw5bXrG3fk1ByNY
	 cWgU6JE6PsziQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC059CD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 10:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178048287369.25007.10447570129572138716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38622178c8f5923086ece8b60884ef0d26e78bd730d318a1e076b48cd4a89c6e
Date: Wed, 03 Jun 2026 10:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780482873
