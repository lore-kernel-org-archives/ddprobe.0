Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 123B216DEB3
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751968794; cv=none; b=uGBmuZ3UGL4HcPAlq88l2vPPiGo2GL7394GtxVq3k3xveO+Q7qtgQHmijckKjT1CKqrXQ9k5fQdBj7vFrk8haoNgmAGTZuubL25JAtawFoJQED4TmK8R93VMkTZ2Z3OGkX66vXLbD0M7BN0k0eAOTocWKtX44NqtAHCV5zyBEJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751968794; c=relaxed/simple;
	bh=O+sUH+fD+rkKjD92iokEE6XyjLm8Ywlcgw7sDL4gRBM=;
	h=To:Subject:From:Message-Id:Date; b=nI6ubVEonUgWYc97CjCRlB14BjCz8nEHQ0f7JoXHLdjIDzyxo7LIBKHaf2b8p3/F+Q19r3NH2QRcY8TJO3UIIGRrJgTOfaPWBJTZGegePALRKdv/1TnOalwfRhDy43SY/M/KJbJXofFuCY7eWEh4vG+HpYzqB6hBhuDepxM1jBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tbfp7aj3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tbfp7aj3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB7AC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751968793;
	bh=O+sUH+fD+rkKjD92iokEE6XyjLm8Ywlcgw7sDL4gRBM=;
	h=To:Subject:From:Date:From;
	b=tbfp7aj3jyBlAw62eAvuxi79CmaGnj80SGxdhAR0oWtFKV3b2gYy0koG70uu85G8H
	 8O6QDMjf7J9LX60LwZFi5zRyCZAQ65ZwPEgGdQ6pN1CoKBZy1uGqHYgFUdBxLqPdTS
	 XDxDKOuMAccSP+Iyy7Yx0ggwm75Qp+rkg+dQxDIALxDRy2vTL+GYD/fINYf6KmKHmJ
	 8d5D2VMnohTVtguGyCX39wAL9u++qWCmzlxajnZkVxrtK6HSxqx8egDkbN+4ls+qLl
	 V2dgRS1S8IUKqXLdDPvu7Q3B1Xpk9PGd/v1cTO6NLP07SSb/WIz/nzeb2zhMA+oDH5
	 z6SiGClFGCOXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F826C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175196879357.28548.17300033946754991891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edaba9c04837386acf600decabe6e69974c8194370370f6e6ce3fec21e310a8a
Date: Tue, 08 Jul 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751968793
