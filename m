Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353833002C5
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 07:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763451715; cv=none; b=Y6xfsF7YQPeySPqYGpWGIL5a79HG/sIWc13IajHl0m5qLtNaOq342VkC503MGGmR6OHVxj7dMyD7uL7/fymckw68wWX0y95nbyrfUKogeuN/+oocq2wXaCaphg4hD7yxwJMeqBnBM/Nfh2F5RE9zA9ZcDfHuNa9b69JKxhc0B74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763451715; c=relaxed/simple;
	bh=QLc5lb1SHBC3ZKFOayKD56zPydwcyHOr5kFr2D5BlMk=;
	h=To:Subject:From:Message-Id:Date; b=msIX2nrgRWXzNp965gDqELI1jcNizRP2ParC0+544Y40vx8s2HSC88RAUaEeN61omfJcyFyKLvBHihjk+jZgRzOHRfPpNIwdfhzXqv7GeZZPRCBXw6RcBfdwEEZ3g8qBgHD6TgLneTpttLXgXapcdnrYP6NO4FHC9/k7zVdzpOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RzA+H+uU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RzA+H+uU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C425AC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 07:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763451713;
	bh=QLc5lb1SHBC3ZKFOayKD56zPydwcyHOr5kFr2D5BlMk=;
	h=To:Subject:From:Date:From;
	b=RzA+H+uUNpuhXz2MSxhHpaZCczHVNepFm8pNGrTPbtCDTuBp78oMH4wArUsNlDhlh
	 UtLWYsixvxpefLdI7xwb/S5zGOeHm7Aa9GRVEArezfXplN5bKuvMl/4UTDUCYtMJf1
	 HNZt0DUtiCNd+XgGmytrJWMNW1MCgFJlwdqClQsckvcFws1UnezHRe6YNwvtkaggNk
	 I9E/qo8X2mIT3A52EA0jWeSdu3jM5QSit7mWpcaOWxzdqQFn2bCZ6tqA9j63r7I3qc
	 sOM7BRxIbGio9FvzDNrJS4Zs+QH4f6JDxPdZsHMCb7dzrsKnfmQiQZSKPXBmm+t9qO
	 1i79LL0mhpRkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9473BCCD19A
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 07:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176345171359.13423.4185410613758092884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1316ed3ee049190a681bac33fc8b7c918ae8078f44207da53504d1c74213d206
Date: Tue, 18 Nov 2025 07:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763451713
