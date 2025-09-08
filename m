Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DAD2FC036
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757335194; cv=none; b=n/3lbAu0gYLbL58o5Y3ARIzN9cReykqPfxrt7PYLDY49UnzVD/D4SA0CYDR7IiWU+nPF4aCbF8d+wJ8796/H8Txb1G27t6I0PQfCChSefT6Se3aGvQ2OMNoDCdmB+7LoNG6FwSDhNG4PHHvSUKoDiDLmce0DCgMnEtvZfwvuSFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757335194; c=relaxed/simple;
	bh=FOhsT/WRdP1enSlLkPHDNn0z6JRalDbVX+8Ut903M5c=;
	h=To:Subject:From:Message-Id:Date; b=m+g2BSLkTQxvPrrF+14CgnW1XzitzRj9j58/UKFHofL17wb9+IRwPczmOxVCRqcp3wOH4m2Mx0rtpiIqqv9A4Fudhs/KJa82PirV7ruQuG94ye/1AtyB64q+C4D044WbTi5q4VCCiGuv01AXxHd3vV0zj3b0RdKXXoi+rJl2LJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ygxlxi7P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ygxlxi7P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECB0C4CEF8
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757335193;
	bh=FOhsT/WRdP1enSlLkPHDNn0z6JRalDbVX+8Ut903M5c=;
	h=To:Subject:From:Date:From;
	b=Ygxlxi7PH8+kZOYgoSx1OdQIxEgUA6WX91KeGkctTp53Gc8zKw5O5LTWOtlnv7au6
	 r7xhJ1GjDccBYW8+JkEFRU47e/nNnj7qBwZEbvAAYLyIdbRJgNnC1kPgo/EX9G/sh9
	 gZehbxZm6ariCc/XGxJX1jMkNPCmvGHC5VXxn9cmBzppSg0xsn1IyqHrLLahMHzhey
	 D1D01stNZmiWvHTmEY3R1Wo1Sm+3960KYNiIt8+SePHaTaMkEQPwo98c7TSxH2YC2P
	 DT0WAv4ENKqOwogo7Xw3HXu9skGPsgDoDKZ6S8KiQGk+q7q5eOaoN3E0on6cqCP26g
	 fGLiSEiZlm4ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906C7CAC581
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175733519358.12271.13537944222090050924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1b48a28ee04884a44dd861bc078d1e3849e32aebe53c35b85e866d2b2a1cd1e
Date: Mon, 08 Sep 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757335193
