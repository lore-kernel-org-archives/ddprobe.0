Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01FC42673B0
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772154894; cv=none; b=ci/EhmbsY5KUe+m8x/IGG/eIjeXLbrdiXTDh+fXSlE3ziQhO1wOJwec8U4jTaj0rKvAgIhAo41r3SRInVlze9NRgQTHel8yvEcjJ9OU3QsLopqUD7mW5e2a1vHfttSfadWt9VzJf452qQuMuiwZP54Kti2yjVYUG9A+9t/eywjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772154894; c=relaxed/simple;
	bh=0MbbnWcxLhgjC6J8OpkQRlR3V/FJVKwhoQve5srteEg=;
	h=To:Subject:From:Message-Id:Date; b=I5XB2g4gxtpy3+fORzp0Z5hkLsb8I1JT2PxWFNIQhJQZiBIETAl/1mUtkC1v2Y2nxTn+BYVkobNqFMwGfbS8ReoApRQK7E6uIn9JIuISGqAFe8kl46aYLhgof0ZYvl9rA3ORjLFG9nVGExJrVYcfhjhHstmc+Ey73EmzkLj+yvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k1MqA9Hv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k1MqA9Hv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BF1C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772154893;
	bh=0MbbnWcxLhgjC6J8OpkQRlR3V/FJVKwhoQve5srteEg=;
	h=To:Subject:From:Date:From;
	b=k1MqA9Hvq6sUUqrtGLCZUHqSaxgIoegShgKORGWnOYNjcPo7K9or5uuoy8mBalnTR
	 V5LRdRfpyuMHdbTyFO338zB8eyxgWxZuCf9OyhsdivBKMriIAqzfDO2wSmAOsPmAzF
	 C/4tGCu+hrpYGFp7p0ImrTD170wWBKKGiCaOUDV0lXbqJQFmpUGi+tk+qAvMhj/M6K
	 GmdQUxWOa56c4LNI1wr6Aczt1JWOAgohMnnOxnN/MXrDtM2NNlM79qKXoaTedYgN31
	 jkFJRDYbha0OG8vU1O9Ioe0d/cI9Zm9U0xOFYU/9CAWp6a4UCJfcJ4945X3A6MXsq+
	 55xAP0k/AqnTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920FDFD9E26
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177215489358.2520.1376463135670314711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 550cf5545d6356d7a78cd69e3de11ce7941c27ee413de72262c62492c147a7c5
Date: Fri, 27 Feb 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772154893
