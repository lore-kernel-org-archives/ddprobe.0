Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D681DE889
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751595594; cv=none; b=ujZo7txeZ2aAieE5rVgUr53CQP6LD54EJxHoSOrXZQ8OxhgZli8ofZap2Z4M9YmQ96VWfZpvVQApAxTyvlW95L9kzf8ehXH7B1xr8MXcHfvq8O0Lt2jxgvAdrHT6osDrx6iV1iHEl5wuSsvfFgyW7KJBUMLhn4yGBQdzLkKouyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751595594; c=relaxed/simple;
	bh=HEWPEHsKgMvMrSq0vUW8mmVyVr5/LRWOVgVHNSrR1Ng=;
	h=To:Subject:From:Message-Id:Date; b=q0aMzHCmUOGxeM66Rt1/WCo1ZjP4RcD/HRONbv0CwV/QF2UPfHB+FQvF2FF8xSGgPdqvpjFaWJFbRlVBop5kKsDH6Q8Ol4U7vyaH/ZYod+2uduJrrHyxtq5Dh1V4TLKGWyOGz0Lof7+HBhRvxqJn4gMAgx5fNkA/grdOb7gssaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lnVPj/B5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lnVPj/B5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB06C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751595593;
	bh=HEWPEHsKgMvMrSq0vUW8mmVyVr5/LRWOVgVHNSrR1Ng=;
	h=To:Subject:From:Date:From;
	b=lnVPj/B5RNn/BEAur4LldIHdrEq9dsEiREE7YgTa9wdVtZM5bgWHA+XIo/7e2Bas8
	 DtLzg0jI2HkykJznVva4A4zGCxMFrRZtEtXzHZ5A0Mskn42FnVzIbIxpu4jb8qU0lk
	 YH4+mtcQjHnTGF5dGsVLxawfswQDFBxaiLbl1yQpg0rLqdOCRzTm9Lpc6h4TomLHne
	 Z78imyJvEpzE+4/JsRI2d66EKk4qVuQSdQlJ/xPANqdwMEqqmj5vDkbw8CSds3pujE
	 cbruxPHKwBZU6PkVTdjwuhZCWbBhvkL1aHg8V2NY0PdImgdkyvAGgz/b9xen1HPsLD
	 crW51GZtUNuiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914ECC83030
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175159559357.16678.668686857049337864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a8735b26afc063038ddf7572deede4d7305a6b40d9cdaf80c9c31f490dfa2f0
Date: Fri, 04 Jul 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751595593
