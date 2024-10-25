Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FDAE1CB9E5
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729843554; cv=none; b=SrfgxTqacGPEJjQaOMYJKGQblj1zapBNvCd2g2/Pl7po2w5acscMO2DqVRXXcz1fl7LOPIe7lcDRVcLCz8wUxJoSkRxlbZy+bbGBLkO3u0F64AGxCfogFwXzRj8484NrgD8jZc2pCaNxmoorrRXzIx0MHzzIR/rRtxyYg06nfIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729843554; c=relaxed/simple;
	bh=l1wJdjpIey3o8p7Ieqxce+y0OQ4k7QlN+/LA+Ci2HhM=;
	h=To:Subject:From:Message-Id:Date; b=vCfmWU7BJMXPNiYpMhkg/G61zWn873qrBjtbA+H6huntNe66xLkE4fATmZ5TXTRsdnf3Ekve8DBIztRGgAsZ4oqCsx1/k7Aakf54RJXYbzX1em4g7ufbOHDuoWLRQfP7gfFC0bmWKiK6eboPub1fyFCSVUOit5edOy0QsZkiv8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b1hF8EVS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b1hF8EVS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79D3C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729843553;
	bh=l1wJdjpIey3o8p7Ieqxce+y0OQ4k7QlN+/LA+Ci2HhM=;
	h=To:Subject:From:Date:From;
	b=b1hF8EVSSZKgP4tsL++qrkfMX0W4gh2BGo/0vxmXxq2euS0njJNCBpzxBYLxOhukp
	 vAra/0fHiGSQf+crznmwk/7/iyI/bQ7y/Y+Z4PDtn6V46voJ/wsac3/fwJWG6hriHB
	 NZ133Mqm7S25GB1xhl9pIVW3ro+i7V4SOZP9MvsA8o7QEiaU/NUfqcVFsefDXraE56
	 Ivi3DWySDfi+O/74UGkhQcyap3MCLGOtqmVaxl3aGGMfr1qiIWxxRbtJA3F/Mdzmcl
	 25njaE8oReRUojuxbKGg0sI/SJhvjqyN+HuUZc068B98o0iocdmRsz8GWxtFrYjwW9
	 gh4bZwtuh18pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BCBD1171C
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172984355361.13780.1392356519373146976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 255f775fd474137214b0473eb7a0d599577346ab6267e49bf68a501fada34235
Date: Fri, 25 Oct 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729843553
