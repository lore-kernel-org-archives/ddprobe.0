Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B68F22B8A7
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747805994; cv=none; b=QPYmnAw6jtk74ISvf9axVQzDdBWngcDZWP+xI80XGMksj5A9adjAkKaNGgZBQcuJlg4vY5eeTktIq82ATTXuLovj3EHNqO/eEAcCVx2CrhuLkRDZ8CRF+FDntifZbLl6PgEhHRCRNBwXlPl6i0aSQw50inBOCpFgEJq4Jv7MKrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747805994; c=relaxed/simple;
	bh=mV9T0IALzy8T/Ec6Lxq/sPrdygKRALZh9VWPVawxweE=;
	h=To:Subject:From:Message-Id:Date; b=bxggz6q6BkrUxYmaeMaI0Rzrep+26/X3Pcet1FieF8DR2s+qTqPrOnsvTOc1jgG6dGa4Yiph/02X0/CGQBXSJITStB0U2khxRjciDEDSuLhWXdfqdxX6xvSibSBHB2xRZLIeEGDXwzryx1v6sWvdGH6w01vkLR9X3p3ZQ6BLNGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uVDDtJy4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uVDDtJy4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CBBC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747805993;
	bh=mV9T0IALzy8T/Ec6Lxq/sPrdygKRALZh9VWPVawxweE=;
	h=To:Subject:From:Date:From;
	b=uVDDtJy4QjgVDLccjSna7uzpYjrqVgF1lc0fpGK8bJ7yUxE9qXVBTh6mBjVihQS5V
	 IVsBJDZ+6lSujGEH8s5zucXd108GgSsju5+CC2D4k+T4pQoU2wFjsRRdKTFP1bPwSR
	 OoNn14WOXMblYsil9QnL0/kmPvuFm60rpOeJEBNldNQeQz8BOwolPgp4ZaW3jLkloj
	 5TRpDH9/IppB9yVq+Jfe3rkYZZbgKGzw0IJepweQr+uTFFBY+EFvBHXLsXg6u2kUVe
	 2VgsKCCDN327TyqqkMph3k0d6jXwyX3mpa8/I1fV8RacifOZ00ZfhJ0IYLuM9InGu7
	 cOoCJxw3B7hNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBA7C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174780599358.4738.16726746834049061475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d1fbc50a0a44e51da592d3995b44004a38aad5ea2325701b81d7789d2fb8c53
Date: Wed, 21 May 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747805993
