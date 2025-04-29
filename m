Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB071EEF9
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745929194; cv=none; b=r1pL6gXPY33S40+ht/uzJnz74fGpuPBj91nSV9P62lboFfI3ZaS7l0RguAyZZnzRKGfLkajZCCVmSKd7BT92R327pqs+ebPOpYd0nzqzGVeEu81JX3JrIEPnHHfhVFWiSFG0eJA6qGZcANCpWSOEn5VZAXN+SeZBNrM8gnE1Yyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745929194; c=relaxed/simple;
	bh=TwLRq7PbA+uVvdBiDTIE9SC9jUcSmYqfWgPOmhSY9gQ=;
	h=To:Subject:From:Message-Id:Date; b=NoumklhPyDH2ZmjlSVR23yezoFpFb12YCpCdjSG1SJrWShXaN6et882PQ0B77qr7ejBPJiHCJ7GEhRnjC7SGMZVY+UumNYQCpAa5fD1AChrTgBd6BKOpsKlpZa0r+aNAJQG9QNo+vTFZJdmCccLjtxrmCT9pTYZymnAh8KnPcq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FImpQBhl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FImpQBhl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C757C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745929193;
	bh=TwLRq7PbA+uVvdBiDTIE9SC9jUcSmYqfWgPOmhSY9gQ=;
	h=To:Subject:From:Date:From;
	b=FImpQBhlXfHAX9pLKPQ4iILicV8YiIpRexkuC8lqORkjTxHRaA3x27CFq6j4qUkkf
	 BXA5p7CRcaqbCcK3vb6OzV0OubarTsJnmSgYS2p34rJyj3+V7CgIm+u4GOCXYoLqCV
	 CuirWyOvZXGEvvztxEQpBDpr7UiZtwU0GbajKoCofHNWZsR1U9juexhdSAPNm/+wQM
	 +x6+eaPhSQj1+PPowldog7BmfQ4i7mj5ZNOWApPJKkSHkkyp7M0mU8ISbYZgLMtpQN
	 9bC73D9hGIWkFkFN8GvGKya/Jvq6gasvj8cKRs8aPpveSpeT6jTK/UijNi7aiO9FN3
	 3RCPpTKlsyJUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F047C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174592919357.1090.10297742606172749709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9baf467d98f1031d276089fcc1acc7d9355dc3f126f8f5f093fcdeb7ded5679f
Date: Tue, 29 Apr 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745929193
