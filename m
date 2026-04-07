Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E6D396D15
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 07:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775547334; cv=none; b=nOwhjuNqPLVerj3ciOKzXSm+vq4RiFuwl/f+KtKXWXXCPRE8I9aw8emoqouGqaWVsKRnZ0cmm54Q+tvz5/fdYn+D3oK0UVNIZUATk1XjkvnrEQGzBBR+eK/LeeSa8TT5L+KxzKetmP9aJv2/+CXR7cAqZSmp1Uzyi2UAbI640Is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775547334; c=relaxed/simple;
	bh=/IuT+HNHnsfzUFNS4AcHWIjM7q9iN5GwbVX+fCY12aI=;
	h=To:Subject:From:Message-Id:Date; b=noVlSNWnb5tYeTA+kDmMtubdOJ113GcLAkY56ukV9+b02yl/9mNymRnVU926KpSyBSQfJMN/VUJZTCQkCpSql2gtoWKq/1L9/yhcU90xHcPJ2iOSsYrDvJ0Lh2tMFdidzfC6RCR0aMX9S6SCh3f9LbVNa/jIh37Yw8gnmw8JfLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q+lfDM2V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q+lfDM2V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDBB1C2BCAF
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 07:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775547333;
	bh=/IuT+HNHnsfzUFNS4AcHWIjM7q9iN5GwbVX+fCY12aI=;
	h=To:Subject:From:Date:From;
	b=Q+lfDM2VQMpo576Qkdqtotg8FL2z2HQUGiqi14WMmEMEohQkWmMvdz5TLZu8lMg8b
	 eR66kuGGssDz4AiTBaj6OqR8QwCNJ8z/QQZRgQeSQjnPyXG9y3g4jFE1UV9Vf4CGtg
	 k+gacEWjpdeST+laWJOZHrUBddrd7IUlFnWljbqQQRTEbwX/TMGJUqrorWCsDCr59/
	 U+7BoIGW1BCWuyQ9fWEI3uXupOVZltVYKxBOestedRHwKTla4KgZC0cQAlTnvx/gvk
	 kjlYIw33LvnQll5sW+rMyyX0CTIkSamro8MPorCKgflDyfh0ypRDPF8beYvguIzRxC
	 FRj8CjGcogVIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD6DEDB7C8
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 07:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177554733370.18337.17731391502795626298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d5281bd0cb832e77c03937e1be2bd96344b91d7126df43e359724ef31b1c464
Date: Tue, 07 Apr 2026 07:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775547333
