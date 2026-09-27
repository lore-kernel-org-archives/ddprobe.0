Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65766846A
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790472034; cv=none; b=Egr9ckfwXCHOfcnpUQjFzK5Ri3EH22Gc8M920qBT4Cwt6X+wGv2DGoCgO9OdAeS6i2Tl99nGvI0AdBzljgLYVUMYCzllBzKPuvv0PD4At0lovovgiSbnMutS9H45/2xEnYWzUFxvvzcSeI6Nufti1HYW1yFmJ02VVi/oEyBGlqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790472034; c=relaxed/simple;
	bh=bwO5+o0eQY3uYGTs5FrFaE9nOf2sJo+FLxMd55EJ/ac=;
	h=To:Subject:From:Message-Id:Date; b=iwAZHQRBx2S21WByacIvlCnJcvNec++YjEmyxpKT8h8lJgYZQgA5M2bbBFfNsJZ3OC4F9KyVYsGDYP8fAq++xE/ZUsrAloyIvrCAKazV/U5t/51CRbT4kuoQ86spUu284BW/n2t6QXazyvK2qdL3v97lNAUetXDs0kc3t4CNK4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rTjyosyu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rTjyosyu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC80C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790472033;
	bh=bwO5+o0eQY3uYGTs5FrFaE9nOf2sJo+FLxMd55EJ/ac=;
	h=To:Subject:From:Date:From;
	b=rTjyosyuJZVzDoQ40DBqo4VruEttNH5nJ1vNhObIPtGqDOQA7ZMin7eNHCr614tCo
	 fHtt6+1kWUgVE6qw2SKgVwlDD239Hc3aursPvvf47cNPfnNJXzcy/FBaLkdGg/q35i
	 c8JLVPXIQY3EDvgIaqp/7EuTO1D5X069FeJn3jIMtXQlhWExmfDFXmIWKYiF+BBK1Y
	 NQdQIckGA4PGL7iSBgfyZ3vHdZzE8cCRk4tUzuY5NkKjgte356Mbeh3v84Aucdv6sN
	 TfsgtG92VU25+tsvxW2wfQKj+cylVSwS+28Sb+G+jKAVOh3M8Wb4gA6/yZ+gSpdA5a
	 zgypaCLrlWiFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FE8C98328
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179047203368.14611.2445096060602591426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f41137c71e8aedd077fa3a44b7f6ae46495ceda337b1c046a5c611e58daf737
Date: Sun, 27 Sep 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790472033
