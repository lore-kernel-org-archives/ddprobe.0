Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275EF3EC2F4
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 17:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778173654; cv=none; b=Rn7r2FeUirbxJ6c75sVQvUcXCEm3bKmH3IL679iOnJfXluxKyPP0bloYpu115bJ8hD2ml7Ea8yfZLDM6HIpI/gR3T2qD5KZQ2u3bHND+2vXPaKHC8TAQ1gX5Ju8jZk9ftl8siBnkmoJ7LsN/dbR4l+01TGvogMnEQLxYvmwOCVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778173654; c=relaxed/simple;
	bh=3O6UFdVl2Zm7fKqPzKZQz9dncsbiTuXUUYvrZyG4nEM=;
	h=To:Subject:From:Message-Id:Date; b=i0Y/P+blkvrntQ5J0R5LnQezWYtu6u3ioo5MXqSiIocYpxrN+I1Fkl1lRQnNV8UM4paPG34av6RNkz//xmR29584iF291t8WcZ3/UbaZaq6W3Kg5TmAOI3NF6MFki58n4q/W1aSdKMFfKT7Kt2FIFkkgNh9fbIDuXy0MD0GDgYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FCXct+yX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FCXct+yX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2AF8C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 17:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778173653;
	bh=3O6UFdVl2Zm7fKqPzKZQz9dncsbiTuXUUYvrZyG4nEM=;
	h=To:Subject:From:Date:From;
	b=FCXct+yXGQq9isI3sq631C7EDm8wTDTDw+UqdfGykx9bZfXFtq5dFww/ZEECG9hJU
	 LQIdQkoNGB7tpq+kYORH8rCIAs1jx+7To0heGUafe7yk/Mg1JbDxzvO53Fgl0ErsKW
	 dZ07VbByBfGJG2IfEUhZUhdWRzXb67S1GmmgQeGyDijihQlRXHpwPisMktaKdmxalv
	 jZ00u0iJ4oSkdwyAzvtRQuyNHNt8LrG7IRQjK84B0JgVPdv4vaWrRoZW7lSKcI7rlQ
	 nSdjvEbBcBZnfulycjWMQY8l4ub/wYZZAcqbAHjqE3/ausUs9LUHqOrkUS9TM7JnDd
	 CGuu96kdvgxcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B206FCD3442
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 17:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177817365371.14117.6397357326865794238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a2c4ae81979ad14a627e45ad1a443b6465c6a3dcc82decafd30b6ee3c23d826
Date: Thu, 07 May 2026 17:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778173653
