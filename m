Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CADF1C230B
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723829754; cv=none; b=PIaCgJQ8RBeTuCD8nASLCeMh6mQzD4nhBgwNnQj8bo3C3VkMt11kLJBqYU5+TwB3CbOgmbt54I9Z0pqQNNI30QLpisYIk7mX1knKXbIfeRjonqxWBi70/j+laFAvh0wSdqqiGbGh0Hczs9o5gN+3rybJ8zUobxmQlqQBIqZ3m3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723829754; c=relaxed/simple;
	bh=TFONlmThkSEzDdpRS2Z9SB/ZMLIxRuxEmJTplYy6Or4=;
	h=To:Subject:From:Message-Id:Date; b=MPpI2QzrvpbAV0wsnOdV3noflBUmjr70d1aaS7Ueyt37upn+tzm3pz6k2ya56vQAoS01INsJIFELnPAfLTe2Vc0SQPmZstmwaYdNavnapQpntPiaAwF3xir/Tanq5UV3KkWJtBSf5gBS9jqR0TOzxPiLutTHXs4KC2LI9MxBq9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tYa52YQj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tYa52YQj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF0BC4AF0B
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723829753;
	bh=TFONlmThkSEzDdpRS2Z9SB/ZMLIxRuxEmJTplYy6Or4=;
	h=To:Subject:From:Date:From;
	b=tYa52YQjS2DnE+Mf7mFPs1bk2oA99alRDNprR9aCRM+QOfDhvVWUCzaK/Q2Biya+F
	 m5UEJZyeadSXjohykHnBCQpLxVqvIJpcanTPvnFyRXoABbZik3LCK4Y7mLKnMHGrh4
	 MS5m+kEJ3sm7FoppsWwSRF99e/plX+SyoyZSL4UQvVH9os8XL8FRnKC7P0vfe7NIK0
	 tOydMh/H6xuB6s1Jf+MoEKqP6uY/+CIFGZOJOaADs8oKlsooR/ZGg9o4MhETMv7L7I
	 gwcms+8HgP8k0K7IdsMr2QazgX2r1DpoI+rCPT2BGesPIMQtWLd9LMDbhrHLji0kDr
	 Qsl1VbbTAkCJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96922C3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172382975358.1503.16911390941956651374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f70572701809c7e686128ca624d472e52aba00d53f1fe7cb1e1935acade3633
Date: Fri, 16 Aug 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723829753
