Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E9ED41BA98
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786005634; cv=none; b=e3uBqzqia0Z5ZP2Pb+8TEtoC6AWYdqC+hFRgqJjzrWMHBTXM4j8NK/uaabXR8wGH5e25qk+b6pDLa3crKOBFY6La8DC41HgxL7WKMA0N3EJwbT/HLsjUhUsSADkRZGZLB3z9qeYRBpVloeAN7CgKiB4rqh9NQQuE2RCVGK8nrnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786005634; c=relaxed/simple;
	bh=7/72pejqhNyrt79q4BELGf+gKz/1D1ywgkxHEMWC3Y4=;
	h=To:Subject:From:Message-Id:Date; b=aM9n7oVv6DBXcwgBvEdRXvQkiKUSK+7NKJWzUs2KE7xFPXNQ40wFopCJsSk5ptpCk0ijgh5Ib7f2TJfMjAoxHZXJbGnUo9AoavX5aEpWGz0IL4e9I8vTBZ2F09Ov9Ua18whyHNFRvOyVJkk9Y3WM2ARsW4EhSl50tx/f847xb1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q+BfhxA8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q+BfhxA8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD771C2BCF6
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786005633;
	bh=7/72pejqhNyrt79q4BELGf+gKz/1D1ywgkxHEMWC3Y4=;
	h=To:Subject:From:Date:From;
	b=Q+BfhxA8h6Z1N65cEP5GHwNo5kPAp1vrfhl/8PUrELczE/YFBJG7CVxRqy+mKCQ3+
	 POmRjSzxcCGpYtdLweWHES35UL2g80NZKbmFms6y+XeZJ3CKhfAT7eb0TjAn5NyXPk
	 GCAU437ltYLK6X2bB6yAqnUXjL/vIT9QxzN1uN4T90RjSiHoVr0B4FUgQqU2n9XPr5
	 E3vB3Z5GmgUuOe9su5J0bKbNr80Ue7xukQzAnf2bGYsBaHzLFZwLWc0iAyJUWfYvqb
	 0Uy9l3AZJjGd/Y1snfGXLBFpDBVX0ZLP4jftDLAPMQJ3tTDsvaF/wPiWJUU1uUaAn5
	 Ohaa89AivtQxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8700C56208
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178600563374.25726.15885385909449914569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b29861370ec3acb9e21b6f80e61a0ec9da9b295df0bc435340e6d7c4c999ead
Date: Thu, 06 Aug 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786005633
