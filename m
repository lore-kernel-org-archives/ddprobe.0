Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B135526E173
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785589234; cv=none; b=PhRUxdcBuVbLRsTNt3cNSdM2bacmyCVt6GqoJLd/tpYkWx37/wrj8ZPDad+9YYciyTxKYIiKLtKDRBlFNY9auDPhERfyJF0F50p4JTyIcLcTTYCzkMgeOj7maw/dd4GEdrE6E5U7YM0phv3GBQJaKtkSIHuTcweoYBPuYab1m0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785589234; c=relaxed/simple;
	bh=2ZeTiFgeP4P16dSQnxdY/qJUWIao87MdNZzSzPwFQPM=;
	h=To:Subject:From:Message-Id:Date; b=eyJeIBsbD+2KUfO7IZkYrNh7qbVB+CWJh/97utwiyT2InZ3l1BO/sxaCG4Q1J211NxxT2i9ShGVeVEoAW+Y8ReA6nVyevWbMHJ03nF6gKQqgFmHCAVY9QZrVqNPM4q4gRIRAGYyRfy/az+hDvPQLodKPX5QSCzzps+Y7Wk5JctA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ARI+Oedx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ARI+Oedx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3650C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785589233;
	bh=2ZeTiFgeP4P16dSQnxdY/qJUWIao87MdNZzSzPwFQPM=;
	h=To:Subject:From:Date:From;
	b=ARI+OedxFswGyngIwHfodQuuOIbimk8fpY6EsI1sLLcZ6iGlUXNC6WyDxs0kxqF/H
	 YteHxZRUNfgjMABj4DtruwUR97OOsR3X59hgh9bTlt68kQgs7K1UYOIUD0okQDoYEm
	 /w9BZq4j2w/ojXspUHJenAH0LTd0Ol/a1EQBfIswVB45T1OKLcTBeFQOzJE53YlzTB
	 cNRB1ZQiYhF8zfGKekzoqa+JaYLqivjzDyMQRxF+6c1yCIYRVOhmD7Pz9I/JgyJ02J
	 fN7VyowyE9adeDNjvPyxdxP6B/Z3eqTTU1P1M9WtyoA9uw0GA+jtlAIkB0I/SfWlQH
	 PICVYVdKUFNog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3CCC55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178558923368.32672.3805248164880570992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bf22838660d5cc25753dd97b89c6eca669fc844bf32a543bcc915f571a00fde
Date: Sat, 01 Aug 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785589233
