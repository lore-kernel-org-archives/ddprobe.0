Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F37469D
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767851634; cv=none; b=JDPCShkTEfPLGxY9wL8SjoBKdi/yugSTRlYV91pOW6g9qyEcMHMSupTag3GOPYUrK83vZ+ZZi7phQqxn+nLy7tnVbXA7K9lxh8sTBu85zsgWKcp6b/9qXz/bP42ZBKL5Dlg6DXIZgKJHQXdl/Gaa0QES8VjIHqsz5ENPEW+aieU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767851634; c=relaxed/simple;
	bh=Sm6RBh44C/9tByN5ARetGwqqm9ODCTu9gpiAz186K84=;
	h=To:Subject:From:Message-Id:Date; b=hHOFnxoieicFfRU4U/flGhUZ0vPbiUYhZ6OEvoxFoAoU6MNyF3yBlMk/Ak4DY5LaSIRB/4wOrNI72/QySdvEDgNJi7oJp4wkBJ8jwGV+l2aXcn8XMd/35Kl86/gNUfW2OuoBO/6SlrL57PW3Z3CcTi6jvIb9Cpr7n3jv7mSRyyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iEah6ZbS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iEah6ZbS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AE58C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767851633;
	bh=Sm6RBh44C/9tByN5ARetGwqqm9ODCTu9gpiAz186K84=;
	h=To:Subject:From:Date:From;
	b=iEah6ZbSHvsJPTD8aw7mIBn75OsGRmtOxfZ7YjqjqXFs3NNGv57zZr8lCB+ljwz2D
	 Mw5S76Me/2yA6UGcTqAmkSpJreDTcmAVFI77jpfECkabIIZkkA/Ekxu5a5BahfNFHj
	 Qo090Mx2a862ngj1sKldgCLTbx8i5SVPOgJtlfvHW9lsLRcGu0We4XpbASPV3MdixA
	 varg38+hLVr2UetAZBO2OIjeSkJtaIRPp+phiQhTL81l1sRDgBb871KapEC1iQcCAg
	 lluv0Gja+zGiMux/hDavnuT3L6mAtAS2zIOKYXJZSnlonYpupCSpz/lr5DlkkNlHiS
	 DxDZ7EKlFZT+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E719D1489D
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176785163357.981.1438776386849073759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 918c39db7c2fffe53090ed9b9b033144df72c0b141e82361de984dbc2fc8a070
Date: Thu, 08 Jan 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767851633
