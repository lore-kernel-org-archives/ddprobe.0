Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1840413B293
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750489794; cv=none; b=GY/RRGJXe9Erz8DcO8i8Q4lkrYU2/PSRh9GVsMH6Jucl5HJRitwIPeKbSm0hMDiuqdl6CB+MMLzZ9vv61YN8xkZi+IB40AfONC3L50NpHl8PGhDKlzxF4w0y4G+/z0YAGogqT4xxkFShyNCfPmA5TO4yCC0axSSVnBHoMdlQotE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750489794; c=relaxed/simple;
	bh=NV2/TZbPJ4z02pVIdDkUPiq8sIUzI6GohFeofJAhb8o=;
	h=To:Subject:From:Message-Id:Date; b=PJxcNNsvCCC0ImU8GjF114pCnZsep6742VtIzoJOh+SoGkUS4YCmjkcLwJbIeTnBXJSt0l1Oh19I4fSCD51MCeXLb8ufFajgdtzSfyDIFBhWy+706tqX2phVsx/EaWylNEDr4RUhc6iTZI2DoPBq/WyWzLVaqlQ4ZiyejLKweCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQjD6p6k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQjD6p6k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20E9C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750489793;
	bh=NV2/TZbPJ4z02pVIdDkUPiq8sIUzI6GohFeofJAhb8o=;
	h=To:Subject:From:Date:From;
	b=NQjD6p6kO0DP1ESSf6yjz5AjEcNWEpy1aihiLpOcNEnHzBtsSqcMieoUU1PcBKO4l
	 9jg1CgUvzIomO/uvclmuuGfndA/A6K1E5tPriO9X7sFbnlaoMUHTW6eGtWEvZeL/Gp
	 Whw+E9u+oDudJzhxv/rB0hK3Si4oCbh8dkrJd4fVpzIgpsPd2h4c3yciMbsw6yNgQQ
	 O/I4EzG8UD9RuIyeGvdX/p0myWG7xENj0W2/MLa/atKZhbJy9WA41uTHEpPpmPLgB+
	 y7zM0Q2emNIQMxElpRyuMhuIBGdkpRsU0GRKE+tnbqpaLXoKXch5RhDWInFyce4WXp
	 v1uJyU0h464ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93831C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175048979357.20040.12114922482586908972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0c33260ccc8dae6072fd0f499a381476d309d110d47b53d04e4f7ea9361efa1
Date: Sat, 21 Jun 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750489793
