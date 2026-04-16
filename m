Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 599FA303A0A
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 07:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776323254; cv=none; b=H9f4iUJ+ZR1+stWBjD7bR3HjfWy7qxy8XX13OmX2LM/MvzRIpXRVNOElZ2ySyeEJ2hsSltUNatdtUymeiWvu6AMFYyMumQa+4nqhoGxjSj5L6cxS2g+YJTajYPKLavYfWlwl1T7oJyy/17ZX/nEX1EH2f+4g1vQTu05JOA6TXls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776323254; c=relaxed/simple;
	bh=5aDnHaqVewTZMtDTitkIe+uOFxzG1C+2jw6W2Q0/rds=;
	h=To:Subject:From:Message-Id:Date; b=dJN0yrJVX003MZdFFt8I2VIAh5poDlll79fcdGyRzl8oq+4hNv84nJxWB7oVjFtoHBSj2mIqk+7Ye8Ug33zb++cdUzafQl+FCkOzFzjQIAnmpN8h4MB6rnKs9IWOKxU+hUyk5QrUyDZQj6QKTpiHjHzZqxOb2oFylnXseWsCbQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kzo1UA9J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kzo1UA9J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1B48C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 07:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776323254;
	bh=5aDnHaqVewTZMtDTitkIe+uOFxzG1C+2jw6W2Q0/rds=;
	h=To:Subject:From:Date:From;
	b=Kzo1UA9JW2eIkr0haTjnJVzOvAvTMEUiRqk6Me7XZWaCbMs26eCWq44hNkuAteZVd
	 Nh3L1XPeI+vuPvXrJqQINGEgA5wKGcvt0k8f3e+uzdoo/H5TT3cEqRJ1m8+wbmS288
	 8Hk0c46vvY8WqKToe0E6kzeJ0u3EKMgsFkhO+s15pYt/G8zoMuCfAJT9yJwcxmJuqh
	 IhR4piTwCg1yzrIZ4qivHT3XsEc6hX28ASWSK/FOysk9UYluLs6/AlEKcmO93h2n6f
	 CIo22i86dhsRmRoXPGrUGzMS6sCnjR5gDHUlnbmMVKiaXtfclbVYSkj3wVZCmKflLQ
	 sQjSUJGIdOQYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2D5F8808E
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 07:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177632325369.25967.15129561459333101653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fcf816640649dcd8258a345606d501d132d4bf53076d6c93b4acbaaf4c7c4dd
Date: Thu, 16 Apr 2026 07:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776323253
