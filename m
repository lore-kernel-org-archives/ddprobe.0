Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B2C0194C82
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 13:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719496463; cv=none; b=nvdAF0Rkc9vdJeBSTsnwIPeu8EBNbxA9p77qO0YGUICwghrncsaPVVyIFNiOsPidKS/JnWVQ0DOnf9ab97sQ0cbYx/RkPMfZxHDE/ilHfyaNrU277f4dmPA25pmU3H2voO6xeZ9JR0kG/NF8bhkbdrtjP6UFRBFXbvLZ0J3Wpg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719496463; c=relaxed/simple;
	bh=qaGqmml+eQSrdwPg1UZ/GTT9+Yhp5c5RhVIq8izLys0=;
	h=To:Subject:From:Message-Id:Date; b=ceFsJBYXWhF4tgNCNHELldIKrUKTiNETJPWR3RdX5LdT0z4wIFmTIF6kDbouOtlwBFIXjHDAxOUUVqUyBldFuqp7dXqSLuKH/d/ZLgJ4bwlIU9L5aSvSPkfeb5Qul1XNy1E0MbCg/1e57zm769UxpDzz3+Qv5E4JU5w+BBPwXWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LoNp5aDz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LoNp5aDz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED95FC32786
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 13:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719496463;
	bh=qaGqmml+eQSrdwPg1UZ/GTT9+Yhp5c5RhVIq8izLys0=;
	h=To:Subject:From:Date:From;
	b=LoNp5aDzKbDDtntbnhuXU3wPsefpQouOd+oVKUPKKWZZoVk99kY4pfe0TUTXJEVwy
	 L2lf0OYf/xkq2YHRxj/bKWaCM8u14NepG3R1/UdwP1E/MnZsc4UvYCzn+uDSxHjIkN
	 1vw/4MtD+apySwZy3SZfvtsksv845cugwX+e9Lc3MmdMb0klXFqwmv9eS8ZGq8X0Xk
	 Jaxpr+kjU9mATKoDWYiabTE4iKRV2ZTYT2xdDWYb0yDoyWr5U5tuO4ZJ53v07DWw7g
	 TVItyjAiiHMHXVuj2VBKiq/I+aUAg8ZtruGhDj2YM/3VwHuHN6HgO9B4FqdNHgUmrS
	 qXIlrJ2VqZ9Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAAA9C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 13:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171949646280.31099.10605236012740900481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01db4199c5d0c005e05e9569ba0b780d9c97a755744cc853febd711b5c6a9f27
Date: Thu, 27 Jun 2024 13:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719496462
