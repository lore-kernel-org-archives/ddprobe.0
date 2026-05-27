Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330B5362130
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 21:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779918754; cv=none; b=dM3lRFQ7YhBc3dRkqloTy3K7bLdrF/ALD+WjYw0hG9LODI+gWuSr8pDnm/vo1Rqf28GwHPOZg2Kk9bDGJwtcUUSGGCU/MDAlG7Da2Dugt8jELu2r+vjOMFJRNASSCPx3sT/fj99UQzJJqsbJxJjnPZFpwAPdOHoHjz2RDu3SL5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779918754; c=relaxed/simple;
	bh=HnhxuA3DQ+6rDCkXu3LiS6D5KPTv9L5luvAN/JNIozQ=;
	h=To:Subject:From:Message-Id:Date; b=LxKYxQJwW0cOt4mHzzU9q2GxQI99x1hx378Vvh/Bb0t7ChOg/oYkFrQUUrZP00PmZCOZ04oQo5Nn7Q2QyX1dsD7t9unfkY3fScmMen3v4Fy4E86OjPjiGpqEzsppBfE61umV2yQqk77xWhAHlMj773DHrBlCmbkYUIr0AIvk0X4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gwaXSpEr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gwaXSpEr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3AD4C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 21:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779918753;
	bh=HnhxuA3DQ+6rDCkXu3LiS6D5KPTv9L5luvAN/JNIozQ=;
	h=To:Subject:From:Date:From;
	b=gwaXSpErYzQnvCx4Nf8Gtvh63BBpDq63w8JM4noddUOpWDWmZMAg/Y8uGuvqm7d8S
	 4QDh39t1ShLNmls5t3oc9V8LsJJSdZXZ1zAMj+e53dNde+ZiXhT3h0Bhc0WRUCKTJ0
	 GTKwQ6mu/cOYM8/RSQl6kdKkGJRI7w4t7KHugMxbt3nR3FmXsPmeNWK/j6HY9RkEk9
	 vUcs7poAF/S0l2c7eZTovt1mcvDaiO9Cp0rKar15BNQ2kYUsqzfLDXzEl0LZnnnxjd
	 QulNU2mtqlYtvW0SF7tdOWtf2F7Gij8/3D96hY+wsv0jounMT8+LwgfVrWxw8jXF3S
	 RrhIqM8bS8Wgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6C3CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 21:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177991875369.8789.14719756346520332772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63a6b95e27b880eca593cb7f5684afd4c72da0e23843f9eff34e5aee4f0e46b1
Date: Wed, 27 May 2026 21:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779918753
