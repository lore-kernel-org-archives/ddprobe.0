Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2381213AD2F
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732684554; cv=none; b=S3H+DHX82qSwRlpYx4C1yf94mfG638TsuJCQYddrYUNgF/GLgxXVlnQoZzVLf9ClskFEDacMDh8JrIPpmmsNRZuOvl5yHIAaz303DPLwd/pZMuGnjr6J4NUkKMntMv+MtEC83GMNZOnISqOeGCJeDlQsdooYJr9o1Sw0HAz50H4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732684554; c=relaxed/simple;
	bh=bEkVMHR3QDyYSji2bhN1PxGybyyOHpOTH8HRj7d3UDk=;
	h=To:Subject:From:Message-Id:Date; b=i/Nc+MyIhheDipkleWsWpSEjm9PU4fcIn9w1pHphWOYleiSMRlkma6u6qUX52BWK0QeA8bUrYLRKkdeau1lRyDVFcpEU4y5DXYKBq+SoNCavBPq4+QrZ98pQjw3/pMqJRUJK3LMvX6oRPfFOyzPQjgwVtj9aQJnf0kXu9uI+yYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CbeK7b7k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CbeK7b7k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB967C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732684553;
	bh=bEkVMHR3QDyYSji2bhN1PxGybyyOHpOTH8HRj7d3UDk=;
	h=To:Subject:From:Date:From;
	b=CbeK7b7kUeJPix1WbDDuFJtj2ReZ2mliUrtmJJyDyniJ1QdsAQnDKvRCLpa+YNN4Y
	 fu5EXKdUIJP5eOgfg7ipxr3hKy7kg+8MFxg5A253PJNPF1WUl/3Dwh7F97ei9fEF70
	 7IuTQrFOCa2/V4jBUPBn8X7+a8moFTB++ttOcDsatfLoVRv6jOAeoGJ5gdUQmDXQiP
	 TDeSu00pqUJlNS9bXABwrhNoGg2mVxcJBIF8sykUDIkYmDGSvVwi2sUEeYPgFoIJRH
	 8JevqO5kxQFigJjcpKcro5FDncAlCLbzQsCLODpD/5mNcb1fI72x4SWVLxxhGSvBkn
	 H4qOTLUqm/C3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925BCD65521
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173268455358.31839.1303329258598061163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68d203b416dc0eed8d297fef1c508ba927fecdc483ea2c40a0bda36f7ce201bd
Date: Wed, 27 Nov 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732684553
