Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A36547A0B8
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 13:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787317836; cv=none; b=a+J87H0LVj88D582tPkSO7YL15sR2kGzu4LOFkzo/3Bhdomrq0rw4z0yWgUs1Ei7TAyynY/OeY/sb7pHuJNMLT/X1B/TT4Iu66gX/791DNAml4CgO+D+hLTz10q3US7bzs7pNGYKoDn2m7olHlNqfG/tQ3VbN++1bi9P7+5u+is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787317836; c=relaxed/simple;
	bh=l4jQbLv3gkp/62WtqYVtLDcmO278PIC+vw/IyIQnGxc=;
	h=To:Subject:From:Message-Id:Date; b=E1gONEqR8btoxTEg85hunQhgjI7s8aN1N/j/xPioCTGTqZO6pjdiDAXRYspPQk/JhALD1KM2uvQRj+OEPBEaTyK+l1EFAmArP148T2a77aOoJ6QMd1SnxKNfUQbhseCLJJ4soDS9UYnhUneeJQbNTRpjZmi5aCJkC2y5geXe43g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AHG19dcU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AHG19dcU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E455CC19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787317833;
	bh=l4jQbLv3gkp/62WtqYVtLDcmO278PIC+vw/IyIQnGxc=;
	h=To:Subject:From:Date:From;
	b=AHG19dcUREh40q4kZJURjt5zDY3JlugCSHZHnnmDCDzlokM0Ja49YlITR+u3pH7YW
	 5or2z7y/ZPDskgsecZpliSaNOdXQzw8FhRICfMvaSfDdkoq8DbblbEMSaQvP1G8Hf9
	 QBaa4n+S5H43G7uBUD/2At4V2mg8Z03sR7+sFe9s632fE/5BvWtxO2XfSxQDzYHpsK
	 WfV3IxB0jERkfODe7PM0j1Bp4q53vDrdAMtVKX8p6QDWFbQOymRVPepeT8hAdGK67D
	 wjYrZgkym76X8fS64xCB6lXGSxgN7SWD4F0+ySqOI7tmczThUl9N6LXnv0pH2nDEAr
	 uyKQ6AETeds4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC868C5DF89
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178731783374.27882.7718923964786151234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b04b31efac0c24e1952590fe50a2878b2c14a06da156072bf8f77c9ef1d3ee43
Date: Fri, 21 Aug 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787317833
