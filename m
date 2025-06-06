Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E75013D52F
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749223194; cv=none; b=LFg9PsgTnshs4QF+hoQBw8SXFvTNs5Aaw4Fz/vL14NtwgQ5DZOJtA9bmzSdLqOOSxu0t7T4qoMwhOf8ZaSOVzQMzQMKUnmyau6rsPrIs/G205wh1sN/9Q15wRGH3U2BbAJxDe6fS3kU0L5IjlSi5KO6tRO/inxGPm9cd6MUBYoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749223194; c=relaxed/simple;
	bh=GbSZwZYM5E4eNYNsOc0ln7Yv0M5BQt7IlRR/JsY/3wc=;
	h=To:Subject:From:Message-Id:Date; b=JTfX81k0eR03+MG7so1GUN6nn/kPk1zCCRPkM+lGBUBpZLhwi3rK05E13GTLmSiwUTY/G8aTbRD6tTY6QKuJjHc3kXKVarkb6pF2ZJevgGvKWtk/VVztfREOhJymoMQffTz2hznk8EKa9GzTJvyMmC9csolKl4wUbTPs7Fgidg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oc+q2s/F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oc+q2s/F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2293C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749223193;
	bh=GbSZwZYM5E4eNYNsOc0ln7Yv0M5BQt7IlRR/JsY/3wc=;
	h=To:Subject:From:Date:From;
	b=oc+q2s/FlfqC4Xcz3HQaMP0he4QaeL70jfNX6L0ocSB50xYrxzJIaBUwBpEm+Lb5T
	 Y8Qov86nmNMXim3qlcw3gaAwtC4it8Qz2jQSsh3KMzCTIYjAXD8nj7v2W65XVsHOOy
	 37jDzegwzyxmBVaI3gp/EJlzYXEGKOrJkJszCDJdwMiy2VbZyp+woO+6YsZ1NJdiJh
	 nVTd1dodf+Jiw1vKXNq+jxrRL3p4VLtoEosZupaNGbWyMUT3NiRGgMBJEVA6l2N0Eh
	 v1L73vbunVUckdcK7rSL/Yh1FhSsu4BM3O1h/+oPN4S3yNSeg2Sr0lGIDdN5ZBr4Uz
	 cnWEqGleIcLlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9E4C5B555
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174922319357.27526.14364954909022050375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6495556e1fde5b5ad96e0c9cf99756335ca05bfc957f0670a81fb31a11e26711
Date: Fri, 06 Jun 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749223193
