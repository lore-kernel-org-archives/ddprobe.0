Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67CD2198A21
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 10:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721126123; cv=none; b=VzFh5fYupIzppMPjFFkS4xJOB/l5LnayNQcJKzq973mFb2ElSH8ycvtUeSrsY+nv6sWJVoxeVZY8QIUV8KS3oM7FmL/6R/+5md3e/PVnyjvAKCHnAqYg7GtYvj9fjqKeBIUK9ZSy0OuRso5GPuSbZ1KRAF7FBJ0MbvXnKaqaP2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721126123; c=relaxed/simple;
	bh=/AQbDAhxDDZhixWI9+zha0a4AGETQIJ7H15RV5u8Jc4=;
	h=To:Subject:From:Message-Id:Date; b=eLjqZ1wcHAnrJKYm7+mpuS52/JyW0lrpgYxVhWFUQ2CRhIuQV818nVGspTG+paDV3X3OkOEiLVIrlOFkloR0hOWxXR7ksY649ecQbk7nKhcVQzrRj/asIyHBrXL5EufEYtyJtm5sVAKahfL3yPWHpVR1laz5BU8QS6FqMj+PR+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jV46u9EJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jV46u9EJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D99E6C116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 10:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721126122;
	bh=/AQbDAhxDDZhixWI9+zha0a4AGETQIJ7H15RV5u8Jc4=;
	h=To:Subject:From:Date:From;
	b=jV46u9EJZSdiZn0smv0VJDas2GkK3903pnoTB9iF6qxSJuqlSeoiPfILCrCdHWI/o
	 iptcEhcGCTNJbF0Kts7zMPTcE4ZAGGCfCm1NU4xxhXcrOS8Ipz4qwWQLphmx7vlAND
	 ZDeRlFIHfanXrhGClmL2CNiAwYt3a5PYZeZ3FZHLppPe+C6SeRKbRK4QbcMhVZfdhL
	 9Z8E4tx/BoHmnVo/DWB9dOaiu0VW4OqN364XCLNHAYINbRjCOeZ+8mYOa/GOTnBmS4
	 DsGv5hm55I5mO4MKzrm2JQO8dxuIOJXcYBDj2sl5OnzVzY6A2oSO/htM4hmXplmRfA
	 4ku6DhB+KQlNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4183C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 10:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172112612279.31795.7296703302146536414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f777786bb87f0cbbe4a473e47fdc61873f1f8128c63332e69f3026e4e1f02634
Date: Tue, 16 Jul 2024 10:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721126122
