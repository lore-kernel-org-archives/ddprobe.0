Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB3E3B2A0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 04:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764132774; cv=none; b=ePB6i4w24ugJF9FLi5sbRciZujfwc7a2EGigzxkzBMzlPB87bNXH1CYia6Bd248i6gq9yS+cKMU7jIZJWdTZk7ahLkPlIgQ7epZ40p6BQG7Deq/J9m2gnA5df/1EIn/eagg+mUi6hnzmOUp5SLh1U58cVaYJDcfqkOJl8mggjug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764132774; c=relaxed/simple;
	bh=tan7Vrg56sydVGMrqr6ZCihpZo4EY2aOfbD6/rKv3z0=;
	h=To:Subject:From:Message-Id:Date; b=CRaF7OhTgLPk9tSSIECnu28Mies02uW11VRjVAgPPuVj5+j7Lg4a/aW4kDSEOvCgA1qYKgr5E78Nei5xRBcIy94I7/gAYpGDPQUpiBiNm+Za/a55e252sUJMcYEP0aH+RQAOsaIM2r+jBejOHLeM1GLkMHgPBXm1qo5lfuiOZp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pH2xVlfw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pH2xVlfw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDBE3C116C6
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 04:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764132773;
	bh=tan7Vrg56sydVGMrqr6ZCihpZo4EY2aOfbD6/rKv3z0=;
	h=To:Subject:From:Date:From;
	b=pH2xVlfwcUnfcf/qDbjN8HxoU3/kaAQw0rDcRUSnbyplplCH/+ESUKcwtfCaKiEhZ
	 r+WF6BiIlBcE2Tgtw/bybe0P7B4m38A7qDYWAkzypmUd86A/09ZnHn9Quc3awVLLEG
	 KdijeDBBXY7Wou5Wz1ukLJEk51VqV1xqQW+aTEZzw4GpofijTHsxV4CHPR8hlz2rOf
	 p5f6TtrnVBVcd1ceaofF/krdUqWkrWwjou52QJbiSoJE3wo0pfKipoh3qGzcXZaaEF
	 FBK3PzIGFKjsIlWqQVQWx9a5xBIBzZoPwTaJK1SvoH3kezNwaQdKVnXijyTmjnNGKJ
	 lSCWjIZx0AzUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD53D10379
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 04:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176413277361.3188.16644420191726976651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12d5d5572a97d07b38c45f9525f6c915ab92c57bf385dbebcc95cfe456d9548d
Date: Wed, 26 Nov 2025 04:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764132773
