Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412383FE640
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 15:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781795794; cv=none; b=L8UZjv9BZb9SuILY9hVgmOQH81/8RWUjCfKZ2bY+iep6ulYWCP5qpUjfEqW0zPfSWxFESGfGb3pRGTvuK9P901gYiFFhPc0488eLUJW2NOeQ800WQCVDwueW5mwWJPTqfCBJeKZmD/7PN87wFXwFj4gZTN5VLdxYeky7kchLRhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781795794; c=relaxed/simple;
	bh=nQp+9MBor9jCVF/T3pAMCOCAyZcAQsbV8hLZnSN7oRM=;
	h=To:Subject:From:Message-Id:Date; b=GTIFjYIg+BE1/gyFmOABrCUv9eXjuy5Uh7ZRhkbJmCykGG+HH9dOX0iPsUZ+Cl9uH/rgsadmbtdTkbv7NCejQX0qwsFGhxymHHWhytnHyQYQzkRw1xGncigDz/FQ1vODAXtNNmUV/LD79ijsJzZAkW5qP7Jsm+ka0s2+WT8dgFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=luAvoxzb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="luAvoxzb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5139C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 15:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781795793;
	bh=nQp+9MBor9jCVF/T3pAMCOCAyZcAQsbV8hLZnSN7oRM=;
	h=To:Subject:From:Date:From;
	b=luAvoxzbl22ow400ARWRUkiRNrdc3kiOj6KCRvGv2/zdJ6kHrI3fd7vOZ2atey6uO
	 E6pZ7JjCZASNK6hljx3gg4RyvnTS50SNctiK0w6IAhCABRHmde6hpZWL69CBBlsXaR
	 HQdeErNoeUHWEFtcy3aKk1XZl0WmiqXFadav4qYiKeKe0cgPJ1Ef/A5n3gRKks4Wt6
	 cuzMsaqO2Wj6t09uB0YDqzq9GvdSsn/zQfCBMyvjYw3CKARMFFCH6tWS15NChhCBMl
	 EfbF7wXVUaSFpI5qJdQ6WpiK6ygR3zQCZ9IzLtbCkBrcxwk6DZc9WUkKAQYI6JasrO
	 zAHR5lv9mG6aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B904ACD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 15:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178179579374.4780.12774903186801006954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dcb8ef04b3622577ffd2d76cf615cc4757262472519620edcb2be45d273bd48
Date: Thu, 18 Jun 2026 15:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781795793
