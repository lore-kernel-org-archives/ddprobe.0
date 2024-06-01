Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75F4E6FBE
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 05:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717218263; cv=none; b=sUZIJJUG6LtlA+vJ+98AleqnOYsiVtkDJfSWJh7uoamjIIJW3y8Vtd+aOkjZJhgmgUmV3GHWAhEm2oc+wkOq89QRgIPSTAJ8OLetXo/iresrvvWGanpe6SOHZVS0GnUQjZ29W1Kh4/GveOE6F20uMrdIV+HQQXseRanY8qUvKhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717218263; c=relaxed/simple;
	bh=bPBqfYYZiiBBrTAHVP032Z5Wn1lrF75dHv8uxVQt7mM=;
	h=To:Subject:From:Message-Id:Date; b=SvYvCRtLmf8FjBiiIdFoXRIYIORV13NmaXD8V4f6DICCzBzxMEs16HElBi3ceHKVgYJUBN551hlUd0m//VxZWK5RP5IL56Twq0yJ7NRrXq/6JlTHKy86I0Q0HGVo3s4eGkw43u0QXWDHXGSG57Hzjl9NH6TUk7zCcvoARyMaido=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EeTNBcdH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EeTNBcdH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8674C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 05:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717218262;
	bh=bPBqfYYZiiBBrTAHVP032Z5Wn1lrF75dHv8uxVQt7mM=;
	h=To:Subject:From:Date:From;
	b=EeTNBcdHcPdtESKai1Y50EHKspkcXK/rDFy7yUJEsIUgKdMNaP38t5KL/WZIy+2I/
	 VnLG0dvpsm1hcqNNTQ+lozuza19hWj3I2tHYnoJkr8HxLAyQQaj3igHUTLrPm/SKZG
	 cJS9gfjVUnqBVSgjpPPbe0UQii+sQMC8Bo9E6oFFyBjyRCVGFxhOPHvuZDrnMifLG5
	 YJWwGTFfUy+bSkEf6CIQGiw6Al8/Wpfyxo388gnCLyRLZk29BOLB4X9Fyw39AWZ0Fp
	 pVaTYFwttDiiPvniwoZ1+pg2C+ewHA5tl2cU9kmbR0pDPZjG/t+hDGNFcEu0YKXHV2
	 CyWQKEEs55PFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF682C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 05:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171721826276.1103.9553536489917920508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee53e170356c08f62b890a8d96693b3dab497e900d0d19c29be4597c2f8b51ae
Date: Sat, 01 Jun 2024 05:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717218262
