Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B61C3655D5
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 20:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781901394; cv=none; b=pPm4wAM3WxMUsbAweBCWgNxO9dTeUOSjZtA9+iKBFgWsswOt2tn4Haj84YBH8esIq/Ln4kXIFR3UtJ9ww7uVgy5JvPGNOOCPAX4dQ34u02OYwCPbDQ1xLC18w72ixXjTlbfb66GmKnRQsVMEt90P97M0AJ/gZ10rf5RFwaat9SE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781901394; c=relaxed/simple;
	bh=9YCKEvi5O0I7cSzil6z+WC75tJxvCkcDxa7RNFrnDNc=;
	h=To:Subject:From:Message-Id:Date; b=RiPiTqTqnxySbZANenopPaiia2HEJqDDGk8AgCI+7rZMEXWZv+3nFiHOydVxukMUyQQUQE4Iqfj7N3Bt77H4wDgwsSgXZqNn7JQ2iL9Hb5UEQyOQ6++0gc+tvHZe101wBPoB0nXW+EmBRiiHWXUMXQvNmVcSiQbTr9HDpryVeaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5l8fVWj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5l8fVWj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD0E8C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 20:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781901393;
	bh=9YCKEvi5O0I7cSzil6z+WC75tJxvCkcDxa7RNFrnDNc=;
	h=To:Subject:From:Date:From;
	b=s5l8fVWjRdoHTh3LHm8Wt5NqQu/uBaeZEynbIyixHX00eoHCaBLGLmmn8aPWgIyVc
	 zQdgVm/vkcxH+Z4tiTWUXaQL1TDjVFy8CDZs0Z0W/EOx3jg8sDcWFaa7qdilvK903T
	 n7rA7EXB9UFls3dgYG1/95p4nbe2EkRcDTqPK9iHVPrhPyTjqeAgkfX8kIAeRFMD/Z
	 D9JuNUuP2lt4XNm6RGZ8LIr63iXuPJAmXTXpairI69+VnUiFRDGdyYIN/dOr7GxNhT
	 3FLMbDJY4kIgSZ2mxuKkWPYDurk8GH06DlJL0helgo+C/7u6w6OUI9S+7gpvnJtg3d
	 XImbEyrzkBHZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAAFCD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 20:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178190139371.15328.426611526605623606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d26e088370b5f5c4d823ebdbd1dada4101b258d9afcf3934bff60dcc7bd2cd8
Date: Fri, 19 Jun 2026 20:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781901393
