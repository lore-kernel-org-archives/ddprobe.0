Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10EBE2153E9
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734701154; cv=none; b=JJKD8s7iCe1/o0gs5i83edzJKPXSKUuzRUAg9W7IJobixA21sv2z2JpPg2FML2xR8MdCVe4r7CdxE9284KMyswALll8JoNLTIEVSOynsDDIqnosFXyXOeZ2kk70he8asCDIteB7IuxZ1DdrgqRGvx30nvL9ORSjG8bJRy/ViWos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734701154; c=relaxed/simple;
	bh=4egXOlYgDLCmkpWE74Cou4GJtcR2BnaYb/+PsSwV01c=;
	h=To:Subject:From:Message-Id:Date; b=MnYivC8oTwZ5Fa2qovnrp4EmmxFeTkxVjsoE+D/sbgZq5gVyNKHib/UlO9zXstyoeQnMIBruPD5YI7LbhVGJPSKstXe6OK3Hg+Jvam3/JCIUShSdP3TsyWRjlE23NkPk72Oz6zUG9IXupo2sEHX+iqRqAnHp47PvO4jELNq48e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ubO0Vf4K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ubO0Vf4K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A725DC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734701153;
	bh=4egXOlYgDLCmkpWE74Cou4GJtcR2BnaYb/+PsSwV01c=;
	h=To:Subject:From:Date:From;
	b=ubO0Vf4KsZ1CGFATIbiQCrtAUBMx1xvMpv6/7/DXgt3AsaXdxtQUiNXDU2A4jGvp6
	 arUcOLDMlpfwFNnLQ++QbdZ/45f2WvhRDgyPnvUZkAK7ODB03XmzZ7k6CSz4+gBdWy
	 rwGcHX3IR/j8VoprgwQqbvUihrCe4Tos0kQxcYE5B5N3/BlnyDqaggqO0CIGc+UBSN
	 IIHnhafO7kDFxnkppVKyLyHIF6hlv7r1L5SEh+ODufyL6KJgI+knuH3gPp+Mvn09az
	 /C9zeHmqmDSMrTGuUblM00zyix33d/7owtaodqwTNaANRu8Oyo/YqlwEgs3vcLem+N
	 bKK7mRelqPCCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944C8E7718A
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173470115359.5696.4694089860300924733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17128f7d6a85705a856a56018edd3797b53ee18a12a3141b99aaf04d46e59841
Date: Fri, 20 Dec 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734701153
