Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C53A1D5CEA
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733402754; cv=none; b=IQDtXX4MYpi6XezDfnZZ7bgdrjCypDkDqWojeEklTY+h9NGdKUf3ofs7/x4xBRkqcya9sfOgOey4MLaKgYj4klevB0dC4BBlUuDhdwd+uvym/uRRfaCSVbz1sbncztBqlRyyMNozcpbCqKuSq+g3O7z2Wt2iJ+k3PyWrzr4OyUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733402754; c=relaxed/simple;
	bh=+1DPjg45vVrjXnXiuwm8DY+C4vyTngd1y511VuCfw0I=;
	h=To:Subject:From:Message-Id:Date; b=cB04jjlgMOI/ftmBHAgXd/JB7XKTemVkwbO5LZC5o2FImPNAD1Qlmg1tkFJQaML2G+AcsY6I/xrgc7buSW0J9vvoMd6xxzVXA4oBgtBWi2xlXfL1l+RGUr6nkg/ARVq8b7qeacU5Gn+qXHJ12vhfzCC/Oo3ato/IwDKLRKAznHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vAicntZd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vAicntZd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1105C4CED1
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733402753;
	bh=+1DPjg45vVrjXnXiuwm8DY+C4vyTngd1y511VuCfw0I=;
	h=To:Subject:From:Date:From;
	b=vAicntZdHONj42IdzM3Kubn3y7BeVHBMEF2eksCGKaZDuUjzochv0zUIFR6rLAuLa
	 OMFBcuSyIdJdGEoNuVso867pQ1onVYNLqzseNqJnDjXloN6ncyj8e0lp9UfHfhGNFI
	 z4CBLW5ieAg36ScSYR1SXQm2o5y/y+WjSNRcklfpPXQzlbz6Hz0rBbPkL/mQpvSwVH
	 W3g3tKN040yMcXvBUayjaWCVdRkmvf14O5UUMA0wwyb88nr409ZpS0g5EGZR0quju5
	 +0Dl/AKLKoUikkXGjo6ePMfQuhqFgjSB/qvUtOjLUeXgMQdF8F/mKnDMC1/n5OUe/d
	 A2dYneOw6+FZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8F2E7716C
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173340275363.607.4121971984263479332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05f80f741cfbd69292388e013c62bd38f406c7527e5aa24168b46fe4b62ffd80
Date: Thu, 05 Dec 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733402753
