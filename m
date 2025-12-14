Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152F527280A
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 14:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765723974; cv=none; b=K0TkajCrVtwQM80ukZwUGPElmR8DJ74UE/IPft5lzDhEkGAfpDdUykOTtymEVGRqJ2bhF97W2o5VpMzIXR7Jt/Tl8/Ynw0VtrtTIje/S4D3afU+XGUD7B0CzwFTdFqy3MDZNd0d6n+soIIfda/Ga+jYvUeZ5ObSRMtC8Ho0EZUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765723974; c=relaxed/simple;
	bh=6b2klJ//j5QNduyubnLfcl5ARAKPJW/dfbdtFQlimM0=;
	h=To:Subject:From:Message-Id:Date; b=n9PVRrTIzJtzJQ3JRPl6zUT9RxQ9a+kox/SPLYktGjISDsDKuaRlHFaFy16ThyXXJWmKvalYNE1rUw2Y79Ak0UHBkQN8Mb+EvZNlrrIiaBP/gBHOFsn45uoLSjHRCuCkwuDIdKhz4tqGXX6glYz8pA8eul8DPzkFkUhSoqrh8AQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nkw1rtHl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nkw1rtHl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BF5C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 14:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765723973;
	bh=6b2klJ//j5QNduyubnLfcl5ARAKPJW/dfbdtFQlimM0=;
	h=To:Subject:From:Date:From;
	b=Nkw1rtHl5DlxEJLyT6zeoVF/siabQRjmhHvxjRVCTrLdEXhPOLvrpbpmFpUAM/g++
	 E0YWtRYrAlSgrkB13clcQg9BO3wafh0K6lMdMR/xaTfPgt48Vj/7tXYFJHWJ4+YoIt
	 GwoVeYPOoKxkwWEyOK/BWoSO+YvNLXmFviQxzgOwpjgTrN1WNKwrHujdlaZCRRSnnY
	 jN/zM7jl3w2cUiNGirCW26IChoCQi1uSArf42i3iPxypCPWgVesBuH+8oy8bgfHZOR
	 egznRjIofXK0UEj2Zh87zsoJ9q1yZ8glkPHPBBWvE2XUJ1obZ/Yo+UXTPbSqPnaO4x
	 Wsi4NpdCaHiqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA34D5B16D
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 14:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176572397363.13766.9340329833979041826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3354073b0719c1af7ef49aeda72e90aeab689e57dd2a09e4f3793b108ad5c03
Date: Sun, 14 Dec 2025 14:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765723973
