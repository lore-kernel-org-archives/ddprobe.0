Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B7126A09E
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745394595; cv=none; b=mkyXz87f4+hoRc/oRAL6fBOG3hBnhhjCz+bEscwa9kozdT0jSuaVaAV4s2i149exFeGyXu5lDeqlA/5bUVdY8KncNxBJegbbVhlp1MqgByYjv6vTg0T0ZYyrFKiAM0U3PbagvkcbC/5qaeZUQdnjwe86zvmkl4tX8ZDKYd0HATI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745394595; c=relaxed/simple;
	bh=LMdYjyd0yUXpKSvrOhLuP0EJOGVJgWzSyBo7qQV+5tQ=;
	h=To:Subject:From:Message-Id:Date; b=Q4lRGqwi3q6NPAwHir55vijAmFBjvyWqOOX8OFP2ZF2uJlE20EsD3Wea6OfCgQdBX5FwOkK7ha8n09OdJBBACBwlv0dWR99G9br8jCNvO823cwC2ZY/c/GJqp+/okRQyoO4O+MgLx5FWO88PRmyLKFP58GEpJSaDw1QCkt25O/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kY2rTTRT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kY2rTTRT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D45C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745394593;
	bh=LMdYjyd0yUXpKSvrOhLuP0EJOGVJgWzSyBo7qQV+5tQ=;
	h=To:Subject:From:Date:From;
	b=kY2rTTRT/GQwijVnQa/W67kORkv7TAsze850bWrBWc/IfW5Q6I9YG9KRTsU+FlnGY
	 /Xv8c4e+0T3JiEzCq2xuZM6eAQvVZ/xhdkrdXEyHt/6n/h009/TuDZKG1Iiz+iR0UM
	 pmYRemIYZtWLlAmb4obvKn05eHfxDvKFz/lpcz4t/XimbhpDnqPkxch8KqyXXe5WTg
	 K/T9L++dkom0lbfbkj+uRsDrmKiqhRHYYdOe1u9YAXmsiLd+SQpviZFvru8WUJZsUC
	 uIHAeF4L4Mczf/BGDM5+a6Q7unDdY8XIa04eOtJi5laDNp1i8ICZyBRitdrnvZeO8K
	 WBNmyc9LLGVkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D02C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174539459357.13565.14744168732669312807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca9b6c0e8a41fc8523487ee8f5d88e7d762c570f6bb53b55f832aee3bd37d7d3
Date: Wed, 23 Apr 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745394593
