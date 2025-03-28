Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49251213228
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743150596; cv=none; b=QNFRVWgSceJlM2ffbpjPj4359OTPYrg/dP1dek3aWH0z/y3nsGjDDbcl+PfW0K3kREeKeV5sAh8qcKIRfBwzCicgV1wCd7q1nnN1JaNILgx+L+gNbX8ft9zuPEAjCQ640MdVlsqXiYGeQiBBZXV73YNlIqUYSAGH09yFhPyqIgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743150596; c=relaxed/simple;
	bh=qa0ds+P7Q7Wd6EOwBCj2CiNbjpCY+MSZQjeQ8cyewss=;
	h=To:Subject:From:Message-Id:Date; b=V13HZXG5ND1qvVLs7wcFNyz4KA1olDRVsyaJYMAyNnQa99/IFHkiWXKzkIqSWwmeZKARgFPNOTzpj+xo+pfUbumqpWU5BXdjyiME0Sctj5w7AiOrjNV365hZLlOkll94WuGrNrulAhdwPTIojKiP69Z30LbuWk9ezO012MCKbok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c6fozKEW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c6fozKEW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B34A1C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743150593;
	bh=qa0ds+P7Q7Wd6EOwBCj2CiNbjpCY+MSZQjeQ8cyewss=;
	h=To:Subject:From:Date:From;
	b=c6fozKEWTS+3YcQYUVXWZz5h1p6Qm9ewllUvigSbDy3Z3xHfRFSqWrx8bEQ5BaraG
	 AJw68J/T87NLpGs3RocglJJ0MTi7mnp5d7/YNagN+gUd+T1ums7Ch+b+HLZsF4WrCw
	 A+G2d1BUJR1lCAAigQ2+r2xzURdo/ytfNxXMSVVq9HCKiTAxaWdOpVAfDHFb19a/QR
	 Hv0msAy4mEg13oyjPy06Qf+MU1Ea+IKhT9OgrRyiUJ17j1c3AVI/Eql/Xq/dIbpdnA
	 xHErnGlUpISjQyScyliYZ/JTgHDL2HToq6/UeqHA67FavKt/QjNH0Bf3wCc4r8yoOz
	 CWVg4KDoFUeVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B634C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174315059362.339.13206398937515749712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e97892f4c01ddba8f6c64d8dcfb1731ebd9665680dc9eb6d33bb7e8436373ee0
Date: Fri, 28 Mar 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743150593
