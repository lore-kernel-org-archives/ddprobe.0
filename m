Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A69B2116E9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756491594; cv=none; b=qAIpEYLNq8OYmRYjghE0ipw2aVhYmrYrGIK6yZ8p/WIhpfrtUPCcKQQASuTVNll0P7e0s87S5TgBaIi+lIWEM6ebZv4xzPI536dAuUSelDVCkRt3T6Qt+DljmhPyNJy6kKQstfLHVNKMs/zUCok67L9nEffunQfN7nzrrtnkNio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756491594; c=relaxed/simple;
	bh=dHYli49zTyPCtRkHxOF6olGUJKrhyGe9ik06pajg91Q=;
	h=To:Subject:From:Message-Id:Date; b=pkX+BkWFBkQb+KJl4HV4KNMtd2m2L91paPtiR106nFHOuIpXjX7yVkd+TNv7ouGhriWbTDxXuFH5EaFShFXW67QKJKV6gCl2Tl2bQ+3msAmkFSaJB9pcPw0zT1Of3ZX4UgcBS+cKDx1fKaRqwsClyhF8yT3/ifdo6GiJtGCCftY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=br/XxoeR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="br/XxoeR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DD4C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756491593;
	bh=dHYli49zTyPCtRkHxOF6olGUJKrhyGe9ik06pajg91Q=;
	h=To:Subject:From:Date:From;
	b=br/XxoeRK/5VkJvJq1CR34n6ATYSuyZMXzBCwWgS0lwUcZrEnqMJ5hrG8DfwWmx+M
	 83HPq1k74xaYCpN/Sl/EGr1ndYvxrN6rpc9RVMDb9/6HlOuZxmdjvIhUPO5kCFWaus
	 3TUGbYYKSOB2j9gCk9wHwWMe0WEXJruWcoF7LawzYWBUnQkIxxnfvkUM2fjhCti1+O
	 cNf2r8je17aEhBU32zI9Vp9M+cQ5PX8T2blrJ1Xe6iJYCb1LzUQQzpuFkYvQDmYJOf
	 93fIrvTy3yMzbTkJ7Xke98LrYLGNdw9JsESX7igrr6voBAfq0wrS2MZPzX8UfBEhcz
	 EeeWFicRxT3QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9589FCA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175649159357.6608.10500495976179265825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6674e02ab02784cbb73a2d0b47febcacc33219d7a4b3313438f686d3008a4c61
Date: Fri, 29 Aug 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756491593
