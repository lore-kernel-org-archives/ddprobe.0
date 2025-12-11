Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F323274FDB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 05:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765431774; cv=none; b=eSBR2QKqNHcIceCGvukXS+o2fMCJw1pv37AXE62LrSMSKT8MN9erE6bnDcoGtK16ad8ff9wfRvReyHwhPFk2OicGAb81A+WA52tCX4gIqtgExWdouR5zCWQwP4J3mJ90UnjZk7ynAqKUetzJOUMG/zrZDLn2Q2Wn68PTKfCFytU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765431774; c=relaxed/simple;
	bh=VkTgzOaKTnrPS9AgCAq1gN2cWkOxFrTstHVHerxLR4c=;
	h=To:Subject:From:Message-Id:Date; b=rB9iKBXoGxTWAFXnpOZ/2SAbYFhGztHTw2vGdagIlX2vtfqtc5eT+BovoENE00IoW0lOXoi8MGb8Y0s4niD5CKlggmbdUskPz0FsRqxq2hdG6T30Mn/2auakb4ugqeUXDDClYD+8NKOB6+arLESv6f1WJV1jXF+uIZbxXpess04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WVK77sCc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WVK77sCc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B30C6C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 05:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765431773;
	bh=VkTgzOaKTnrPS9AgCAq1gN2cWkOxFrTstHVHerxLR4c=;
	h=To:Subject:From:Date:From;
	b=WVK77sCcS9im7MNOjeyl0ih5phbrzSplpWuBcP+Rb/rb1bbBRaQddZajmi7DIhC3v
	 Gf2w2JmBPPMZxAHWdF1d4JBaiMh28XKO6iLTQI2IMhMzNBDGrLDAjhgWK1ceG5/W6W
	 IhT++YUhjN5Ll5EhSpJSq26hC3Xdmtc8cj29NNUuG0DXv8LE/Szm3uF5QzByvfVeky
	 oakZg45p0dyXKMFy1sgoNeGwg9jcZy2kdS38BcpCZ3VsKEczBwQAIvQQzCS2/5uKyy
	 HiX2qiBp3g0kKjU10ssYizTE2hf7NPmwlye5tWgRJVYlh9IuFmxRg3nf4V5I719IXm
	 6wbr6XHrUo2PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D3CD3E793
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 05:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176543177361.22686.4181434802542858979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67e68cc2d3c78f225e30bf89bf75a5f822f61481134ae9d76a683887bc2deec3
Date: Thu, 11 Dec 2025 05:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765431773
