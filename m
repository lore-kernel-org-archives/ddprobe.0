Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185763B14C9
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 13:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780664674; cv=none; b=b8Pa7PTGS7nuR2p7qE/3f52YgrASb1YDgT2BrPZ+750ievwPOsf3G4BXyEEsJyGiG02X2lZeYOO0q0QKBHZSRL5u04eRdr6+UO/UYOLLhF330NG/tdjb3X8USb7uws/tSEOuyFYJDrno3yTzQAPioiK/EOYhWLvyrc7eVV0qcjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780664674; c=relaxed/simple;
	bh=r6d6ekWPCTEcXanP/pPJP20g1AEe89uEj51SY8Kv+8s=;
	h=To:Subject:From:Message-Id:Date; b=PY9GmHrsOS6b7EkrTnLU9aLMuK2seDk24xtGiUz5+L/aMEhjjWmxiUxHsRG1MgIVeJhPj0Y5/ddiSvAp0Kx3oXvJXIsEbOEkF0lwonZ65931gNnN4dFAJ2vW6UvAJVozmynZ0dX6D4jOSZEk/wKygZHoFBQCjW9C1CO/BLZb1i4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tOpFjAIR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tOpFjAIR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C98B0C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 13:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780664673;
	bh=r6d6ekWPCTEcXanP/pPJP20g1AEe89uEj51SY8Kv+8s=;
	h=To:Subject:From:Date:From;
	b=tOpFjAIRl2XDUQICoUj9vMJB+SBJhgyGCXVRj4jnCbhRtGFlbs5iTJEF1l2WZuQEl
	 PorQdJ19M5qlbgi5YtNIK3kUKCwE7jn9WyACnyfIyyvtZxnzZ7W54vvlVkMIExR59l
	 rDaE20SJiYwQAnSis0yBio4AX6ZeoVu4ZpS3LVaK9kh4Yiu4AC8i/U1zn7F8OjGrWg
	 4WXyYkOUJZRuZa6Mkp8xWxt2tlAFSE5sE8Y2N7GRbbo/FQNfaKOuSdSO1srQ7oEKr+
	 UtFSFL21sateXv3LCBBnSFxUv2iQjbzrbdm3xAPxJp9W04z2HQZGioyZR9L+UESFjV
	 POsBS//snmHTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEEBCD6E74
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 13:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178066467369.17665.9627427133372454664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c40786e36ebe6b84e8d9a8d8405a38fd97376920a707b04e7db4ffcaa748fafb
Date: Fri, 05 Jun 2026 13:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780664673
