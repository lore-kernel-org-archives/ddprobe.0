Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD0F2246787
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752613193; cv=none; b=IuBfrCQVhZeIsLi1i0FbArmmKMHWXbZfN/YuP49YFE9wxNvZy1s4KS04Hpm0SqXQx6o/hIqoKK+NGiBop+TZnQx58Y1ToPvBkCDHOclkxJEaMNq7aU1EL9Ab6QoZFC7oQlwuZUsDjlLQK25EdrqwDOy+QpjUMQnT4h8tbhmduxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752613193; c=relaxed/simple;
	bh=yeOMqRMZW1HsApmqGBWYYSP5TxPcXj6QN9iczRvuKmo=;
	h=To:Subject:From:Message-Id:Date; b=FW5ddVWq6fUnDVAAa4MPkJtRr+qgtt3XSWmqD7tEmTeQAVaGPOIYeVKHvH2a5OCKb/XDzFwrK3gtarjO2OOXlMAONIvf8Ut+/CUqcH9W5bznNi4lv5x8aJzlr/3w0KsJ3xBz/9siQP/yrqk86dCB4X0073/EngMqP1L2AqW24tM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qD8g3GWl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qD8g3GWl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76CBC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752613193;
	bh=yeOMqRMZW1HsApmqGBWYYSP5TxPcXj6QN9iczRvuKmo=;
	h=To:Subject:From:Date:From;
	b=qD8g3GWlVe4LTZXgb+QRAk6OgVKnmcIAaDN6RrweQC5FhbRu+D9qckcV2uwUItrV7
	 FTEU0z912JWMituO8dACsUL0sN85G+arYDpe8M41qUkuX7LpXLbo/es2bi5fT8gamQ
	 k7IJX5AvdeCpg8NDuMevI6MaxjftQnNgg0RF4V7ZUNjP4QhZkr6NhMZuWpvzIzDyS3
	 OLIpFZoeOQ/AwRYii+OE3f5p2CoPqNitIkJ2nIX2uakVfxq8w4imEPJPyzz+4KSUt6
	 RImN5J8pmNH1bQgQ6ZzbyQKsurCNeVC/ImfwhQpBcu/m6sObBJRi4jW1Ijxh5adTW8
	 MPzsesrH5bjdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95862C83F27
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175261319358.31271.143859049283074084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28456291b6a612c81495623832e6dd31ca962e72bfd6e8741d84b03aec219812
Date: Tue, 15 Jul 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752613193
