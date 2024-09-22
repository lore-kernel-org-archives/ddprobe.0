Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E979645
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727009154; cv=none; b=U9WdEWhWLz+X68fXF/pNXDS3xocspGEQ4kJ3WXsLSvtzx7KgGFuMXytZ398hXHbi+ACm36wpB6CXzNFg0tluFEslCRS6Ke2x1vsHTUf95jXyKZ3/Ql48W3Ag6XX+v8S/U81BxNah7H/TPdDBQWDg7hzN0Po5lyQEsZ/6rvtfB/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727009154; c=relaxed/simple;
	bh=6hGY9MeQp8sgIuW+pV0O61yL+Hd18ZuFSTFimYxKUsw=;
	h=To:Subject:From:Message-Id:Date; b=ur4FnE+YqIRailAbfHVfgsETBFx+QW97uJIF4sTA6kobhl9GuQaNHct73PfqB6rdhuG9J1D9BgqEGSd3ICrG2y7aVuevwHKZlJTE3ETGHLZ9gQc2WtCi+YFrJzNjgM1FNygvT7MGwLFM1RH66bEAE5lf8Z2AbGSnTrWYDoPuIw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mCVVMkgu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mCVVMkgu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAACFC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727009153;
	bh=6hGY9MeQp8sgIuW+pV0O61yL+Hd18ZuFSTFimYxKUsw=;
	h=To:Subject:From:Date:From;
	b=mCVVMkguI2/00OB7cFbcXHCCtzWlKvaUeItwU5ldqp1YrDYXehCPY3vWttg1PJEmN
	 g1wQe5AngSdNkkzTXklih6OZ6qPWLvglbN263jba+eK2jZOboSjS7s3raEcPECoX7l
	 zgAATxIuTVoYitEwWOrfTCVyuZhDMhsZPOu8LcDbfVIIzFQ0hV8uME8F6f2brMSGMS
	 PWBGYfMgeZMRbaE6+5+cQpy5i6rOtgsqsMxhzsmrLJEXgL7PJ0q+WbtJlvm1qo13lh
	 uRFnJk4FGx/gmyuHlu+/06HgX7fOQEf/8qibiUiuGIN3+zCRvTMyF1g0waZg8k79ML
	 ewtEaBDFU8ygA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96086CF9C6C
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172700915360.30203.11982135254344886768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4a7bf714849b0cae1ebc37f0fc9fd35faf4de9e8c6095b9af98a3ff080d3fe5
Date: Sun, 22 Sep 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727009153
