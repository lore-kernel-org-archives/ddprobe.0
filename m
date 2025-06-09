Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB0674C14
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749492594; cv=none; b=puhzie4/2WHDA9SRgIcUcYFe1MwW1j3gu2B5ykm84s2ivuhH7gZsfX0K6MSRhM/PXIlFle88S8/n/m5lxNw7Oavxi2rx9ZvASshDSrw58Yl75Gr4HtPa/x2G5nYaXdsiMFsub+AkhXs4SIuJFFDSGna1W7SUkOqST6bu+DjwlzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749492594; c=relaxed/simple;
	bh=cRbORFL5SccZ4OiB7byy/rmGE3fW1DNZ+1kuPeQ58uc=;
	h=To:Subject:From:Message-Id:Date; b=OKX92DhM41qV73jafGBB3X5MW7UTXdYfu7kZtAdQnruMxKdKS9JP3PHeSc/QKaSnAq3Gihn0pu2bg/Hgqhq3Vn7jsm/KZwW8uQCMGF4t+NWvZBJjSYEzcLnDHfsg6PbTrPq3aGWFJSzg7/Anf2xd+Xwu8vm7vXVKurH7i293+3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pfa330hj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pfa330hj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A593AC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749492593;
	bh=cRbORFL5SccZ4OiB7byy/rmGE3fW1DNZ+1kuPeQ58uc=;
	h=To:Subject:From:Date:From;
	b=pfa330hjPdTw2nPrRffybXS2jepj4ccXB20QpAJz/HWjCqwCbqOVdkThttwTTUBX0
	 HT3Ay+mhRtMHa07JK4Yw3L7RWyPJKYxl7FoA532V/bk5jSjKkzAmrMg/rYGjbPzCLU
	 bqdXyjULvX7GGq0bZpxzPmPizen8e0edyd6vWc28mFCC3S5shNiZyL41eKuIaTjwl5
	 Iq7Dq4tJxSyUwlpVFaDkhX2VonKfcJwZAPOubcrbmOSMf9mDUm2j2IbdK9U7G6bCk4
	 QN+X0edVfpmdx9qDC486pzhGzCnqfncD2HGk/xolr2byIdKxwAuMCrxYPyS4Qwy/J6
	 ithkSF6OeaY5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F073C61DB2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174949259357.22714.11199768780699116354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a936c08a75366fab95fbeaa07ffb3be75d9fa7d1d1b356237504c20a99fb7e6f
Date: Mon, 09 Jun 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749492593
