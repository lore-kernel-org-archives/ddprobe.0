Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131BD27F163
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760926794; cv=none; b=sr7324FNtA2Dq/G23zo6nYJOXN8R+xtrT3caImFmE9aod6z3nXGOYk5mcgHeton22J9vRJM3NKtJButEOGRlLJyE+9sj8o6sNwS0zoscRD/V/EaZpguv2iyZLekXtgq52PnLCHF3rapIwBpvGTzeuUzGN0nxrgp76Eb5uvP0B1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760926794; c=relaxed/simple;
	bh=HHwXKXtLOGp7MAn8E0OvamAnRqy2Cx3LUXgSfscJB2o=;
	h=To:Subject:From:Message-Id:Date; b=PsJXC5HZFyxHO1f2pDhxevrdrDcB4nZ3S37qBLLFz/cNNlk4VUz4rUtbO7VMovZbIrdc6+XdWKG0u5NwZXl5sKoYtHdtAxDx3Gn2TM3fTIzFZJ5uRtiX+NMzlLmjfPkeh+CJ28RVXzHSXGendKqejvgRogQylvIveDWCBfn0vY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Voby5VrG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Voby5VrG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE21C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760926793;
	bh=HHwXKXtLOGp7MAn8E0OvamAnRqy2Cx3LUXgSfscJB2o=;
	h=To:Subject:From:Date:From;
	b=Voby5VrGIhNiIgRSio3jFon1aoyvJKkMJeokJWUszgEslPNDlTjbX71Y5mKCZM79N
	 8Sd2seDALf36Qqmk8CpofISLlB/ZUX84WUaPM27ELf65lW5HDuXw3J+hjvY3iMttvZ
	 wvbj/ETJfHyZzRrGbdT/97PVlfhwZed+epakDtMSehp0pRAuvw/PN5csqt8eb5iDD3
	 TNW9s/Xv+7MskNjtC38qekjyzA6D0AEFNLs5IhkATfTpHf+HA+LrCBZAA+bbEuKOfZ
	 ixGYsQh4+fLT+wwYO8xKau5byuXAHX1KTOM05o+9hkyTN9ylbTZAKFjsKp7QvPZpHg
	 EnFxBjAd1+P0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A97CCD195
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176092679358.10881.5617811457427925557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e995e511f795c4f9400111369a782848a812bccc9f24fd8fc9d1313603ff0f1a
Date: Mon, 20 Oct 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760926793
