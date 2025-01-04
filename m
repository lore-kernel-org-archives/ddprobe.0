Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40832136351
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736025354; cv=none; b=lQZXRHyfbIuEe7kTaeVBr/cD5MC1Wjpp0pcnZ+O3HPQ5xz+TdjKE0c71ZStQrEzyazUzNOeNJmJYovVmDOpMf4ikvfKDIQHaGbPXVdTQopmPAvsp8yp0YkUBNKqiEoZ+c5TcYreqwCXldD/9k4wcLoEkXGYK3qWEtlYUBmWlsek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736025354; c=relaxed/simple;
	bh=1QJCjPAsZ7qoeo4AkSrAhPBOa7uY7oSWnVdYF/hPEOY=;
	h=To:Subject:From:Message-Id:Date; b=iNPhzNAM6RhsYmU2PVFeuaFH76I3yV3MRdDftwyzLRYwIHdTGSH6YnNKC5+7P8iopkNBBFMpn2fQb95ZWW8O0IGX17fQPTfstG9E0gfV+sj2ftykxnKNfPUqiQ1HjqftFJF8fAeRZXIMWPBYPt8GCmIk1ZV/hbOC0ob0ABHYchI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ek+mG+ym; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ek+mG+ym"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B51F9C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736025353;
	bh=1QJCjPAsZ7qoeo4AkSrAhPBOa7uY7oSWnVdYF/hPEOY=;
	h=To:Subject:From:Date:From;
	b=Ek+mG+ymwNQFkcraA+SfZ0q3MDL6gKEz5QPA0EhFFBiVPYIAz8r/cK97ZYQOZjt82
	 2exBHsLPLs+vIhiwi7MSDd4/AjVp5/2vEDwcZuHjDVOF31rpHE2QB3RtoYX483A/+A
	 noduqeoS+llHjgdmvM+Mqtu+mtn31njdnSMXRfBj+W17/g9jjDDTxVgI5chSfznjkH
	 yLV1hZiOdaNHaElaGbFlN1ktUMYzRbenjUTDCt9vJXAyo28BmAwksvGQPHSbeGdkRS
	 YFRR3F7Hk7tN3Bmt9YBxd+2zjFrcZE4Fy0o4fVwpLhuOmLB0Zyxfoan74Dwbc8VWCk
	 +GW0b15FFi/og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E1A1E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173602535361.10710.12556889005960985816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18683519ea28f16f79dd78db6ac50e81eda954ba938155495371992797f24731
Date: Sat, 04 Jan 2025 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736025353
