Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219282AF1E
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731138954; cv=none; b=bB6dyWqN5DzlDg/gUzzwTLGYoVJG3oZywaTYKicM65RFHhiTIp+9ttmkemxnTEHXHkywQvV6NgUM8/BUVaHx280At174+I6Sz5XGwQuAPPg96vb9YaJRh5XISYSKI55Gfe3k5kSnCeoWh4hgOf58C5VLdVfTwCXCIuFHapad6QQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731138954; c=relaxed/simple;
	bh=D/bF9m+f1D/iJ0NCOYGc1j3IdTT7IhUxylUdk7b72lE=;
	h=To:Subject:From:Message-Id:Date; b=tas8k5Wpc++pSweHMniCJAJM4laeb7hjEMhqHemhEnZ0b3GTgdxL0bV7l0W+v6Rrvg8lcbDrHdwCn2FhK9K9Vf9CSS8iMgd8vRKDIPEbfMNZBxIhuCwmznudOJL3pXISwo7DDooYwkrxSif5N3Y5YgGjplnAEv0Nrc+gKFL28yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fjwSxolB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fjwSxolB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67EDC4CECE
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731138953;
	bh=D/bF9m+f1D/iJ0NCOYGc1j3IdTT7IhUxylUdk7b72lE=;
	h=To:Subject:From:Date:From;
	b=fjwSxolBC2d4tYMfZHVlWK3CGwpW6wxX8gWYvydN0c3+NrabszwZYLnlvpv4g1Xmm
	 cin5A5PVJEwfcSc0EPV5UE9WtqQLreteiCVZQsYxUjqiqpoAAs2fHEsHxl8QybGY1C
	 Jj/EmANnQul5NzzKDKtlxYn3EfYya1bq/msib4HWdmJU0BiNXVq1vROC1Co/UxiQgQ
	 QFL+XvJI1ujOv+/t7zhD8CBVwLqfyHG8bTdJ8486hvzQT5rv/3qCAv1NaJiRO7pUtH
	 XaZUFBh1b1WxzygEPUve91z9kk7mwFAYwBZX6Pj6ZVOYvJJuwL5oz2YWrLwyYW7d86
	 LiWL9dpa0C8Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95169D5E123
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173113895359.29635.4883503145707150292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fe90588417a5c25ac653b89d2dffb98f7b5a7a955010974a428605de8d1a87b
Date: Sat, 09 Nov 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731138953
