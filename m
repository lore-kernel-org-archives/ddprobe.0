Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3CFE2D6E44
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 04:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764303174; cv=none; b=VJ9v+9hdTQqqG2ipqEmQRNpSQ7lmyuaEs0JmETVwpt4E5tnJPyCaorfV6ft7SNQp9nszRHnlGhyLtVxMnPYz9P1LA+ZULc5tWDReodBHkh7lRdDH7HSDefmD9OtALDDBlthdS+vg/y/RC+96j5KDO9A67+lhNFnoPMt1jU6RiAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764303174; c=relaxed/simple;
	bh=/aB04U08HWtQ784Ki373y6OEVFIMpN4HBjyBV4TXcWc=;
	h=To:Subject:From:Message-Id:Date; b=GysK4gNibchJKB9s4LnTeyAPY5xt6ad1CD2CHHbi+xZHyyqS550//6hQmMFOj2CMwpO64gtuvZeQceh8vvPaesH5LIjDUzqS94iekioOUc8jaebcNUNTFRoVjl3dXNbIMgvSCfjlwfpqcdg0t415AaWfh/qLPa48Tm59WtcdgTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HW3EmztP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HW3EmztP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1996C116C6
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 04:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764303173;
	bh=/aB04U08HWtQ784Ki373y6OEVFIMpN4HBjyBV4TXcWc=;
	h=To:Subject:From:Date:From;
	b=HW3EmztP5M977vi0W2EmM10bxGzM71H16Og1calDxxSoRKhkqcnY/AZRYDRVIxflL
	 MprJIrRXiqa3qaXKO8KA726dVdVV2l47+0l4vMjKyb4a4DdFC5K3UyIQlaRV0KYyMr
	 nJ9rSFIUlvIIfypRhmU9yU8VdriQjnRoJPZDPWtRGjTKBQns+I6dUn453hgdRYs1+7
	 1CkId7R/VxnA+B7ncPeTeJfw9IhAX3vvFU+Nf9N31chl7ctoJ4jl8Y98Sn87Yj018Q
	 bj6Ey9m6ZZy9ziljrahzUS7RZr58vEW5HNDO7oSWujCyu9EqAfQBFPSG1+zcPnZp0X
	 iiQmOlMIwiTFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA24D116F1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 04:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176430317358.2004.14706227541792202513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b1e72a7e1a713c02bdc509c28321267308fbb52b1e82d551c48b5d046ecf412
Date: Fri, 28 Nov 2025 04:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764303173
