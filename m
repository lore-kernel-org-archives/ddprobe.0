Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23CF45D8F0
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770861894; cv=none; b=J8yinl74bRpIAcxhj2FnjeFMNPItcOxTbo3ai6vIqDngO7++Kd+6MG38x+0zhmWHDTdbL9dW2oz0P4QAvPmWNqibWzQPnsSvbDbrMWlqg5Z25cK9njoMA+x+R3ZEIAUKre//CKoyo5XObN8x16xgOC9O09CdL551Wb37KRnAFJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770861894; c=relaxed/simple;
	bh=/pAKR79B/0AN/5mEMCyueKa8Iz2GomNPCqgcU6FbokA=;
	h=To:Subject:From:Message-Id:Date; b=N5pjVKClgdjlnY0FmQ/+hdbfHQPeK2llaEppqZm5TLZdjWyj7UCFZrxB0UMhsWriQjfJTMYOjJa3N/FRIB+dOIueQ/fP9JlBh6xuN4jFqzQ0XNLtsLi04JHXpI/un3SDxen4FDkyhHGpjRfBaowF+dZQC+SbbzyZSU3Au7Eur9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NTGqfNF7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NTGqfNF7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1AF8C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770861893;
	bh=/pAKR79B/0AN/5mEMCyueKa8Iz2GomNPCqgcU6FbokA=;
	h=To:Subject:From:Date:From;
	b=NTGqfNF77+r0RukBgZsKG+W89ND4tnCXv/1rHvNSPHGZVg+P6O1M3LcHw2T3rqk7A
	 /53hDjFydx+ue66roXHknfJGg+EigJoDQgBDasCkq9ZwF2Owur3u2dH7EgQCyqFQFj
	 LJIszi+wBlvHJrlu063/BKIHitlu9hq/ewhFcIfyoepRO/45WG9X5aH2GEYzWdTHaI
	 ueAACnFD/OEkmE2I1jQHKVmezyg8xupaf3QCyyRG4vkTdkeyfz/dyLD1CBdoTYHgAe
	 6f7GGTbP/5r5r7h8JyV7ZVtLqULoKHWQ23s8SM1ha5oiIxf4JueMsS6tWGyJ/qngx+
	 xyrIMf/nf4i5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C345ECD6FE
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177086189362.17555.13751018295514212022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b59522d44b54ce06e7fce0e5b971a38aaa9ba7edc6be2727d60f253a8c82fd12
Date: Thu, 12 Feb 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770861893
