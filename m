Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391F72F41
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748809794; cv=none; b=R4PVLK614nHNiXryQm3MfrkG9U7bmCjOVU1hz49Lpecy4knOt7occcc9OkdknFWEyFy5QU0kzYtzkvuSKFTESpvABbLZ7PPEvJ0/t/j8TXGj4/QnITVcbmpRwsfmS21WWO4E/3yFfNkrBuOgm14uEaofyRKdNkW687azKrL7XCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748809794; c=relaxed/simple;
	bh=5XXp+hpqY0YZsH9wtCJGB2RSq9mfbOuIsPneTQcm2rw=;
	h=To:Subject:From:Message-Id:Date; b=HcFSSeBZc4IeCO+p9EssedjPCqIgMjtF3XaJH5951q/6JJ2jbXfwn+FE37AFTtBdfalnWkZ5Xa6MfychjA9zfLug63zp1mKmiVxYwS25OfH8+eJwNzrcHRiUe5UvLXRxlL7UqRHtRFvHgBqZK25vgLhBbjySirUBQdrO2XhlwzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fn7Jo2Vd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fn7Jo2Vd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD793C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748809793;
	bh=5XXp+hpqY0YZsH9wtCJGB2RSq9mfbOuIsPneTQcm2rw=;
	h=To:Subject:From:Date:From;
	b=Fn7Jo2VdRFgJLmj4x37cGdz3UyiEhEQHiRsBQTbFIVwCr4D59ap4yP/Q6ZpVIHYYB
	 BSonptozy0+xBIBEPtDCmiBUbvupN8L9h5vsVZqBcMR7Daotp9cZma66mqHl8m22HM
	 /PIHiNBF9YD7QP3KDLFw+2Hzbs+AtbM8PaApM/GwbSWzCsBKW6/egvuBoCKA81izWi
	 wqos0qcffVoxuF1lf3R6lQs4J159mlfmSVnJZeGTqtcvgBdWB+qbt2r3dkvGKjwrJb
	 Ni0pD5Pro/OtVAj98/HwC+BhzjrCESN3fGyYSUMYl6Ap1oWSD4pjWolubeQOfYWE8s
	 V5lpaRETI1K8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A7CC54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174880979358.16323.14505375355758567139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbad83f26e861fb4333778d2c8f0055f486e92956c932df0dd01c08f79a4e41a
Date: Sun, 01 Jun 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748809793
