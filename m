Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3E2637E5E2
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786830634; cv=none; b=T8ZAwWBXT+aN348bvTNtxSHdsHtg0ubw0aFJBLAbgFUR5lEp8tQjP8MsEBO7ht+U2X75DbsUx/CXJXOasA9XYRI0fMjpms/3LKwRiY5OPF8ZH3cCorQD9soiwUG09JaQOxMQsW4fL4YbSz7Y2Zj6mSVEeXu6nGlLchaVKFzTle4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786830634; c=relaxed/simple;
	bh=KZMLsW1JJmk6YleMA0+rPNOBiplH9OWKNEEdoBROItY=;
	h=To:Subject:From:Message-Id:Date; b=ITS7/O+sP0o3r9mpcLCs23J1snvd2b7VFpTPxDSpTHP/Wuk0Vj78M3DsLft4kz38rcuMEFwpBdDiooC+ppmQXfU9gj8f7NXx63omt6az8OxwGaTVb1vycIUpRM7XsciQ91Wv+Gnjjg0MpeyNWsdyW8A7GyNH5RdAfSRgkjKepmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fr0bKjLr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fr0bKjLr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD647C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786830633;
	bh=KZMLsW1JJmk6YleMA0+rPNOBiplH9OWKNEEdoBROItY=;
	h=To:Subject:From:Date:From;
	b=fr0bKjLrVxu9KAZJ8mJPzVqc2FzawL/h649MvNhM3OMuUJ/1x3ZiNpreSDw3v2R5X
	 OQJ1g9xqv4w7on/HT6X9SJJGK4OPPQLjIq4CxgLft6XeTckvr7UQj4Yqwa9IB16Od3
	 iubVNOjnm/F/E9StH1xNvkckS3zEZSy9rQ4KVpyEaFRIb8ain2bCPPT+JqanaXx8R+
	 8t6YIec2EAyHmwClEX0TDMNKBeKeY3kXax1ungFfH3LH8abBO2Zq/VPhQA7/Slr9zA
	 DOTIsi/jgngAh6WowPbZjc3rijZkmcEjcuI34Y9ZLIBD0l3DTKnI9qn73jd6aSzdXJ
	 PVuLUROVeGgEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA226C5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178683063368.2921.3168909133548585967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f4a3dad527598b14488793128a37529827b1f684950a8f42342a6cee54496ce
Date: Sat, 15 Aug 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786830633
