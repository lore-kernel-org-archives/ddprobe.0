Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A83434E51
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 17:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783447114; cv=none; b=kXh7QNKPbtTHhKBRQs3tWI8EDCztTUH/BnARhkH5jz3XPN+f+DYD7QIq6iW24H1JWTFPqTCCHJXQB0lGNx9eccijarQS/ISbe1o55uZshAebSDUpzSuBZ9LszXy5Ywb47cBg70QEbcRFs6MriYpE0oTInNerkYYi9pg6i1FYwdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783447114; c=relaxed/simple;
	bh=R5RqUbESWFVfHMLjaXwrSRkvUi0jnDwe7/R8cMdXdEk=;
	h=To:Subject:From:Message-Id:Date; b=ugT1ERnXS6VEMFnLzo8AUFURL3uHed5W/cN73KVpc7Csx64OeegwxZJA7h2oIODRHgBHRHt4QDnTyT0uUSlOpsY0nkYsYZXHBHdH2QUimSeKPE2bAD0XY41k3C29qNL9ePeq7Jxx/wHgTYwP6hlPzrgnMC1v2O2CCl42SHet9SE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwO3nyRN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwO3nyRN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8D34C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 17:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783447113;
	bh=R5RqUbESWFVfHMLjaXwrSRkvUi0jnDwe7/R8cMdXdEk=;
	h=To:Subject:From:Date:From;
	b=cwO3nyRNmH8ZfMY7RFSRZEcoqdVeNL9AeSRJey8pb/i2rzpzxtwt6xv5gCCZXTbok
	 LyofrTPr2cYYwwIFlYYs2SC0JsySZpbZNFNcIahSW2zZeLZWJlx0KzR6+UDioQ4AzW
	 0i0Y5iyBD2q7wt1fJN9DNHpBaY+pkMSs814dcfYAYJzRzI4Z/IJ8Nqv3IbkLtvsO05
	 OgIJWS1Y2GP4r1YanXMguheaiuB1awxI8nnGgtX5L6ZlDf9pFd3k0cQfqueZA6wWnI
	 lVk7wi9yA0V8na+d/gM7C/FSrd9oHITmLsx300WI/wBr4D4XWCKG8VYxDeBtQfIYg3
	 7XCbX2pKbh2qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8463C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 17:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178344711368.20156.11106913698472914793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4706d17f80bccd4366d0fd3177af80e565a565d5e84fdb06e07231b6ee66130a
Date: Tue, 07 Jul 2026 17:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783447113
