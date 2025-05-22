Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A749199FB2
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747934994; cv=none; b=KzND4zwtkdpKumyEX50TWkVF2DH15NKFcVAywprDuDqRqcyeZirHroc4iUaFXItGAJcbqWx9qb028ft4HAAsHabojr3vC8/AD1gaN1SkosBLK2QgG1sINESBZ2LLaE6ZCqVQOB34CBDeL8Og07bsccS/4LpF4u4fLZIm9MViuko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747934994; c=relaxed/simple;
	bh=aGleeIIWfBAaZgG3XFATT22OKVbgmfZVXABEoay8lpY=;
	h=To:Subject:From:Message-Id:Date; b=CsRWIcVPlx+4WCeRgXy2uVvxnBYC2f+zLvmtZ0ii1xQdXhRTZvNhTEyi1js/cnEtX2+Wk2Ab0tGAjRewa2CkAj/za/fiLULIj/1W4gM2er3U/E5Nz3xwdD/uK3rm4suXsIr/AP/jTuOiPYwAODYmAuqrofKpEmw6XZVtUE2c2Zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uy8oFr5R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uy8oFr5R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2246C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747934993;
	bh=aGleeIIWfBAaZgG3XFATT22OKVbgmfZVXABEoay8lpY=;
	h=To:Subject:From:Date:From;
	b=uy8oFr5R8Z5LiGSFKSh5TMOVZwFNHHSVKhv/ILOdlGTZcgbj2c2dzBGbpwcC8tCAV
	 qQjK5co7ZeHq4hK+K3GmAcm9th8UG6Oh2pVuKRB3VDofGOu6W24X1aCBLlmTj/zuTh
	 pneNqKBKsvkA6zCeuEM+ma4OwZYpt7kYbPg3g5j3BDXSJhCtipjHLdBDhLDoytcbB4
	 4yXd41rOl6vUCLR806SkKWqG2GxyNS8XNxMzP6Tks7PjW+W550wvgFB5FI12p6Ux84
	 lFxKFc50VF9VM6uQg6729yxWI16MIQbel9GGBDMhV5mjkKPeI13pYE4Ez+p5bmac9I
	 zJi81GtuK9mlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D0BC54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174793499357.19542.9615833272655047458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5020154d5b6764066944b0eb36edad49cb8e71d41e9f31b64acc4f7113123fda
Date: Thu, 22 May 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747934993
