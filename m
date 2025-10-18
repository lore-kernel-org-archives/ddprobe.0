Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335B0192B75
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760802594; cv=none; b=j7AT9y0QlG1TQ6GzXNfrjC7qlb2i7W63tHpLOiX5NcUSe3ySFAg2mxiOn8Ti7b6mKobBjcfR6uM8PGZ/hNOyZA3YJK3M9chV9HPPkd/tr+fctar53TfYZjNOiRHhhDLWI9GV4hISWQyX+jSb9o+hFSVH0ECam2E3OQTIh8Sq10Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760802594; c=relaxed/simple;
	bh=qdf7ZE5jS3YX0+EPPLW/Ymo6uZY6MRuBicA5jnHRE4o=;
	h=To:Subject:From:Message-Id:Date; b=Ewzscd9dZXrXxKfqsrV4hA1yURR2Llf+OEVYTZoFYUVhq7K0cBjB4v181twpd5T0+TLBCaM+28RinTxO1c/6w0p9G8A4uV9tgdda1vVub6hT6qHSr57AAiN96i0TPc6xKfKmY9brDK0v+bO3cBkbjC8bZIX++lNWHuKqh5FD3rM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZJP2bR0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZJP2bR0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3346C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760802593;
	bh=qdf7ZE5jS3YX0+EPPLW/Ymo6uZY6MRuBicA5jnHRE4o=;
	h=To:Subject:From:Date:From;
	b=iZJP2bR0R2Yi7GbG8QlECRmPp4k29xsmSjWFJq2aYxmTrXaVUlD6bbPJL80pQ6sTL
	 mOEU7LRg7AwynfFD29mOEsAs2WcOnDxGMkNwKVGNkbPvA0eZCLV8ara+a/nyLpa635
	 yzQNMjmsdtbHDoM1KUh28H/cdC3KlWjuFaRhxKD+K5o9N3TFKyraQvcfHQOMFXTVe+
	 kIPYmJ+vKzl7zYDsuB4Wyz4NUVIjGLyFPvegkEmhNoMwgCNIcz/8Cpx0wCzVFzKLVZ
	 6DO9ZLm935Nrd85pD0hvG6QYRRChhNaMOn3aZRBUTm2iXqAteUhz+Dktvmx3Aj3+Jd
	 0kMgcu/pKgc6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90008CCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176080259358.20869.8388898996912041221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7f4b99818bb5a4005ba3ae4e343c99ae60e527300be0a8e499e2620c3b0e5c8
Date: Sat, 18 Oct 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760802593
