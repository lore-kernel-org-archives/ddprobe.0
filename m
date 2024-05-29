Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EC3B167DAB
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 09:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716975263; cv=none; b=oDd5VSA/md0m5q7a57Ro8tdf6FhsblJikNDT+VuAOm0a3i5g5lZras+hPxwixO9T/NF8KSVBVTNcSBEDIdurqDdCElEnkZa5b1KMjmqG8UQU/vlmp9Kp9zuR0iTIb52VXeV10aCyMRAwdIKLrqij3mcvciNGgL4WAuOnGAt9QwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716975263; c=relaxed/simple;
	bh=ruwo4Iaof+KGfc5pWX9VeUE05k+gcuuDRE/nAXJR8QQ=;
	h=To:Subject:From:Message-Id:Date; b=N/SfghO1OHGtRXeWO/ZCB7TJ1o33aK0usx37AbJteP+LclTD/xLnXdqxtZvfLyoQ4QVXD8tjqHPj69dHj1djY8XmbIWxzWeROf5yAOTXa2+5c+pSbRrOJUgLUwfR7xy/0HlBrUQDTU+XLY5HC8lTa/3RcPTygb+kQ9eIZONHlqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LgmP9FT8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LgmP9FT8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1957C32786
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 09:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716975263;
	bh=ruwo4Iaof+KGfc5pWX9VeUE05k+gcuuDRE/nAXJR8QQ=;
	h=To:Subject:From:Date:From;
	b=LgmP9FT8m8XNUDqYQwd4VZHmSAnFLkvdSPx6EAPZ+Oh3ASryHUk3Xv6cmuTa0humW
	 l7VKXskuhOFOjYd2Wxqi2nOFMwvrySya5iUAYmFlWVS6aZqSsDaw6kwuDFnKslsW78
	 gy/8q9rhbXQX/DB5TZxfGYFVcxa8odVtDUgLJICREY4tPg/qKUiaazIzoY/ZeTkUne
	 5JuCOYgzXSPQpcwYU4uyNgzirj1Yn0TH2T2nFfg7L+isd/1gLOjbRQAmxcL3gS+zSg
	 poZFDjxRaRCsUQQlK98y1Kudr1O0raCKquCSQu3Ccmpn1WMW0Y0ubpxKcuVaNR9H3M
	 pMGhOnbOh4twQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2134C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 09:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171697526284.29984.4830710213968888435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d55670ec12d10e424b65f1848811aa430c330564947ea8dad31320ace1f96b03
Date: Wed, 29 May 2024 09:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716975262
