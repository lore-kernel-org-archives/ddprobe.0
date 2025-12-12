Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251CA1C860B
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 18:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765563174; cv=none; b=YVkZ4WbWNTRTPQe3qkC34Cz7qyZ1KAh9dJZ7I7Ci326X24yEFliNTUdJaFRi8X9yKDwmFNdGjFNCo6krGS1xEcCr4sIXx3bxFllj5Qacnx4IkUs7ad/hJrPxzJx4OTre0Q9oolEm5C5HIjJBQozfonygarnvsc4o5NxMpWYoGrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765563174; c=relaxed/simple;
	bh=LSRazSd319Z7LbHNTM9vQ/gqpICRdSybBWXfyk6RWyg=;
	h=To:Subject:From:Message-Id:Date; b=e3AbxVmcyOpmTfG0QqECNVgTnMXt7OpslgpbHyRss6oTWfMtGgCvYRf3Elc+zE62Ebeg1Mtsjk1WXTwdMMCNshHO3mbxWvp0+OuzFuP89EvLyVYx2r2MQR7Dzf4HdfOurya0aRmofxmbeQTV474uy6h/m/VRfRtbS4tX+4xkb5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VOvNmy0l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VOvNmy0l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E96C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 18:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765563173;
	bh=LSRazSd319Z7LbHNTM9vQ/gqpICRdSybBWXfyk6RWyg=;
	h=To:Subject:From:Date:From;
	b=VOvNmy0l5JZqhrBd8CD8h9DrWSuIydlkWYNwZaOvLSq5y5suqZjVa2obex+Eftb/r
	 6ouMLDmGDalrUli6awPKrnUnAPpKldXrdUfD1b/6A5eEf2AFMi+bmcFJLCPKZGEGd/
	 KzPVozZYQqAuSdWPmTEpOUGD+4B2HnuBVvwe+U1XLziV9KQ0Rn51tNF8v1A06fwTuI
	 nwWYMA4Tc28v2OLJbDHmSa0B9eDSepOoWST/Ez9UdBgOqXINJdbMX5GrMA7zvqP+//
	 nJNb+MiEEpXaJ78jr2p3jcV65XoD0IUPjaBmjwF19JEsVoqcXIcYra9SU0sHC4IP1T
	 yKhmVGrW9IAuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96678D59D82
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 18:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176556317359.940.17821391225505792262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 918f10454b374654cfc2335526f7acd3c0df28e32e24108fb49172f7e9814c69
Date: Fri, 12 Dec 2025 18:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765563173
