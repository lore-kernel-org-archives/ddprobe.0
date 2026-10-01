Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4004B3E44E7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790880634; cv=none; b=BqyrZIzQovcaV5SBq7DHlxzGmIJtx2HmbBbkIi5vjpfRIvrzuU7xHHIcHxbp+brSiJOzijEu3G+wK2m3JMIskheWZVCCIvmWgXxuwvgk91Ooapqn6nu2GamApVlY2c6u1NoAQFHJ0PNY8B8gKpFSqdvVc9haGxoHpyNgzWt4TPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790880634; c=relaxed/simple;
	bh=9ccX+TpyOngtct3kuYxEuMIB/K0d55jUVN3VlzCjA2A=;
	h=To:Subject:From:Message-Id:Date; b=JyRDg4PyaHQVAgNgM/aGG77cCBG4fKDe13N1Wlzk0Rn1f7UrcB6RnW+dtn/ZlC0olyhBioQ3TxT6fX2S07vQJ764jqcw0+fFJo1+g5fdsBwP5ylMciLGnZxJL4vD7QBBUrFvTr7jaW6wdhmIrvPwWpGHHHSq/4EcA1/k9YIgftk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XKhYtvM5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XKhYtvM5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AB6C2BCF4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790880633;
	bh=9ccX+TpyOngtct3kuYxEuMIB/K0d55jUVN3VlzCjA2A=;
	h=To:Subject:From:Date:From;
	b=XKhYtvM54XWIQePJHgD4Qod0utxSB+UmShx7J/OSzyW8HnLHGx7fW6ws02JWTrXxa
	 6JrkEg1Qc1OJKIkqZr7i+8lIV6E2MuWfC9KXRB9UZ8M1zeJkIfJWAUApcNxwmE5GJc
	 3R7DZbjU3hk0C/VeY/MGSInr86Tzzcch9XMR2JdzUdZwNBW5THyB6i9yKXYRdF8vCe
	 +z0s24fYJzOUd1O4WxcBfd6cogtgpMzPBYplN2cEvFbZVijUCbZUcWJ8gdCe+FwIvS
	 JMma4w3O0KyNaTobjdFZd+EpbchkHmtAn4J+qpgnvB8ML4agIomZW3zE7wxAG4vngZ
	 8jwh8h8mzLYIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6C8CA5FD2
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179088063369.1501.8029526286921106351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d4e6a5fabefd81970f64f2675876a9529a20742acdb01434e8b645128192510
Date: Thu, 01 Oct 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790880633
