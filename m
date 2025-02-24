Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296162192E6
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 13:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740404334; cv=none; b=rKyp9WaKBeiqChjBisO9xUMQd24UbltiM1cKDv5yDpdZWj+6O7OcXF5PpJXVLhDF6/zpqkz9V06uXzmB397o96UrGOwf3WV+9XZ8TuPn+UctdkZRsVGPEcNh6v7fACD65HcWK1J1xRIq17P4tz7ScREjcaIRXRxbs1sKCDqofOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740404334; c=relaxed/simple;
	bh=QooQHfZSoI2LA/9tpRtKBRZ95DnZKdZsBrKV+xitDF0=;
	h=To:Subject:From:Message-Id:Date; b=ql1YQLcWDzA3pNRYGEqrL65XyckkZ41JBpnM16euWRwb1xj5LTKQQflegWQIXxLvb/43WBCVe7TEMwR6qiuCtmRsNa0vZfgmIiOPEI/InhxFS/p1NuPjpUBH0ecAGcpb917HgYFQ10deGdClpL9j5Le8wxsgWv+ZfXG210Mr3go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QioPi3nq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QioPi3nq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A273FC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 13:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740404333;
	bh=QooQHfZSoI2LA/9tpRtKBRZ95DnZKdZsBrKV+xitDF0=;
	h=To:Subject:From:Date:From;
	b=QioPi3nqvNl/ckltOZDAS+/no2nx/z8jr4Q84GVF7PoSXvtK/RWnbOOk34vcErdaa
	 lIEAZ8uYEhHaDJHiXmfBeACmDHD7DjfE1FXBmzBV+NYMsIwod6ozlBbaYEtJuHpwnL
	 m6JlxgHL0jd9tZu+6xeYtrh/hC40YSSBBc8+k9BMdUbTPDxKQdse0/EYCdwDe00O/8
	 mxDuXb1XXGWqeA8oDLYv/uasZhB76TbJI40Lr2NrcA4SE9HvNYQ+Jzj8R+lyICfgVv
	 gN2giXJjj1Qo0nQz7EQ3+ord0Kry8R2TG5+Bh1lITQ27kb69LWKOxhKjMgVEHU+GNw
	 rXtjnvZLjg9iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CF0C021A4
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 13:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174040433359.28488.4064638373881051918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f27b54e7b075fc70b34df23e2104b9d016b0402a19d11e233a986722ecdd527
Date: Mon, 24 Feb 2025 13:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740404333
