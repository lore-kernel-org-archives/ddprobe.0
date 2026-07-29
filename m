Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A1447ACFF
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785325834; cv=none; b=ZXSu4WFp7Nd7J32/xMdEkRRr0Z4wO+XW2nOe/WB6ugoA+qzm4Efdnh+ageTM7Y58BLGGG7mQ+ESOIh8q7W/1rMRfjXGoP5APlIfRc9mxq5vtVC8AtQjI52KN2XkAabMeHBn6kLqvGNUvW6Ho1Mk46lcSGrOeHUtnx0fb8/YnGAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785325834; c=relaxed/simple;
	bh=5kUlmUFAVjd/ZFBYcBHY8P2lCxjAunDU4VqCb0AWPbI=;
	h=To:Subject:From:Message-Id:Date; b=HBInNAruCVHCTnfKM5tHCyDddeDJdwt+bbRfnd8DB+Vrxhaa7fI3XwUIS2OvCcJSQ8qNRPJdT3Z1jqgHwlxe2VdxT5fo33xBaxT1CX4l+MriSELHL78LeTom/AvCZ7ODaxFS9xq98gynp0PGE54CORStud1Kl2AnF7ZMA5y4GUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aB3DW1s0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aB3DW1s0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA261C2BCFC
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785325833;
	bh=5kUlmUFAVjd/ZFBYcBHY8P2lCxjAunDU4VqCb0AWPbI=;
	h=To:Subject:From:Date:From;
	b=aB3DW1s0gZHXSAaH/9ZhHGaurbIPbc2ojQVjkt8xZYI+hYHXcf8hV39h/x6ubl0F4
	 ZV2BrXSh/CN7pAY5qJkLSDDocuTnviw50GcACVA3Dm3OxmHw6Y92hYxodrBwlf1Z3R
	 c0bFCJUE6b1lqjQOo7JGpNMu/voeIxJrybfid0dJZORPaknfE7Na3lCxb9E923+tcG
	 kB6QGOuFbesIZk55Sb1XhB9sZcJHCcNiS8yssPXowvKEyKqzBtZmLqwxSaJkPfQHHx
	 Ur7Ty4CVTNbgOhOZ2bD8GCj+79Ii2/H2A6tSHSJzNTOB2jdeTU5ipblgkRz3jWxl6y
	 ybnM7GHeOfI7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A956DC54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178532583368.733.17691275870744785003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67f6443c63feffad2508a5b259ed8d9b18cd636d85bb181ef1de3ab2c3e71e82
Date: Wed, 29 Jul 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785325833
