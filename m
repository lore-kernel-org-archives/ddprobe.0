Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D381CF2B9
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728586554; cv=none; b=a+uKlT5gDypVO8m5qzF5z+UH8NGdZe7dCOssl1SijF+2MlQZJgQ7M5DlI94doSQ172Mo/WK/w2TCcsCvGhc3EA9yIYBwqPDF09ecP7B1kJrAqpGILbyES3BBxMRoyc32S7US1L9PZJuXMkMoCXoF38hAQYBx3N5WEI629V2byOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728586554; c=relaxed/simple;
	bh=YlfpGIiFOiSG8OA3ftagTuw9E6GYkvJfy2TpL6JvDzk=;
	h=To:Subject:From:Message-Id:Date; b=cvweYVoClPKNIUZBRtM/URsst7ciOJPBtREVh7AD8/3Xw7DZmPPTHb5Gwzj6dnAawAYlOo1t0cnQdg5nuw9La7Prujx7rOjOy2dshg7lAFnm994IItjuxZ3SHIB7FkV3kCljOE/Wcnv95757+EU1oZYPhUFgPPH9x+TOaJVvwv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aeCKzauf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aeCKzauf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71D3C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728586553;
	bh=YlfpGIiFOiSG8OA3ftagTuw9E6GYkvJfy2TpL6JvDzk=;
	h=To:Subject:From:Date:From;
	b=aeCKzaufZohiVUgnbyKAVdkJJNl0TnrVad0T6uNXKz3HYUEh+s3z5U71+k923SYsV
	 N8O/PGlvk2+RKwgjATrwJb8G+073furqyMGjQZuFxISrm6OndZpGubynfDTe7mXT6o
	 hSEOpBP4dP3dsaJlU3gUp0A3K6j2vUW4uST3/OQONXnYgVxPtl2XsKAdCT91KDwtxt
	 PLRoUvzoOQxmWq9L925gyQjRlfVX0xMczZVriniXFFrTzHepbFO1Wze3W4NlabwiXg
	 jXGl8dAEYM4ymk1yo7Q+CqdVdnET3ou921SWWLTl5NQGpE2xKLXfD+R7PLxjv/iRHh
	 SHf0UJixH2EeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F46CFC5F4
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172858655361.15509.683790252776039234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23361c6eafafa37aba86ab05e69a84b2f475b2459387bf396a6f660e09353ee1
Date: Thu, 10 Oct 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728586553
