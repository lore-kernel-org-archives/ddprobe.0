Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392A81CA8D
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727324754; cv=none; b=QoOtWM6z7T/HouJegu6LweSh9vFfVzzJJr5nV3lXksy9uM250c7DacA9V3I9rpfD3zrZOI0vMRJaWYaISDkWiVVw/Kqh/48WVlCsCBIdMvjYQ4984S4CGX0oZlnyN1wlYvWYf9yVSlGf6Z8KUypmIG29ZJk6KJ6uyLEFzXaY55k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727324754; c=relaxed/simple;
	bh=tXTJ6HyiCG4mXDqbSxGJBlcPf+YW1Z/eHGik66tu5+E=;
	h=To:Subject:From:Message-Id:Date; b=gNSjjDL9xHqeGZ5zdZ4zdx6tk4J3QYtzoRqopxTRKN+W57WuXQNIK2XFohlJoIpFQgk4mRTsVg9SGUeFqIQlSdOa7NVXKFQiakUPGPYjs4f8f9wjk67W5TTszq/+lvloUYqPf3/Mf1hGHXWbDLUvVteDtFdnvbrLMD+Z2K0/Ddo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZFxxlpK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZFxxlpK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A475DC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727324753;
	bh=tXTJ6HyiCG4mXDqbSxGJBlcPf+YW1Z/eHGik66tu5+E=;
	h=To:Subject:From:Date:From;
	b=EZFxxlpKRxFFNrK/FIuglL+LqAGk4cVgYxWi9SEHmzrOrSSbFd19xW8gaAmv40aL3
	 tKJN5MHH0fhNacNXsJWZTi4tleiOt6C+3HW5y1J9JFjD5aMErtNVXTzRdo6VM3Ac+D
	 mT6C4W//R8XugdWKqTgsKbzALOC22/GHtVJ0eTSjj58Y5LEGs30u5wfFQIokn8fCkQ
	 AsTJ7OhYaVqUmlwiGiCxhFW4g1vuo/sKBpRXTPDFiUMTABwMcfrhqz8q9rsJisbEOO
	 RFZpNgUif9YELD5YHLrtjn8XZfl7tyPrX2goQ0UuDYUSp7wotOL8beuM58BWU8pYGO
	 YQaF+BPXCiyeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924CACCFA15
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172732475358.25157.5932594424121664903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f385fd6bf5899b02adceb662bbbe551dd8e4b47e725298f5975a113d9522305d
Date: Thu, 26 Sep 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727324753
