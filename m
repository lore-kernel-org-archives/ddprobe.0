Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4966FBF
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757840995; cv=none; b=ZlZacUEzPV58hQM42NhlkM0cNS69j1TsN+O6r+Ma3qZe8KeZbsH8FmVv8xCNYIKYLfR9/VVbuSJRppmcyQVbtq2AVaGPfh5jnNKVsQFCGf3+NLESMvaTuLYpeCQ59idyo1FVcSJ1+gH5sZsdGXHizwXGpj3DUZoYfk5gctbMlBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757840995; c=relaxed/simple;
	bh=yvVacYMti3I7y1b0MVkFE0A2fTBYvj6iNqBJ3GHH0/U=;
	h=To:Subject:From:Message-Id:Date; b=nQEMPh0A45OjUQQRvT4YWjvtuGBjVPvtT1liJv+wO6/rLGi1iw1r++W3pHdhkYAzAHoKTsAzSOYih3EWmxdghVos3Yi1vDPBuxgMj5qONOFHBKTpcst9U80INGM9OuY14jYsm3NFUmcW+GAevpQTtHAzB1kJhu3eJA6fG4vxhxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mbOFNz+L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mbOFNz+L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AF5C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757840993;
	bh=yvVacYMti3I7y1b0MVkFE0A2fTBYvj6iNqBJ3GHH0/U=;
	h=To:Subject:From:Date:From;
	b=mbOFNz+LWS+Ygii2zohUVI5rycxQ51bHn6dWsD1QPWha7ujP/1YpdKSrgNPERFeN9
	 mBxmumCefF1plrqJwJqctXTc/ybXhfHGVHyxS/i047qt5BBpWeA4JeXMrS4K6YrQU5
	 CwVjLIOXKRm+1tHVChUcUiwlwS/VpKi4CADxzDuhbwNFhjrO0m+uK8Jdejp8vi8zrb
	 h7ItkJAmyiUjsBnKz2snH5JJxWt3VrrhQhtlYryThmWOOSk0TlPhdvUWhDm6jUp2zN
	 ULH5IICua8ebeabPVd4DmbzetFxsIsWmEA4jz5RKMGSrzbUqb3TBS3oMjDst8osb8l
	 lYloCMvPqe0RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92353CAC58F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175784099357.22681.12916835952862439353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e62e6cf3360af3e83f15253d81bdc7d8d44bf6122328973a9aefb0ac24b49ed
Date: Sun, 14 Sep 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757840993
