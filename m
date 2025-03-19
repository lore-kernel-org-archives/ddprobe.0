Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4409122301
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742343594; cv=none; b=i98VqWJN0Xh/p+VL7YyMSzNx3sgJDf7XwPJrf8MfDNbUa5Zc4+F/LeUBkzExJHLWd0edBZbFsnYz6ryQ8ThsVsLdN9ipfBvkupI0Oy/6UTtoDScUc0F1mZbvR+ENxfmxCM/35VUq5iqk9ihnw9AcXkcvQdQOdOI5VMPDz9D1WIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742343594; c=relaxed/simple;
	bh=HxUMrNPqu/aYwlP4J6sh35/tVCsNVcBvgzG8MBRlEHk=;
	h=To:Subject:From:Message-Id:Date; b=YOxBBQQWZAgxbJ7xkRcTa5Bltsra2XYjYwx9XWWkWkG2IhcmDnW4+AY2Tq7ZrXKFoI1zNRj8oYJVQUjgbHgpYSVk2LcGkcm4/i+dWBMea9pkAsI6Kcs0wBWnXlsyfxkNpg5iwBV1Z0HkuDaIyJmEOpzA5Z2X09jq3yjO7/tQA0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jAvHHekA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jAvHHekA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B245FC4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742343593;
	bh=HxUMrNPqu/aYwlP4J6sh35/tVCsNVcBvgzG8MBRlEHk=;
	h=To:Subject:From:Date:From;
	b=jAvHHekA9WnJ7Z711d8cmB9gkVOJgAj9NlKzV4DFvzLblzyOy+EuGFBttccGByGwB
	 VgLrPI5PEGIRAg+m+Bjt1Cy0dzEWJea9OCRZZyYpUBIw5lSVy88b8N6471X3jPkPth
	 wCLSsBNpKOdpbGWOPJaOnQVCSdr8UEYZnDk/v29mEqgam1WgtvixROPkKVycpbYUMG
	 izTUd0eVm7ejdtAGwvEhBXWXHOkzqGhm40Zw+jXLUVuh1jdOocsefSYB1HBCe4gt5O
	 Z/rOcDcw/F2hFay7GTU85oE5yA6zRuEsQFqHZ3Sr+Jz9V4PXQt+Hqm0LMdc83SaGkx
	 8X0CUIpcO+MtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA70C282EC
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174234359361.30773.2805480538817881104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bbc1c5e5fa4abfa7d988b520b6ca9229e3334a2ebbb48270bcf7d249bd27e7e
Date: Wed, 19 Mar 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742343593
