Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A4C5226AA
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792068634; cv=none; b=iSqLEocgRyw8lDtA8Z06JduKtRyMwqswti35I8aNTDGZLH3Botlc1WHrV8pXWNkEarn/QUanmsh0IXQ2mRaK+abnDieleYvVdx/CCVNXbpsVkuWHf7ABMDPKR94E9Aw5qoq/nov7tOtdOq/APqau/OHl+KHlI1QCkHZbCBHqgOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792068634; c=relaxed/simple;
	bh=knZ/o7m5gzz3aXshd8juxjL+f0c4zM2UeNH5QKIh1KA=;
	h=To:Subject:From:Message-Id:Date; b=C3WtzU353MFfa66sgcaPlpDf1LzHTwDgQIT6ZeAVB3QwVSvlqBb8fLiu+qfHftJqNJbrj63qpgAbQeJDpkH2DLQvVWwWePQRJEll9OiF6ZK1UyusDdYKoAn6xZSpU9kfi1cO0GbRenFZcmspWw+++jtNfGmpduOYAsr6ugVUkF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DuKyVWw4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DuKyVWw4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAED8C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792068633;
	bh=knZ/o7m5gzz3aXshd8juxjL+f0c4zM2UeNH5QKIh1KA=;
	h=To:Subject:From:Date:From;
	b=DuKyVWw4YdpIMXL8SSZR2pe3MY2QewhbaiWottQ5xsrNuXA+cnSa/G87KojnyCQSm
	 +20lOE4M2TO0zLqwjSZUgf/Hfj02HhujtKZEHVa83aw28J+s3hkQKqUuN+fFXHbUSC
	 U7gRWW5DLhlo9nZxM7ocD+B73Vlfhq+rPa3UdahnxAO8BCiHp29Hns1eK26Tg4uS1j
	 cKONotaXSm27sWcKZDGMTUDuj+6zxxPCUM8WFsml4OjTOV3X226CiW+vaNadjbNA6l
	 mZBrrGHPFN1dZ5pBiJfM64xkdM0wOW73GIecxAAZatWoNddgT5byW0zfBeWgNn337Q
	 CHZtJM89XqwWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA668CC6B3C
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179206863368.7130.15304221046394152324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebb12420ea934dff2c5561c27c97560731622674fe772c25e658ac9bb08fe02c
Date: Thu, 15 Oct 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792068633
