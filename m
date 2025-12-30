Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1085519D8AC
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767087834; cv=none; b=NWnB6ld+hZEhkw0h9xdrNhLnTZio6QKEifdeDjrYv7xypmjVNRdtP+zvdtXOkcgr7YMjzQM1e94/RjUh3b17Lh8RibttRKWqf+xgir6aoxH5bBiN1S5puMVIZ7WbP+CucPBKh+oUu0nEiWHpqdsJ4EBqhmWrX9qAPbwrSazGrRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767087834; c=relaxed/simple;
	bh=/5xuZ7Lq17xuA981TtvjQCPkfA0YxbCXnTRQoViJowQ=;
	h=To:Subject:From:Message-Id:Date; b=eVTbrOLfHlwz/+QKxq599A0dgRw3dY03AEFEPjMZ0YTVMaJo9u4hZjxkqYFZdexPxQWDl2StQVEBQ/luosiFDE047Er57MrrJk91oD+ao2a4W3uGjYo0v6f+4vpQnb2vwPw36ZsRGTUpniJJvR4S8om1w68/NiMJRmMNouZ5ZMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HBhTj0Ge; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HBhTj0Ge"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3088C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767087833;
	bh=/5xuZ7Lq17xuA981TtvjQCPkfA0YxbCXnTRQoViJowQ=;
	h=To:Subject:From:Date:From;
	b=HBhTj0GeU7+9lni965c5joPYGOiB3uNG29mnT2UOJLvek1GVWJv+iC0EoumIQuFyB
	 6HWCYRRSogamcdt1Q3il8BH54y0qva9rluAIylFwTIW9SgCqEtwO4CH54EDxb2sbgC
	 Ce5zHtpXZeiEHc/ETfY9YIGY8hVIsrJ67UgO9qAdzHhcSrXGPrfzhA7b62t+s+pCw0
	 zFsq/kzBn+RH60bQfMSV0VxTxgWDUxDZHV4+0nvNj1q/wXwC5/iA3Jw8m+DgPkgpgU
	 BlO26QegMUtsGZPXC801J2sWRlmbQAAxwae2uu0l4l48w1fz3WAakP52WYrqaBDou/
	 W4cdJT/PxyPgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BB3E95A69
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176708783357.29607.2616451674719094664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 141c7fd93c57f880164a1b7c1716ddb3096a6be13b3c61ca92f089d50019d739
Date: Tue, 30 Dec 2025 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767087833
