Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A731CB336
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728932754; cv=none; b=u1XX/qHb1DN62f7PT4eRghmpi5dQbt5xoyfFcbqerfz0xzmNX+eyaCxwBLIL54T3vW5Cg5Yr9EnI8cbnbBGiesRat/THO7N3NxInIYDKXdtniKSVTQ9NpgRcUz+Hbp/SXvwTk34Mw6VgXuDfhe4F5Jck98dTCsJUfsgi2kQCAQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728932754; c=relaxed/simple;
	bh=WmuE1UePoR/dp9fSZwqq8fcHI/XF1JfzJShmV3mYLoU=;
	h=To:Subject:From:Message-Id:Date; b=ahSVlkumXgzviIFFO5WXbsvcP74yIG1GFpICmQQV2m1eYfmjujIHyaMyNDwhQMMe+HA72RLyk1pn3qQn9Lum/4ccdSynM702070TfYC1S0dMFGtsS/OwW6RUJ1DhYwIsR30JcKuPE6LLTlsFIXtfXa3n4Owech+fentdbHa+Q4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gRK2GZNS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gRK2GZNS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C225CC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728932753;
	bh=WmuE1UePoR/dp9fSZwqq8fcHI/XF1JfzJShmV3mYLoU=;
	h=To:Subject:From:Date:From;
	b=gRK2GZNSNFOBHYuDmAXXD1ZiwaUBH7HWOlPC9zN3DAymlWivilTJnOjXbTvc5LCmJ
	 KpCYXwr2CTwwYMUkmfbE5AGnvCfyQSbn1/vwKVhHdrUXi2IHB/OZRpFv6q1EFqrVD9
	 TejLfcAjSV4LaMHagfhYLXAu50lgF2Jxq/L/uYCgIVGCOPtG6UramwTaP7wv64WLEF
	 ZWJDSRphSMNkDUeYvZfCPcUvJQ0Uavy0GbiN2226DNLu3atdSDttfdycFQkQ9qe6YA
	 7JpkcZYWsQ7lR0kwoKH9fQrsOh2SKceBn3NrYqwtTdGx+XK/cE4rVgJGg5RJvjCy0X
	 enkMbwxgGs7jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97B6D1813A
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172893275368.11643.10263025886474397200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25750c3267b7057715fccd0d9e34abbe66bc35e554d6895f4567db7b7fe46796
Date: Mon, 14 Oct 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728932753
