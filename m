Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C809169AE6
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742293194; cv=none; b=aO9IAQ8Jt3fMp6ENNvwsdtdZFnlasIEHuVaaEgEmegb3c9fwqpKPg44GcwABkfpoYDLTxwsXo5egI0eMAdP9AH9pioKxEMxjxkEJfoVvNpQ5eFNToBtLZNuyZA05OaHX0E+M2pobAb2W6mzFqTBhhJ6Q6LSAYg2XEGWPCm71lNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742293194; c=relaxed/simple;
	bh=wEb5t1emCEKd180tADrckYkPkQ0areydU6pB0hgqZco=;
	h=To:Subject:From:Message-Id:Date; b=Y7fzTrijwELWL/Gh1Qe+Zfv3uWhjWx4QvLuE/yGcmsFQUUlCKCg3GXzSHQz+nNfAEB6I68uGcN8apWT+vQcS3g2pUctto9JskARp+pIfTqKMdDD9SqAcsuJmKudkT8lW1+X1smkfOFIpyL7kIhVzVsKbPf4GinsFIrjFtpgP91o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g0cwYfKT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g0cwYfKT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAB10C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742293193;
	bh=wEb5t1emCEKd180tADrckYkPkQ0areydU6pB0hgqZco=;
	h=To:Subject:From:Date:From;
	b=g0cwYfKT0yMqnOTuahsYAb9eyzbTvT+5cyETe82ZCteqVUGpEhWXpxZIwEZk63/wz
	 PRtA1h7NlDxyzVwJ03N6H1ztt79zxtwyGjUDbqudKvm0aNH3QKX+EMUJkNpyQoQY+L
	 YbyxxkPAn+Ftdc/fy/xcIMstNqAAj1YeYWezSeOz85/fRyTcB92SvSZAYrMpUw9pWN
	 TsxhZkkxaz3Y8fHFlDbS6MHecVWvfJifvoTfUVXIz5pB5NSxsr3oa0rCiE0axRekXX
	 w1DKzt75AbsBj+W5Mirgg2j1KoXOTmbTJgi5s1V0k8K/0cen6ag31O1s4YVCd3D3QQ
	 OQ3UUn7KOEIJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4C8DC35FF8
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174229319365.17028.6365568225920544449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaa92700f6504fef8fce81376b8b708390a26160b24dbab2986951de7b4f1294
Date: Tue, 18 Mar 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742293193
