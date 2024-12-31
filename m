Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1443A1A8F8E
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735664754; cv=none; b=IQ4NIly8hbYgIn90z2OhZrFnm2NGC6S7U7EWkuv16b0vrFpO1HW9N5BmfkVFpeFEGK/mjsHshoxhbKyrwgOAsfn03QbBhPY++W9IQFPUqQWIgTDNy3ZBBpBWHHe1czS/oTB9K5MNOMHBs7ljf2LrQcVpTYJU2pOLvaJVd4gUkto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735664754; c=relaxed/simple;
	bh=4XUrz/iRhhw6e8BIEP32oHG77XDYX8AUZBtNaBYmnRM=;
	h=To:Subject:From:Message-Id:Date; b=FGfBI4ePVIiuFDOjUj9QT2J7WZPdiHnw2DOsak5QzY+A8mxGATDO2VpVxG+EafbUngIddyrCnRzCt5axcdpQGj/jIenHKrwn/GeJOmRj0xyzL9k3QIhoprnTygjcUjtb/9AWSIFaii7dOp8minUBMSOpZsEZ/gmcyEhjMEc/cvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L27IUdJX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L27IUdJX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD8EC4CEDC
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735664753;
	bh=4XUrz/iRhhw6e8BIEP32oHG77XDYX8AUZBtNaBYmnRM=;
	h=To:Subject:From:Date:From;
	b=L27IUdJXdplNon87U5zKadTWmXHTIWcVupkemfFy3ykwYpjehxmTjQZC8FbOK8llj
	 Q+JZedvQ4SuokBp/7DDVZcrhJFDayObDiISncy8Ckym20MxSIp35sDzK823UdThr24
	 FGKJjtjmg3IZjMoIG9WeZm9mwOpqmh/G+pbon2OrcD9hpKI4ejuZJKqfX9WgD8L/qQ
	 bi67f41pBdtLVSoYaicEMmJ18KYwCg+5iM+SDnwa//BxTRKcV9GVXw+yuUWUuEznR8
	 HdCgnLnCAUFwFSAXbzE/K9MoPyQ9tQdHY6FWTffMIZ5uaNgoHwdBmnnVMLB75wa7rT
	 34QyiEu+Y88ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98636E77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173566475361.27119.7913721196560173729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2921f211c49630fccb767af488adcef6611e79e3aaffe5f24943deca3cf42b8c
Date: Tue, 31 Dec 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735664753
