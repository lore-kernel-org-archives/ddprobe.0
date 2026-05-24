Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A05331237
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 14:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779631954; cv=none; b=fVwvmRrxaRes45CCaejJWVeN7Vrv0CkBZ6gD97Osqynb8KuinC06oDFhDT9bKGfPqPYt6Sro4F4trzde0dlplAUqVDCOpwcu1JhC6W3xQyr1mEUpmYkXxYnWCVM0+H2OGN+ZDXBy1SBTjxoMJtBowq64yF9N+KkLvDczDGu1XcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779631954; c=relaxed/simple;
	bh=iWrPPP9ugXnYVjNhlidCk1j0LPJbyquAK1Zo15bizns=;
	h=To:Subject:From:Message-Id:Date; b=VCR2sHOf4N16kFSx0DHyRgYy6w1HxsL7lLy3/ExrxGwQi8JkiijO7F26ghidCztIJFkIZ/+zOE9MS5n5KY7PS5AMkfWHXru4xnFRMXtxyo1UyKssRDIATC2P1Q8xmcfMRF7JwOdwLVogCqmR0+vuZn3Pp1mhbaxFFqfgpX8mzXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TQhZEb64; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQhZEb64"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C714AC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 14:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779631953;
	bh=iWrPPP9ugXnYVjNhlidCk1j0LPJbyquAK1Zo15bizns=;
	h=To:Subject:From:Date:From;
	b=TQhZEb64SpLzAuFk0avZEbRJiLDjkedeRbZDax2TAVQlXg62FKpMIaVK6pAPack6T
	 IxrFQ0wkPBljZLgyIVi/5G9EAuc62d+FK1sEPdainGW9i19NJoyu8gsnnvwjMFsvpn
	 nXie/MDqFRXDE1TYe38hQg8vQ/IoGcjyUc2QS72vVF5OgDtt35yAclx1TG7OXddh+a
	 mnTA5w/XFDnDYJ+MLn45zUqp6CZk56KVGyhATYBRjxVkSm4QEOAuMKmEuPYjs4tJBj
	 +EuxNPTrAm4eKrSNPUNfD7oTKkxrp6OXZMGHPxnpIb25p1JspS+LLTv/CAEPdJ4Odl
	 pNUw+MmQOayiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5BACD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 14:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177963195368.26453.5439525218707796854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 397a642e322fd06d07e423fecd46e85b06ca5405d9d5ed3a98dd7316f9becfaa
Date: Sun, 24 May 2026 14:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779631953
