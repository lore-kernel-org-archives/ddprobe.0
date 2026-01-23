Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F5333F374
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769129034; cv=none; b=npU/SWOKLuTlX1F5CtnB75Cf1VJYUjAuQhx3z7BS+uSjGTeayFzTTtNdQpJf9Mmk8/AKcGJ/BxoaxWC1GutivyIfaIwrPRfYDo7Bl9CMQ4WuGSp/uAanLF8KkEgUoJteIE4NuvOR6UAha5MTIu0wAPWZrVrOn58VBwYqiFBjkt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769129034; c=relaxed/simple;
	bh=6qj+wJWPbk2GWFzTBKjgIdN5p7r9SNitS4QS7Im59ko=;
	h=To:Subject:From:Message-Id:Date; b=F3ykAmVWSZgQnCWSWEQ7OnNRjzkTPkxoXsJwfBvsP2jgLTyXcr1OVidfTaORRnhgo0aNFg9NpoALI9A2+Zgki61GkGm0jOpYJQcSi40LYuvLru5z6rczRzQu+ts+p02UYjzhP3Y0NYXC3rZ84q0nY3xfcohMhMNEfZiE89i4WE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sOrjvivq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sOrjvivq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD38C116C6
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769129033;
	bh=6qj+wJWPbk2GWFzTBKjgIdN5p7r9SNitS4QS7Im59ko=;
	h=To:Subject:From:Date:From;
	b=sOrjvivq6DIedWBOZYkQODhO88PqrTnoSBX3EGDYkcJlAbZIzHAdLGnZD9MmCpQfJ
	 iMlOdF/+LiC0Q65SBGb3666iY02gQLWvwTeOB/POy7vy2xyow24q9E+C7KIUNmGlZ/
	 3RPZ21Q2TpZwSiJHS8cShouHry1jr3lLdIxTzettafJKcRhZWJDnARZ6VwZTJoVAsZ
	 CMrdoVuxZpA3hkaWW6oWIsdHTR58H89ZsA2MQjV6kkpgxSgRmRPX8zPzlCMJjOQYZS
	 aLZkTAXRflR9MfSDzqolM9T6dgZF4CRlE+OgDXnm6ImGawFYh4ZfL1g0J2SZXHsPql
	 g/C9myQBnlMJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908B6D6CFAA
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176912903358.20540.11954489349052197132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d98bd7cd95d1b6a34aef7e016574843f42bf32313b6c86b8eb946f7576580f0e
Date: Fri, 23 Jan 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769129033
