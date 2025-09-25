Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340A0279780
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758795594; cv=none; b=X9frHIiFQR4LlH7sezqyiJsRZxUbLrbKzAXzhyk86EV/cwlTeurdaeYC6awH661b2VaJHv+lDH+Fig6aA5JElrNA5tquDTfhHGEFJqOJZQMcXMI6huab9yNli78VUCYcSWWQIPjiuxAp3Fgbs4rdbCi/NuSl7/PkejPx+vd5If8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758795594; c=relaxed/simple;
	bh=GJHXh2TvQ4pQyWQBXpMVT4SEs3TKXafQqNv5D1co3Q8=;
	h=To:Subject:From:Message-Id:Date; b=AGJlX1gSSUudTmXszpIn4vzkZk5REYdQflrAv78JRyvBgBHZ7YGAyJZJx4/xxSTE2nmsPN9jFk1u9ui9R8F5rmxOTZsWRdzrktSzfyY4wUlEjd4QQJxCF3214C29/jyw7tXB0Rli/2R6mSPxrWtjvIKHBqZ80sgwieDRMWVhJW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AI2ZUcVi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AI2ZUcVi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09BCC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758795593;
	bh=GJHXh2TvQ4pQyWQBXpMVT4SEs3TKXafQqNv5D1co3Q8=;
	h=To:Subject:From:Date:From;
	b=AI2ZUcViOiSSyaH3X+LWJxnLkpiydNdjCZa6sxrgNVFJ3RUBF4fO1XTrLixJ0ZqRi
	 HQfxX8x71JwyechPX4a4HDEbPOmusQVl0lwP1BJBRAvqshCY93NQfnsoxQBFczoLoY
	 zWpb8mM51YXvAl8BBsTsjXDWq1tsSW0DaLkO6Eq+d1COYSfJiDNYJDL1/xrCmwKFhY
	 wdwWtZ72kgX0BqDDMewTfvfxjWNx4staoHOIbZkRuoAlRPKsF5i+8i32Vc3+QH70Vo
	 xP8mNq1g6Ovm7MY+/zTSc7uGVqSjg5gqLx63Gt/PisT6cFlDQFxlD7EMROZWJW7hAO
	 RMTdGlVkBl7kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904A8CAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175879559358.23333.1673473019843042159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f1644884b53aea6054af28a5df850c178038330bc2479eb34d29b5c9011c8e0
Date: Thu, 25 Sep 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758795593
