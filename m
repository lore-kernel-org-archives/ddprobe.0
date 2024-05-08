Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C982481BD
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 08:12:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715155944; cv=none; b=Udw21O6IzDC81sX/NFwz9m43/AUO6QOj9urJZrqU/aruvDs1ZKA4aB6L+kNMj5a/fVwT9LaLrYMiAX4RFk5iJ0ErxoqHdMklzvBFQAXY8Z5vIc8QzpIaob+E7OfJO90iZULdtGKn7U7V5PoLpkDb50UV+Qy3e7943HhOuQrXwAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715155944; c=relaxed/simple;
	bh=t5k7UGwkpCaPF6fCkmyF0BGkxjnUeE5T6CkLdm9lvZM=;
	h=To:Subject:From:Message-Id:Date; b=XBM1diNlkDaJiPVnjWgJjIQ8bfEyvkMfAIZrPzNbMEqsqe9kfEQkWTMcI5TSSMe5bqrICaXVqv+c2JUkYo4X9DJKM//hvTyFb9+OhFbtjMgzrXet6xtc/2LhaZBr8fxXtk9KohJnvCBBL/yDoX48ief+83pJjkwbm5poSmFrsms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FjtxM3Y5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FjtxM3Y5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFBE7C113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 08:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715155943;
	bh=t5k7UGwkpCaPF6fCkmyF0BGkxjnUeE5T6CkLdm9lvZM=;
	h=To:Subject:From:Date:From;
	b=FjtxM3Y52fG/4BaAFk/JpXjIhNloRkzJEbbltDGrwk6hIXyNH8DANs4aJxBAn5r2g
	 d9od/LnN/cTc/kaFapxaIs089BvH9Cjco014TxbMi+yd/gLuutv1mtdbEO5Ck5rYT7
	 irLHnoM8PXRLhsT4w/wXfay7/ISi1EmRn8sqRQ/9XLdOZuWKhqzArKwbhb06YdyIc1
	 pzLJ+9dzk7vOijXRrq7ew0+Rq5rvKPOKjwN07iBSjTRoqFwH1nV0XuYLPMPaxfKCFS
	 wIhiVHgIcvuLm8Y536p+w6ODmxMwozVQXN3l5/YDj9/aZSbbZ4VkmJyAS2X9D9kdRy
	 Dl8M4o87n+pfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC243C19F4F
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 08:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171515594276.25366.17101867869459940803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f65491ba7a374f1de6f82e62fcfe9a0f5cb44cb6a9d8e4c90c9d13008a8b988b
Date: Wed, 08 May 2024 08:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715155942
