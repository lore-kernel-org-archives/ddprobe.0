Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6063C5552
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 12:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778848834; cv=none; b=gv5E27uoMFtMj40HIiBZZuNpYdLfEbvuS1nEWYYw89C+M/mC9/7y8LI9vcquWCIxtKvkW6Kv0HPLkd6TcJvshUkCg+VuFGmSsS+iIYBRGUuzYZjAXyhneO3eZUSDQr/iURh1FN29uVLCUzIZ+0btuN2yHrKOFoI/zR06J5uj9UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778848834; c=relaxed/simple;
	bh=rLzmuKtvZ9GqeRbRcarOIJWaUN3+SpqiJnZQTblP67I=;
	h=To:Subject:From:Message-Id:Date; b=PdWNSsRxBCF5umxV7yiRQgAg7KZb7QfKNU79ejkyp2JbtTaXn/UapEE0s3hdK/rUXQLSWH8WB62j23EYE6fvmnavb9/RUAWwkF/BqRBvjbq/pI791nTwI7TcaU2644qxU00PmqtJa3whIrYJL999UF0wKSP6Hb3jBYKHBe7RfgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oER7Sx4z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oER7Sx4z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC38C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778848833;
	bh=rLzmuKtvZ9GqeRbRcarOIJWaUN3+SpqiJnZQTblP67I=;
	h=To:Subject:From:Date:From;
	b=oER7Sx4z+L8ejIHeYAVUw2jJImRd2bRomTNcj6NMccYureIpSnoQAL2+6Rqd7bB0N
	 gZKTd6DawkW+N8bDQqp8HhDkjxFQYjbvAIfzEwZpKv16QPMLzPaNQpHKgZVoeRRHGz
	 5vPWOKQJ1RmoTfOzR0LoTfJqZvpcBD6zLbRNJCsnpVT+TP9iIXFb3z1LISWaR5RlkC
	 rR2gqe9KimuTLL31Y0H8E6J13gTucbZKAR6r2XweCshtPMfpdPOcJU2O0Ekaiy4PcY
	 0ywcKtnvFWYBNptBi1tl/2APnCBMd3C5shcKfHsDLwm6lil6AnId5QUrlG7weSRy5S
	 ggB4pWLPCbOpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BADC8CD4851
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177884883374.12986.2557908611445090138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 697331d6a4ef95110e528e8762097e77d18ea73dcf6ea08680f91cac1f964a2d
Date: Fri, 15 May 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778848833
