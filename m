Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 044A718DB1E
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 12:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764074574; cv=none; b=RgiAaZHaqHPEX1BjRFMROAMWqAp/nxIdufY0B1o16uILuzyC1HFQ3clMOjmWMBJS2+vM51pg1I8MShQ5rwivV68776NRkImaqdEU/L3MJ6oUtVfnxNfsY2FyAXFQQY8Crr2jAwHdBQEar6jmDTAD5AiLMi8UdcV0+Uh+MK1lOt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764074574; c=relaxed/simple;
	bh=lk4VkYLW5Ig7t4BWI1ekzFopiBFrQRdddPB9ddtRFq8=;
	h=To:Subject:From:Message-Id:Date; b=dthU3haER70rQl7DdzhNV1AG/4eXAwY0nhUzrz7Mo43BU7cR4yYSHKhMRVR/Zf053c1cI6ZT1NurabAJUTIiUQdeBQKKJ7MjrzXXuDRtDSz4MWJ8D0nvYentznt8idgjL6LeahtGpfaCiQ/kwnsGCwAX0uG+o+k6iszqW1k1CT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O5MpQo9D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O5MpQo9D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E34BC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 12:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764074573;
	bh=lk4VkYLW5Ig7t4BWI1ekzFopiBFrQRdddPB9ddtRFq8=;
	h=To:Subject:From:Date:From;
	b=O5MpQo9DhD39AR+pYCX+LQkR3N6o6IiAHLnFfVfVLQTjnUtDC4AqpGn88n3Ttxt/i
	 3qfYgwHOZQmeAkAko/UQDEfzhSa3lHyEB9hYbYA+GT/yjdKSL/QyyFawCIN1eDQflA
	 KFnhg4i59dTmVb75cXgAIWqybWmyrzR+vzbHnuirI2WUhhUbkxEjWW7lZL++r6q9ve
	 IxEhT+UNUE3J5+dnnPAKC1dhEN+Y3WRfQFT/zz4QpyBkrs32fU1XnAcM2V6udc+icv
	 5SnWaxF6ToDivqXj0Egr6u7qDVX+KfeKwTDkeTbdFps/Blx15kScfXeoNeWptdBBu6
	 tQZFquLgvelzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903FAD0E6D6
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 12:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176407457358.674.4064577449835354988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ac7c74e05a8762d9b20da302a6ea57230dffb0402d7622c206269ea73e251cc
Date: Tue, 25 Nov 2025 12:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764074573
