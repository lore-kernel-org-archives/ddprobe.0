Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55FE8394EBD
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789858234; cv=none; b=l56QLHHfrHIIMPupoBs/xT7TT2CsTBa+hW6AWB6sTGP+lmEUCid2S9at1VG2Rjj3H6EdO/OsJLedY8eVQoMuRfkVXTl2e7gEfK7b6/Y1A6JbfPP9EVO70czDW24ylGXmvQ8wncnIt/ek1ZO3bkP2X20K0rTyg3DpLyxtQG9kNYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789858234; c=relaxed/simple;
	bh=28Y4yKQgChTdKdm/GmY65yMnKw7hEcphqEOW0KluSjQ=;
	h=To:Subject:From:Message-Id:Date; b=nejQgHXwGbRrm0/mUAFeCRatAEArGkbBlxnzd+l0SXbQ+MunNqqvtxKsTs8SQRsaxEiA7gM+kLmsOY1ci3xmIiN7HjL0VTW0LYD5+qfpPuFbt9XJErAtWr7Jied79IxuOmFYgPZjQfyWM8+QsHjHUSWY2K7uO429STGe/+7UxeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BkcEA1a5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BkcEA1a5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0BE2C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789858233;
	bh=28Y4yKQgChTdKdm/GmY65yMnKw7hEcphqEOW0KluSjQ=;
	h=To:Subject:From:Date:From;
	b=BkcEA1a5zjVKlJSniCYsOzvdiyaWnXpBEoKPOC4OelmhqNZrA30wgFRFL23jsC4wN
	 CV7RKu3Kqm+mjguC54IkWOOXM/kwiII61lGf/iBt8u8PxWALoVz8JxMo1qznAuon2N
	 dwnw308hK40RonYrohorBKhat39dQME/Zc78/UYnsISnh4ZzRS8uiqhKAqpjCAOnis
	 I7mr58VwrtQqvoNUP5GM2qQ5Og/F2LRZGe8NP4LdY46XZ0o/hjnZueT0YyK9Xm7qIv
	 5ytepw3h03beXzELO+yHl9UOFkKnh0MtLd/JY6C0urBfhVbbnUmN/o8/v5ln/oyu25
	 azpUu/ze/hJPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FEBC982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178985823368.16297.16817905603829972682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8953edf439128989a1427523ca29135653b93b3614acc8674909f198bf69ddb1
Date: Sat, 19 Sep 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789858233
