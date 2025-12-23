Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11BC32BEFEE
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766484834; cv=none; b=KIXa57kVjr7xvWJvC9oTTHySAwweNhh/AQMbXdcYWges1VRYIRWZyi2uVlmEhnU2up0NT1O5n2y05Ojz+LQ3ecNzyzODn8x4tVr0DFpyMlnFArm+zo3fSUJQ8oSpIhGzHGkPTwNDUkiTTq6fY3LjFibhpoMIZ5GKnF3l/Jso8O0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766484834; c=relaxed/simple;
	bh=J6r/Azz72LeyZ1ceBRpEjVkaQsyr8m2rA6dhIbFr0q8=;
	h=To:Subject:From:Message-Id:Date; b=Wnl31c5gf0+esCDAEfhRniUzU2o0WU06q4SvLUSwVbgVd1ojJFF2C5g49bTnTPpbD6zMYe6uMZW3V23fA9202zmw/DjvcqzWB2JHNjOyFkAh3+nYHrmYTvwcNhpS0oMFJDLNlCQYgtGORr9+qHfp4jae40xNtJzHUX7hGV7VCag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QLUMKC6p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QLUMKC6p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D437C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766484833;
	bh=J6r/Azz72LeyZ1ceBRpEjVkaQsyr8m2rA6dhIbFr0q8=;
	h=To:Subject:From:Date:From;
	b=QLUMKC6pvpDvbluChzR+FbVyzm9jLiPqL/YLkw4MCBGxIBA5y9YEcQY0wTC3xDkmX
	 hAGuUc7B6AFKHD9qVvCgvKMO9d/zeYo0xX9aw//b5lrPzYAwhumQ+WoS1k85R7J+V5
	 QCCKPYBV+c54Ov+pUSlKITDNgYSk6FVSYtPX+BCrUUaiBAT9bfXnro4BvZVXk1OuiU
	 9R6ZkXhkFiEW6naHvqBPYrVhqS1H+FAAUCeKe0vVtB00N+PIiOs77DPjljOyMnqFjv
	 pT2EDTnLpxawycOt+s/A3qbOUpnXv9tjh0vYWjw7PB8o53sZyGoZ/SfWVkdSMPir2u
	 nmw/YRTxfTptA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90177E6F079
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176648483358.32326.855744415288343929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b30f7e7beaed19cc8c7bbc746c748f3b26a2be6bb235f2fbfab5addcb802fa4c
Date: Tue, 23 Dec 2025 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766484833
