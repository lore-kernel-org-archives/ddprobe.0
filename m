Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5B17811F9
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710856097; cv=none; b=becvKn0WUOiLZuWo5gUN0lclDZUP5vdyOfHCtsrT4a6P6ivE9e604vNq4M4rotTmEPJ5V1gmWGvel4VzgKafKP9owfluQYTfDZpjPPI46hNJ8iGKH14kAnm7JsgQtnUhmlhWcEoCgqYm5qjDZfkPeVMLmibxRW26Y9nmFqUh1Bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710856097; c=relaxed/simple;
	bh=rvmysGakyrsMGfw2iUzUBVRKciAJYzn+13FNRzJCR4w=;
	h=To:Subject:From:Message-Id:Date; b=IyXvNiu/oPwx0vUqna1rD67x9PqaeRzAU8WgPFkcqw+oJWSnKgk+PhozVbg9JGpLGbUW/kq9Hcw/wiXNRHsY6ao5+BL+GalygX1exo1EObm8p3pL2fdJsLXmrWZE8RnkhBNrqc6OLgVaDgTIdUp/ChJ7Ri0bmwVOlhycSmqzR9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BpXRGRYn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BpXRGRYn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A3BFC433F1
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710856096;
	bh=rvmysGakyrsMGfw2iUzUBVRKciAJYzn+13FNRzJCR4w=;
	h=To:Subject:From:Date:From;
	b=BpXRGRYnzGE9cWiZiLO7ho/gu9EcgQzQVCo4gh1MjrvMf+Lqs9bJwibmCHtNiYLu4
	 jHKHlPH33K0igsGA1PLFACcpUCNuYbrCZfhMeLds0q3S6+bM6a5pjxVqOh3JP5AOoa
	 Zw1S059H9g1oYncVX56s3IlsadxZAJEisheVVWtiHfQ78ovo+nCp2cbdxesS/zayWc
	 EoQJZ1AIAq/g69lCQeI9w8TINO52Pxacc//PtlAEbWN5wj6Rnma59+iYLZkRXEvHsx
	 kerRSfh/ovMEAQihlSAtBEvuazE53Ujy4fY200aJ8E7A4euxcCA6viFLJbCfsVzsSf
	 /HMcoa4SOBFGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D2B6C54E60
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 13:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171085609637.24310.2748555396759747080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50a91bc5cde036aac504fc9771e4519dc44ecb008995e4beb6fce6faa34d7e9e
Date: Tue, 19 Mar 2024 13:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710856096
