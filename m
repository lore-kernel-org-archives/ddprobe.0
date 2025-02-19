Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393BA189906
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 14:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739976534; cv=none; b=lQi5i3aohfaA3Y7vmlKFVRI4rmHMYBCrnzKxgjoXYgsALYveuxKZrxCgrVag9DHv/s5BGyZ1/hkY49jEb+CejjpFQ2wwE2nfaw9mqv0ktZznC48Js6+qx2Aji5Up9QOerJLz47VQHSyRADDeaj6mzq1j9ZE5i2Ho2JA5f9OjNYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739976534; c=relaxed/simple;
	bh=NlRou6PdVcxWiOrQdzahABUn+6i8EgsrszmJVLD1n9U=;
	h=To:Subject:From:Message-Id:Date; b=KRpFvg1tjwKHejF6J/fsNr+FNlDDRpMJyZi+Qo04zJw38jsXsj0FebXvtOzq+SOX+fQFvS0XjDXu5u6cylGWZK+iFipmIByFQ2BVF8lwHjZk4cK9n3cug7zBUCC+iWYKFtnXzVJYteZaSal04BfHKETW3Kc16Ucy/wDJIykSlNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cn1ecnup; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cn1ecnup"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7C4C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 14:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739976533;
	bh=NlRou6PdVcxWiOrQdzahABUn+6i8EgsrszmJVLD1n9U=;
	h=To:Subject:From:Date:From;
	b=Cn1ecnupoYRlm6HKPMAwUvIQ960LjFkEPK98BSYPjdoULBBF/oG/vbYxxtCO1FXzN
	 dehuEzbw1qUitWPqbYePbSZTuczSDt9+9F6FLA0VBzws2e732PoJsbrVqPc7bhA6YZ
	 6J4u52KKoGTkRxPyZn5eKu6f5q29LmP4n25SxdaIAdDWNH9p9aHnDTv1cQHYE+5FP+
	 QtKlUNNInSmWBfKl5RPhAr6w4WWwOepEn1TTQ+greCMuZ7vPr+WtXeSzlerwxZNbdS
	 Bm7hTCaARO3qv20gtIupKXBvfNdh1sZlHVVpF9B6HF1CdULgCzE+CbWGVgMiJGKfAf
	 rQJ64N5uVJ/wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6B4C021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 14:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173997653361.2367.11684637605401474961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd667b852f9632188929fee040f7b4d0b4808a28f5321c8f7146845b62a665bc
Date: Wed, 19 Feb 2025 14:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739976533
