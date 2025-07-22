Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DAA72E371F
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753222194; cv=none; b=tTS2bhE4fwSOmQ47PWrNGU4Zc9mZTQcjuHbPZZWIDU1IqPSQGQqj8xeSrPyQ2fn1Rn+RWhY6/7HBslSNn8mRV07deD3di5eugkvIGsn8BKDmuqRix2ulszX+hzaCq0RfYHxKga63lTpVxAkpmwgzhrCzyKz1MN1YNY2t8lRgRzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753222194; c=relaxed/simple;
	bh=lhZ7KrVuf6rPT2pK23eafIvak97Li7b3dEBbrytQ8wg=;
	h=To:Subject:From:Message-Id:Date; b=FnLGMxJ+Bz5jdeVvPYJ5JR1LFpVNYtSMYZFqdp0IovB8sKSVotRTpbVSGbftaLuN2tncfzgQEyd1pqtRZGOWNJXmLwfEtA/T5q0xpi4TROCUOhPH78iHC4zHemu60qPiKd+B65YAXQf5K4kziyCL/i4mzcBp4jrjyg3YGGLoqYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=scSiOPC+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="scSiOPC+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A753BC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753222193;
	bh=lhZ7KrVuf6rPT2pK23eafIvak97Li7b3dEBbrytQ8wg=;
	h=To:Subject:From:Date:From;
	b=scSiOPC+D3uuUCsSMmf2FPUfmacRR4xXPDbDWv/ea3ZAMwKeVtRS0vkJ7fmlkk8Zl
	 rGRCoHa3fU59InvFnb5Kj11oDKUZWlQtk2VieH9mOqN7zot0eUHMR1v7KJChRl1amJ
	 EpaYwFLft7dkg4LB8RmVk5SRJ3ieThNfXW6BkcC+91otACaBhzRaETojIehUSzXR8m
	 a+Vz4OCu36xcqUpV/Abh4prTRkx1DGNjSZUnnQRAXKs8MEwk3gbV9f9Myv8oOsysPe
	 gKdRoHH2O/M0Cn4Vp06+GaUrcI+WuIFk96hfDOS5eCcxtCMMD8BJkP4fwTXsbdKkYU
	 rpkmwfacqnimw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A34C83F34
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175322219358.26465.18057936803115501475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04ba3bba65e27540857a14618782d8000dbc5187ca4b73ed15aaab21c04dc024
Date: Tue, 22 Jul 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753222193
