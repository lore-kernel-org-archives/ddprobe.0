Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251A4E56E
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727748354; cv=none; b=uXUjCzFC4gScmC5c8u6V+/SkkeN/CRYmuHpR7alBquD55I8cHUPUl6veXMSPLVCme0MMoL524JrfjC7qSY/eFCwkKzVU9cOJt2TW7BsHwrO10G/TMBt45q9thLjNsK0YVt3Qbk+DM3WVFs0QMZ9qcuFCnfH5QRwXCGDA9IublKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727748354; c=relaxed/simple;
	bh=J/nmM/V21Nx3yiQE3qykSEB5kP4CvVaiQ82VNosYOlk=;
	h=To:Subject:From:Message-Id:Date; b=kNeO6gDb1mv6rQ4XsMMAnOp/Jc0XAmDC1Wl3qp6UPnRsZCCkpv+lqO6VxLBJggQw4PLdDve0dcTphJLWYB7meCyvvtKoAkvYtEJpEa8qyFTVsILJ3GRxkA4dZaTbmrJo2TEqw7QyinWD4BaJ7Q5MOLQRVAA/s93y8AF4KCpro5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4xi5BqZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4xi5BqZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF640C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727748353;
	bh=J/nmM/V21Nx3yiQE3qykSEB5kP4CvVaiQ82VNosYOlk=;
	h=To:Subject:From:Date:From;
	b=i4xi5BqZ1FI/akGZrSrGtSig7EwxYFCOXEPSnzqolFl2Q57h8BE1jvKwmV4OA/ZkA
	 tU3ED367HyY3K3bboLF1jmS9u/+ry63t7WkdTnxiEd9xtJeZjteQoSRh+5/MDxmEZF
	 EnTpz13RsCSPUiqT9TcX7NMQn546z6kkbpfQ7I6pOixq0gfuGvBDelgceUv9VXco2l
	 u5QlAesY73JFvHBaw4xboMbq7jFqeQ0whr+usEhClDz1yI4yZ7E9YBRxbAUx8REZB7
	 tFZtHPbtPdW2MbYX4xNXw1ti/JZMoj0yIl9F9RJDJDYIdCyZv8WJoGTgmEouI0CQ8O
	 g9VzbCsxIJjnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9564ECEB2D9
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172774835357.3908.13584394125940398928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bacc80ddc825366d3be0fcf242400bd3a0ef6b484e40c2815eed405d00d81250
Date: Tue, 01 Oct 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727748353
