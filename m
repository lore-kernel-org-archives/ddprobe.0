Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55CDA2AD2A
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743240594; cv=none; b=q0lQ1ZgVyN5sWu/p5/AcYhAmXGrh01g4TIbINs7y/+Tdmy14TK9nD2MWiSSafhhi+JA9qZQCmZwSco9HaWqFlVulWtfBsIjjvxW1RUbtHmvo3xnDbyy+t5CPpEXIwMmmx1T1v/P5N0Za81NL8izfb471Ibe2uFewrf3WKg5YNuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743240594; c=relaxed/simple;
	bh=qZlUv5TauaM9zjODMviHCrmiG/5qNgd1TRw3wo+aLCo=;
	h=To:Subject:From:Message-Id:Date; b=Ei9HKQ/s+COaUyPodzRe7qz+z/ApbWHp5xFWAx+iyMvYkVAIhAbx08BBFIrZ3tWQiLfNCcYOQ29ijlyiZWFNUwNMDX8niqDwXoe5EtrD4otiTsauTRUyCONTxjJE9770+yTZscHMbzrLceAvrlODQGNgtBp8mpCwhLKJEew9en8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z9HRx2zu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z9HRx2zu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA335C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743240593;
	bh=qZlUv5TauaM9zjODMviHCrmiG/5qNgd1TRw3wo+aLCo=;
	h=To:Subject:From:Date:From;
	b=Z9HRx2zuUfn+fanbksOq6cuoENlJ3WmUMi4szz1eNpqJgI++9vyXNeaoJkYt1PKUY
	 EGvk20cTCBibsCcG/Hym94/Fk7Tp4N8hZB7ay3ijHWOXB4QcWSUVhJEf18HBBtgTXa
	 rZ2W56ynsP9ymxAA0e4olgCe2CvjqSw0ES2pOLV4Hj4fC5aG1xKtqiUTKzZSMhO1Ng
	 zG/z9pzpB2QQWckFi1BTqH7HfsY3OqMoQBan6XwlXLH+DMSoX8RUgom9JzZLcA+fDA
	 Q3oQ3JDdbAY9iAXGPlqWjHMYBJrKeQ2tIHCblZIlF5z9AkVWc35v5ot6ld9zUEvdNI
	 RCXhVbVFFc0dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6D17C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174324059361.26995.15864832257854881390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e80ecf7467011fb7e1eb4deeab762f726e19ca51c2207f9fcf1428f2b1d2e67
Date: Sat, 29 Mar 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743240593
