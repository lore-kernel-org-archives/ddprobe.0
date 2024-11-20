Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A98319D07E
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732102554; cv=none; b=Afa0F5cSXfToWqtOTs/h9VAnJhkm6g2X8Z2aIOQPyj8FD66IMo9DV5uxgjAmRQiwESew7SaLXN2+J+ZOYKrkQWe8C2lHky8VhN4NAM2GW8pog7+Ok1O9WNo2UsCMLJ0zxf60sYU7la0A9CcZRrarParZ3ZsO4DdZks29Z2Z9Lu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732102554; c=relaxed/simple;
	bh=i2ElWfr85YUnAvY3pH0o5FraoVoXTRFU4iDeaN1HtMY=;
	h=To:Subject:From:Message-Id:Date; b=oEKhh1Emlh6oQ3xlIOPDhH8TtJTemDu010irlGfz8rxdIKvITqJG5duQkPS05a597M+zVSOqvfI/mIJ//xfGl21C26V3e3cYEEumpJDZWCYxSj0Jg+lHC0q1sMx9BDfEhGqnUZKLvk/RoV5Pxe2yb/cvjl+ieWK9d737+e1LpnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGO5UD73; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGO5UD73"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3ABC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732102553;
	bh=i2ElWfr85YUnAvY3pH0o5FraoVoXTRFU4iDeaN1HtMY=;
	h=To:Subject:From:Date:From;
	b=XGO5UD73q9UoJvxgEF/80TL580Os3uLJTZeCpfBXpiK+d4PYSdpQNLZN7EQIj5Otl
	 2HvyMyyg32H9ShR7piftod1PIuTbqQWaM8ZN1A+zK/FhbiGcDTSWltdxoLyybiJNHK
	 wT09gWVKPW9w9lBXrJNT4RsvIo9FuAhVdljv6ZXEP/a0O8O/qvHNJfHaunfxwCg0U+
	 BIihp7lLu/nGfPlH6Ukg/Rl49qPBTyCv9qHZ4TfXwrho4mYEWkU+4rTjCOP0bDGHJ/
	 z/wCUvM7Q69KhZNpNoYs/1g4uy4O0KeBcfTqiUSQbs/DRLgR417LRB6uOjEE52VUBM
	 LOicz7J4kxHtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9999FD6392E
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173210255359.27782.1319264500610855058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc99e4b884502483ae965ba8245e478196dcb16becd1662491e9eb45b70f2cb6
Date: Wed, 20 Nov 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732102553
