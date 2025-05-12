Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A629295DB6
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747054194; cv=none; b=TR/oQeLCVM5XU/wL+HubwB2CH50fNmv7zjoTPKVehdTHvWqAHFA7Qxk66NP7nVeOGpkqoncJ1MexDEwLZkIAfsK+p+utiEmWipGkHGIcFHDR6DtQbsy2qu1SKDck8jIvTK1MrsVIDoc4P7pYMYMZZ1QtPSGFm62Q4NhTWbci5SE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747054194; c=relaxed/simple;
	bh=QCCSFge3SWsIeqY0rS7DNbo2TCTaUT67v81FTWd3bXg=;
	h=To:Subject:From:Message-Id:Date; b=ONFXqM/z9/jPGG7WejBZ6IlMo1W3tpczBJ5nL/zoITke68nez4VbI9Ifvu2o0hGf6CT6/odU8dtFtP0k2tQKQ5xzO6HRXnn9RI3uFHnWIzW4T2cHv9SinsjETsXkEr2HaXEe2HwhNSULBFo6Xyr0l5P7NZws9fOThbPgocEVlc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3o+GIn8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3o+GIn8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F395C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747054193;
	bh=QCCSFge3SWsIeqY0rS7DNbo2TCTaUT67v81FTWd3bXg=;
	h=To:Subject:From:Date:From;
	b=K3o+GIn8/KoRtTNdltGx16nCp3WzrZSixhuP1I80Db4hB50QftR+K8AWX7UZculwT
	 rle7ZmposdT56MY0Yndu1DlwhUHgZetnnBYuURaIdpmqiYGAsQfF5jg74ps6qDgqXN
	 0kN1e7mlNCoRpmZF2gSrG2V0GdXqQE9pThryVLYKAGPAWDG+im+mTrlWLgPoRmNNdh
	 hOro+SXKNzIxBiNF+Y85Y/sT54GwChNxFS6m8hpXEU8JXzaz/vm8Jpui+LQj37TvfN
	 enEDeQ/ZYG6cSxp9w91WhFRHSMFxA4n/0xlOULkhD8q2wgqE5Xc7HHo8Pblq5hse0d
	 qHCaoizVZEPVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5D2C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174705419357.4823.15054781233330637265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31d22b43d88aa724256584d498a98d666fe94c704322f10560628153403dfb08
Date: Mon, 12 May 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747054193
