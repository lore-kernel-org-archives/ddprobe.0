Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74DD652842D
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790179834; cv=none; b=H3u8koVXV8Mwtle6uCnjagqg0O1If/UUSUhsLWBpcd9heldzzETEEpHNQbhFGObDfVk7LjgAvocpqsfcE0zqMJwZf3XQLZl9glxeAhD4PdOswTCRXSxCCzAab386vvhk8TwnLmTzuHgNL88ueDWPba8Z8sR3IXu6jVJjSAxPhwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790179834; c=relaxed/simple;
	bh=bypv0Wbea+g7iVXoHb1yzr6IRmHaSV2C6fictsj+ER0=;
	h=To:Subject:From:Message-Id:Date; b=pUrLeHXkGSJp9A9shHaxWYCriIcoF8THaacbzEp6gaZa5vplSzXxLHF/bcjhzFv6/BqaGuVIWY1FU2RE+v+1bHMUW4kjHuL16o8rbl9JssBfb8NNEcXH4iGjXoCJs2BOQZG8p+PAM7fhfcsnpVPem2nrMXZXMV1nhdSo/VcBUF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e/BCPBRz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e/BCPBRz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C79E5C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790179833;
	bh=bypv0Wbea+g7iVXoHb1yzr6IRmHaSV2C6fictsj+ER0=;
	h=To:Subject:From:Date:From;
	b=e/BCPBRzTCqocDcoFBl7HHdrGt3vwr4zd4DDiRoznq/0XUwa7kDD3grU95j6ihVz9
	 A1sLJnpRiad3zygBgjN3m36iLPLRpi3sgLTwMdKjofELco1ObrQMYDAY+7pBqcSKf4
	 h6HAG1dprKl524YxCzMGNeioXFy8TghgfIBwq8iJO9uGqPmoE0QlCVtu7n4/Y4wBkK
	 JoOE6joP0oggCYL/EbXk3GYzV/HGak8bSKgKTawP0uoubFI3ye93qUcapijnc+bBNd
	 AkO5hZ+FfUWx4wLsmzQTfBd76r87ZJCzeq9CiHrJzCoEjKq6xinNcbGy58fiygUL7J
	 A0p6I5OClnDDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE78C9830B
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179017983369.17404.14671758323929644846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 707a26977387d479c65c8b5c9d944863a57d881c6ea130cde7c4641d34fa8456
Date: Wed, 23 Sep 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790179833
