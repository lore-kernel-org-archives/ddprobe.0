Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344CF2FDC38
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 17:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776014854; cv=none; b=DNPjYXC3ElTNSv8fh5XcsrUxJVNJpTzeBooEXHCwB6yQrK1Pkdyb8cpx8adfbr75r6bosg6XJcWreqcEkIAQalEkYZZrJNN79yYm2jcLNj+JsttTZ8jPH+3dV95gKtgOvSKDrRQL397APR+XlisCsI7OX4kHPgofukRUhKidno8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776014854; c=relaxed/simple;
	bh=X5nDoWP/eQXnJWGBvKxKakRaWWvaKorvti2roVD4tE4=;
	h=To:Subject:From:Message-Id:Date; b=X/bfx/1/7Uj4atrl5qoKZSf8pbySj+go89PUVqiYTy+2StKJglNEC4arN3WIXt6lMzJHV6+IylwexDoH+BAqYlMVANYcoXdceF9ZWfHhb+Pj5NJuKBgcQXLnCjLiNUXfBcV4PtkHmU/gzwAK9egtKAdyuQaXQPyL8l9OqMXISHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RP/ke8MX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RP/ke8MX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA635C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 17:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776014853;
	bh=X5nDoWP/eQXnJWGBvKxKakRaWWvaKorvti2roVD4tE4=;
	h=To:Subject:From:Date:From;
	b=RP/ke8MXDIwE4GlnKKYU/zMDmW/soynQdP1IkcumIf3+WNbT1MhCtPkUmoLDMxe12
	 z6Uqk6FscwsRS6nw7kQmiCZl7/6hSHaVYot9KMgTPbuEkq6Voyz5aUDuEuPi1I1mDH
	 pqOiSfkU1vTk+l7KxEIbuVNta2egneR0Z+p7hTxQc1Od+kxqUjqkJZ2DJ7NKEma6wz
	 +Wa7IrIG03HrF1j+kLz7CmYQPJubUydIhBgXNaqt98/c4DCzejCljXKMi1dMBm7CyE
	 QoJSgSEXxFGvcw4x55+RTulUEIhcORVs8owK2ErF0OTQnLiUqiMzrSx6jkEZnBSmS3
	 AMSbVKDsoaeow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB861E937F2
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 17:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177601485369.18813.11761813203088972963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3248e87058074a851583a368f3a478eef02833ce64b4a9515847667bb239b067
Date: Sun, 12 Apr 2026 17:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776014853
