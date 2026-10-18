Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58D2C34CCE
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792286434; cv=none; b=Bz71WSVy/E9txflTbVLUr9LhG/gCLBV3IAkWbGdmKyvT5qSXD0dN+gz8iw2oXAdVEGb3D3iwRT/8/r8Z3/W8EWc44qPUrXGwCprrzGkeRCJcBSHKuWhJF50DRBv0zbbsTyTFUKhAcUgMmaQX1H6GWteLZ5xm39Ks+uZmNSUeRT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792286434; c=relaxed/simple;
	bh=4kYi0+Y6cu0f+3Tmv1fXuJ0OyXLS/fcSjvhQcROiS1E=;
	h=To:Subject:From:Message-Id:Date; b=PahXyK9Y1lHJt3900ztdDXBXF01PsnrRt5QJpnZmpNPaqeAKSavgoQFZOExTOxbUt2wYIZ09pYwr3nxoa1vmqu0rNoHKWnQKyD/onkpT7MdxxEidCO7VCTqglIKjiBRzp9eHXHxmvDKBtLKLsHHuEorprTnHZQV6imfFS8TXpT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kkXB8FD2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kkXB8FD2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60F8C2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792286433;
	bh=4kYi0+Y6cu0f+3Tmv1fXuJ0OyXLS/fcSjvhQcROiS1E=;
	h=To:Subject:From:Date:From;
	b=kkXB8FD26CwuhvwzVrTfxoyTEKz4Y/O5dbd1w8MMobUZ+tjXzxttJfsWFB7v4BCLz
	 6IjBgozO1PeylcjOo3jxCnUUlbW0jv54I634QdsxKU+eHLvYP2fL5l9s8kAF3zkwUy
	 +NkBzAmc8olAyx5WQg97QAFrvW7/rkrLTGJq92gYt28U9J3EAs7AH1BJgiu6/r1Vab
	 J+ulYs0pTbN8CRhnMKt+f8t9jO6OsmW3gIb8Fk6Pfb0DJjScFx2gB2z/6GPut2lX4M
	 6Fyl4iTptEiVaVd3HE5ndTPKP8y7+0GKQJ7AJEjJK6AN+cAdtCx0aLPJDrLi70vsyH
	 tVw4bqMJo51ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C87CCF2C7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179228643369.21403.2809215185895059793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f51e9118dc5c4d122e37533cb953e8d925889eeda08e02b16ffe19b7fffd8bf5
Date: Sun, 18 Oct 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792286433
