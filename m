Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269A0308F35
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 12:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764590574; cv=none; b=VgAsZnhelFOEMntT3RF3X8FFq0Jq+U+MiVYvPH0kpWAulTJmG/mPdlKEmifRfWn1wHeHl5z/abKSkZFOc/34E197HV0Oq1BZeC224aD9Pfjt2GeWOiHNlmFYj6TPOmUOedkmmKBF05pQVtM5sAw5HTzAaaKbh/l17HVIDOWNgsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764590574; c=relaxed/simple;
	bh=3oeE1kZM/IaMY9cXRwrlGnUi/4xKk56OYp6kXkW+pfA=;
	h=To:Subject:From:Message-Id:Date; b=ZWp8nDr5aA/vAhX2XrZg+8Lz9peBtmBomdpF0nQ3pu8yaotkshFWbThduE0EIsGy95ge8iKkoEuUL8ehotYmEO+SpIouN0prUG9UUdoJA0eJZrzJGNqAW1S30Tt4buRvj/tuV27qium2ofhnaZOCkL7Bv8Ap4EAawvHOxUBD6cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VhBDNOma; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VhBDNOma"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69EBC113D0
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 12:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764590573;
	bh=3oeE1kZM/IaMY9cXRwrlGnUi/4xKk56OYp6kXkW+pfA=;
	h=To:Subject:From:Date:From;
	b=VhBDNOmaYcF3i4Q4Te5lfjyosDI16X6vMnIsUqU032uFhYurhRyiqUFDEqkv1AcF0
	 omCRssYmOPPKlgAA6H1/LNhFUAAjmyC6MUYO5wVvsWzG1Gee+v3uH6n5VKBepJY56n
	 XsuqdjHK9qR+3cX2tpINN+ej6wfWJ+ADiXq2H0MFbfs+dCTejAG+0wYv0YM0VJrXE1
	 xKH5z7lf5k96HLwqE6viLrCddFeVB7tmytb49G2ArXlnU/svVdno4wKcQjojIN6bWr
	 vVRqwwmgEOmwYcBbYFpJQ8zMQkP3Ubcn36jjrCNmQeAj47yQo+O/txAsGhoFTLVM9q
	 OkFkKwku21aBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920BCD116F5
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 12:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176459057358.29066.11715962831359229045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c0df2c00ca00294742ee7277b69f9f520832494cb19010fb546daec793aab87
Date: Mon, 01 Dec 2025 12:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764590573
