Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3CF145B0F
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733576754; cv=none; b=gYAPXuQ/9u1v5kEKhabU34m/0nvThe6/N9mphwE/dcckJ09S/u8Z2AuOjC+9/zlXgv21mj492vsItlmF2NE2xF7+89e4HJnFqYn2Auf8NaKtIBbAnPNdM05rjBSdCZoawjG5Yzvu0J8JN9m7vIkyv3ZmlGzYXFv/JQnvhmUvAMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733576754; c=relaxed/simple;
	bh=9Vb5xmVAF/qo0eiBIAJbA6GRH+TMBgz+8KYxAqXjpto=;
	h=To:Subject:From:Message-Id:Date; b=spwGCYggvNbmAB8uruOHSyXD6aNiOkE8mkNSYIKYplT806vOVDW+D+mLYyuuvpI01+1cyUbRxJR4j5ls/dSG5fD/9qizsrgFVSkPo0jSPEgHHCwNb6RXcK5t6lgLM+1uFypxSZvS5vwRwcwK709KtajkdNvm2YsytzNNVN+7tMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sa0+0N+n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sa0+0N+n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF592C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733576753;
	bh=9Vb5xmVAF/qo0eiBIAJbA6GRH+TMBgz+8KYxAqXjpto=;
	h=To:Subject:From:Date:From;
	b=sa0+0N+n4rD9G61a+2T/DxtcFziUFCGjkhr0NUU7X+MtqBZvUWGD9OmdUNVTn9NAI
	 lqEcsD/aVUH6HHdybL9W53w/4toXaGMtSGpCDxQsBf5nnJ7LddBZPZAWp6uUkF2yLx
	 ESLTVSQZq/69uMlnrEwsPkm5wUklg9KJ+CHGeegk9O3OXokS88o3Q5vEDuAYlSxapn
	 k1dRkvHH6QswYmeGtpgVI3EPNDhqgfQFWE8JcFQBriagan1xWF5QSbdT2Wuw4fYskR
	 2QvipwL1tEyecOJfEiXQ9DUxFah+3AVyKzdqi0XeqMiNufNOCffAZc3fnuCD6gW3GQ
	 tCZacZYvBL99A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1618E7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173357675368.22878.8113105706499150605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0416b9eee26cf416658b413307e2976c99c5438529f1d680b545dc9c3206db7a
Date: Sat, 07 Dec 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733576753
