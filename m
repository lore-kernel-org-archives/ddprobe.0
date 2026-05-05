Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2353B40DFA7
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 09:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777972054; cv=none; b=MwJDHRHH76XiET9avwWPVYB/RebKnE8TB0bpa3Ds0mGJV6CjVHr99SKSgnU/iMtIotz5dAY2AGxS5Kuz0OYK89N328JeuctucDa+ZfiIPIyrLdoufmrrEQ2tp9mh2j4oQUvMAfVrA/pBM+Ah412PhgWTPbO8dnfqjzZH3pWui5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777972054; c=relaxed/simple;
	bh=zBqohj7HHcQC1B8ImX8WF+nymImgNtsgrTzy9+FijRw=;
	h=To:Subject:From:Message-Id:Date; b=Ku+IZV9MfxWtlpxqzgyHO8DBn4CJBzd0FmwK9xRFVb7Fb+3tU3Ane57ibxdea1XtfEXYNTxB2jVUJgn3We36eIPOJ5JwJiQQqmQtDHvJxRQ6hojV3eUzzAqLjGCFmAiH9jApHh/40T5GXSwoycoujfnMfRIFU3JB6Jm4ee+CD1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IunsXdRi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IunsXdRi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA9A0C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 09:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777972053;
	bh=zBqohj7HHcQC1B8ImX8WF+nymImgNtsgrTzy9+FijRw=;
	h=To:Subject:From:Date:From;
	b=IunsXdRix9ASKayOAqPwkX1nhTJRBWRYM1u6j8SDutmWtOga6xZd9J2qYCUZTKjjJ
	 6d2s6I0uU9xcMaN2AyB2cqUTN2hgYtLs0qgFXuczfshTIVn4sBzgnYIALDo13ioISZ
	 Z5XQpm0nbQVh9y+8oXRjrTQFk5MvQW4IcIqH+4FwG8iCD8kVSYMyeuUP/fEZ0S82qd
	 LW9d1P5mKI6GddI8WVA9KkkySL2D4wMPuZpfVt6EU4x5APhkDvCjClTmQMDtY21jd3
	 0afCjjsrY7C46126w90vRfruZ+paFiiYx26auZYGZb+9UH92PaL7igN+k679ilzf+C
	 zyFJTK6c0fKtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB663CD3430
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 09:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177797205369.27634.12511732627786289201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 498089d78423e8c25600c8dc3747087d41f2ae3f0d4071182647974f8a5590b3
Date: Tue, 05 May 2026 09:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777972053
