Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0EE1714A4
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725268554; cv=none; b=cndjRLRBQYJWvPd0Y1Sb4b+49HFZlfp4WCCiQpUczvNMPuGQAc+TYLKpwuPuA8aJ1bsYgm2hs0O/w9Inr+IKNmd1bV9pYyqJfhmbSyss+WLWOVPSvmhsy3tC3Sj9uMNqdvsW+bnkSBGquC6hEyR0j46GusBK8GJRfaL9p1LqzA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725268554; c=relaxed/simple;
	bh=ZiOpdQv7CXr+OOAlOxe14votQ2TlmmUUM6ALXTC7Q58=;
	h=To:Subject:From:Message-Id:Date; b=GtMTNdj2sZeAP/AJ+QG2F4B9tYQYsdGnpuhIAB6PEARsUO3RQtF077QCaZ3T5Bzf+W3OM7QeFSp+lNElq1nKThk4gTIyHycrJY9E0cGsO4QA9eMyi3whmHWOUSkHeIlUBRTi0H8jaJDQ7eqn/npGoq+I2ozLMAeJACRQ01aN14s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FbflIaAy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FbflIaAy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE70DC4CEC2
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725268553;
	bh=ZiOpdQv7CXr+OOAlOxe14votQ2TlmmUUM6ALXTC7Q58=;
	h=To:Subject:From:Date:From;
	b=FbflIaAy8OldL99LuHWA2xOF1kE8YiRVHCoMkErLDXif19U7Fd1CIaDeJW58NAOlD
	 fgtUq/z1CqSw2lsL8fBQF/WlnCyWXSe3qs2KNioImRgCN6EC66j14mVpT+s+dIINYb
	 +kYjFobglLEQRpQfzCx7/j4Gf8WkKBN/oKoSnILbeP41Cej4S/ZWTVSdmu3qcsy8T4
	 9ksUV12h4X3/j+G/UdfW9udDM2EPIFyd+4B6QS9zFEuYZT1hWBjqpWGAXteArNzXAh
	 MY0nX9pDY1NBk/mElSBMol9GJ1iWE35a1h+hkdMsZlLINSn9UPbcu2FgW1FXjYNonz
	 Yal6X5WtrgWWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F23CD13CF
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172526855361.31694.12409753267291552952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 730a7f0c668d6cbe7fdfa56197fc7c57544b2ce7d4d9c428a8f2629b87154cd5
Date: Mon, 02 Sep 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725268553
