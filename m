Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59CFC1F63D9
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791252634; cv=none; b=PRsdpmqgqZJ7xa9qEhC/QtSkuTD7gWa9ziuelu7kecxgNnXehtYESNgYUDdl8mEWV/ULLPW0AUjMOzXniVZzxYufVmtOCJO9cSejtaNdj8WwbvjxXmC1PehB2llAp2dDek0+spLdLrIrDyCJTPP/eAsxT4UZZE6wvHrJFFTD6OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791252634; c=relaxed/simple;
	bh=NpWJcc3lZiL/NrnYGn5k/USGU97j2n+Vz2x9HlHEvg8=;
	h=To:Subject:From:Message-Id:Date; b=Xy57HAKPGb1wZ9C+Gq60EQNtQ/CsiVpiCxrebI08vG/Vvcga6/PEaMIVVrq69tjJ7gN6EZmwcF6gvFz+mfwdxMPYBx8FywriM2UvOkf/61jc6wM4I8wWkwg7ymbaOag4aOnmXau5FbJVK3pMhiu09iFYVf5lRHiH3RoqAPoJ7rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUOyfmy3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUOyfmy3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA894C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791252633;
	bh=NpWJcc3lZiL/NrnYGn5k/USGU97j2n+Vz2x9HlHEvg8=;
	h=To:Subject:From:Date:From;
	b=UUOyfmy3vnrG/TOKRplGulNk7Wm3dWw1YF04F9yNGi7eiOKC2bTWLIL4c7SLG/yZT
	 ZNh3ImstiVUhGNRhoexHo7I1J5D9w6Sl0OijprHkyt3VUzV/MNhRse8ez74d9OgLjZ
	 FhduhFLuljCb2sr2FjcxDb/0iXMd7aTQhEtZa4/KsrIRxFOjgEi5bYOEuV4fDbZlx3
	 6nFlRpdV/45abSmVRqqEKM6DmcKABmQ6jVrQuaZFfpTXIoV3yAZ5stUSOul9Yz4HMQ
	 v+JgXNniGZ5YO96y/QixAlUbVUPpOKxf/K591klJUNeYDjvi5FUgcBcc3QbrxHt6VT
	 k6vCP/ikbMYWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAAFCA5FFE
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179125263369.30054.2204751866451488595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee08f9695953fe18cd2c192f4d1d0ddd17815d8712df741d6872ad4c0b766626
Date: Tue, 06 Oct 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791252633
