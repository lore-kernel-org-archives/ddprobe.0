Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197EC23A9BE
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 22:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765147974; cv=none; b=nZHcIywOa2u43idqyYMNr/iRn7NSDjJKz69SbmTQ2dHiwNFgPGV/6+77Jg/HmRWg83XwWzYXk6tzTidipwD1BoqlP3OS+HyZfl4N1UaZqamZE75UnhaZPQmneTKFGd9Fy7Ao3Ssksmiv8NEXbb6ZPDm0MJRB/UuCvkpSLqNIzC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765147974; c=relaxed/simple;
	bh=hw3ObeqDszdKOLD4GQvRfFAQL01BO0/hdOSb4+OF6V4=;
	h=To:Subject:From:Message-Id:Date; b=LWZV0+LNoVWc1Ud2paac/i3YdRvoqFkPuc+UaXXUle0JdmmyVwPP5V1kqvReNur5/w9r1RO7i8uPuSvNYtCm2RliRghEt3ejGhNz+zigNXVIHRyzlttD9dTI08mXQsTaX8nEHhmpOu4xN0fSMXQ5R11EldQHTxNmRA1oll3igxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PTlLWHYZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PTlLWHYZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC6D5C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 22:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765147973;
	bh=hw3ObeqDszdKOLD4GQvRfFAQL01BO0/hdOSb4+OF6V4=;
	h=To:Subject:From:Date:From;
	b=PTlLWHYZzD8GA3Cw5kBg/LSJkBHj1/skcyv2f65X9ZFt+EdxVaNxqRdvuiojdVdk2
	 lIaKbnZgsUGR3Cvi0+3rw93O6zcy1INE84XuAlIRop3zoIcXX7Lzl5iuqf5OMw9ogJ
	 7MC0EJDXU0KwbjwWLqh8LFZ2ibC2ZMYPLi1pJhlZ2cGpsWMbOzcyXRioJxBsiKRo2l
	 A5JyRWk/s7yNrcdswOAvHPmioBVk2pHdaoTzKVLp4VvNORGiEJdoYm351sts2PJ0Ew
	 k9lq2wiBiOb+WDC0TQJr9wMXTn8UkVcZiLdZAm3Ox7Nte7njplGJWbu5NtdT506lYI
	 Fb5j1nHYRoQ/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942CFD1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 22:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176514797358.5039.17239828854547359312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d57be28f7cd0a18271f1c89efe90e4ea4e62307d5b3bddfd98cba275748bc0df
Date: Sun, 07 Dec 2025 22:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765147973
