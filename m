Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F4C443AA6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 17:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784569114; cv=none; b=i/EC/mdDOLQrhMri82bqhLkJS/B5jYC5spV0lxaGg1vFZ1lXzTqvXRg2Ee0Tka3EQ6oydqnIgY2kYbS7LPNmdsaAU1LghDx40cW66bhd2NCQBtdsYGe7hgWR5y24GS5Isdym6Mns6JX/Gp5sHdYU+XL0csAkCDRpIIe1ENk5vdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784569114; c=relaxed/simple;
	bh=afBStoNUkEqeVSFIGis794bqq2l4cMT2inokds24Fhc=;
	h=To:Subject:From:Message-Id:Date; b=NayYzrHo9W8pbIg3EeldRbLC9rgRQ/cOztvZyk0QFF/1rXfL5QuTCxEFKiW4Z+U7xOdeAn19f+GTgA4LF6h6Nq6wWqG5U12BgphJlne5FFvUFRvu50o04rj8L3eucTB3q3pu0sJv7ovPL1JYgwGVXiG0GjX+cdckovYhCOGurMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K4/edk0p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K4/edk0p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E18CAC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 17:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784569113;
	bh=afBStoNUkEqeVSFIGis794bqq2l4cMT2inokds24Fhc=;
	h=To:Subject:From:Date:From;
	b=K4/edk0pqWu9GNTE+cfiS8TWwV4APFHjAt5EUtBnqUzEUHJwAHDsrF5EepyNX8syr
	 +qK5uwvkP22gVfGkABxaittCNuWAcB9SrCh/Hz52qR4l9Npe4HpsJCG3RHJ7nBQabQ
	 02ojiIQwv+P1jhYoibxpAAkGp6E9DbQCHif2s7XGfdN/v6rtpi64KUR45DktyEQrTW
	 YUs74Cxv4p5/N5d4r8z4TqaFi42WlqQliakgXZrSDGCxfQSjZa2li7CKafaJG7cpTE
	 8GKVxISgUeP4Z8JzU34dSNj9VIHxeGAo3tY2RtEMPH3XnkSR2D965MJEi4xCVyJu/+
	 h25m1dhFFNS/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAD27C44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 17:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178456911374.32673.17837798973583267745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61e2c5df5bdd0767bde4a9e53ef48b270e4b8d306351ae6d680c87da22f699a6
Date: Mon, 20 Jul 2026 17:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784569113
