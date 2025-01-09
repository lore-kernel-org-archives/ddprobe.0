Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B3EC2185AB
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736429154; cv=none; b=WiRIYmdlH28JBLb0im4XdI0+K3JXhmqpnq/4KnE+G+FfFFH+a/qAg6s+1pWJLlI9mb+RP/U6w+2F5rbrYJBQJ3qtOZ8Q+Bb5bZtwIgJCYnJRKsrF+lddQEJqBhyhjaOOPys2HrsPIL01rzwOfwlJmQvB4c8YZx5D+D3LCMzdaIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736429154; c=relaxed/simple;
	bh=XBPmJN6T1FRLQO5Qw5i0LqMaTN+uCcgBlUjrfCs7tK4=;
	h=To:Subject:From:Message-Id:Date; b=lCeV7IX8BTRakCMhDftFo+csFtVojITWhu/iRfYumaicxFilyIYYZB1Z3iM+rDFhp5j5KKsXH9e1QDIX60maDDt5nV6qRF0JpSPqUwOwOIJHJpFvun8J3dHl3yOd3y350QL2yAXDtu6VRnKEoS4Kmotgf0zLt3MwJFuottZ5zH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLfMo4rd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLfMo4rd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CF5C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736429153;
	bh=XBPmJN6T1FRLQO5Qw5i0LqMaTN+uCcgBlUjrfCs7tK4=;
	h=To:Subject:From:Date:From;
	b=aLfMo4rdyzHkARHOgnb3H3LILiH/2t7Yj3i0sjipKHV6mlDyn3zNKiNwb66EH2eu/
	 0sEJ7ceSULwPYt5ZI28SRdz+BHndhYlKxl9TRnZNap7vcq7BtfZRxDHzk2Mysh/syc
	 A7R9iRA4M12X3koltsa10CInFY1WoO0A3AGEohPakNqi1axTLGpB7yIgJxjVc+7jMV
	 o2zw8RssQSLiZ8uGkopP2mcj4w3EMl7JgieCpdShczkVDa4iT0ciYcD60c2EVHQ5qZ
	 JS/XikE3k+eXo7d9bbp8842xnV32t/9CyfhtKQ6DkNKmZ3HwSt0zD9zpUn+KNz79V3
	 B7w2OMTBOfw1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9420CE77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173642915359.3805.12727572415412430560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a63172de1f1e5913dfd2fa5170f63cb0b2bb55600d74038a96a94587165e3ab3
Date: Thu, 09 Jan 2025 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736429153
