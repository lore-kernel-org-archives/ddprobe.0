Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD1D42AA5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728809754; cv=none; b=uo3/XrnBiW4NGG12LBvsvcTWDOuROYauD90Mg+06xKLNFZpbWm7mFCJ52L78zTB+ZcUMReRpvX/UeibKaFCm3p3bLNYooeOIN0Nczqa01pUVn4fHFjGX/y45XaT6QXDvVJmakYi3dvfIxpV/zxpk9KT7jbLRVRTngzU0+Qk8KuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728809754; c=relaxed/simple;
	bh=926t/WVl4zNLe6wGWPAs5gXjFMpYxmcH1MSjhO2yEbA=;
	h=To:Subject:From:Message-Id:Date; b=qo/MfeQ4SSo3BZK8Wvi9PJY2RTe0avZCgrI0ExdvL46bOg028QtIgG5LwVd+4G1RRy/78TGItDTa5xDCRmfC+uPmTAEO/aB93a3ObKJoWtIOPBd6NaMjELBo9A93LSei+PvF6OTavO52yzvdJ6C5yTHZPSkBlUJfI81VVagDbgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OJPdd7hk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OJPdd7hk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF9AC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728809753;
	bh=926t/WVl4zNLe6wGWPAs5gXjFMpYxmcH1MSjhO2yEbA=;
	h=To:Subject:From:Date:From;
	b=OJPdd7hk/AmkERzvYWDiDWIuof8XTm9grMKW7nzE1vRQTQvs5C+zvAKbSRYrvkd4v
	 kaxkWLvbEbb4gslE6BksG7pa+upqfTsics/iIX38ykcK1ASNrpIYuIOtllIoxIo3Un
	 kTezFkk1ndkpCtl3dCxJFY4EQMqLL59TPzjRVLJiaJSCG7twuGiffX4d8BQaNQlFu1
	 VHLcrBO9Svg+OmQaULzrBVMIRblmhXnfQ1hXtSDlLQYRMZSyBfLPavbz1cm/EHd5Dn
	 sj0BCi6sMPAK0NoEd7OGvCMl6c4mESy3JFKLZxt50ZsZx5c2N/IO76Di76Gvw4YLVR
	 0doOcsGYd3whw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C2BACF2576
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172880975360.8375.1363642665924400520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c501dba368ebc3a5d9914bda20ba2a179c179346db048fb3fd19ae4f3b603a8
Date: Sun, 13 Oct 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728809753
