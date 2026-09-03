Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331D030D3EF
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788424834; cv=none; b=A4FDC9E0VXYvjTUx8kcDa2epixl+wFDfxvg46dh0edws4AgjC2WEOkqBRVXKUW9ajoSBt3MKGEUAzPZUJUAQrOzhV8aSFM85NhTyywYb5DGkg9DjG2QFLbTQyE5ruzJjHA0QcdKQhngRxFFW+ogVVau/o+e+DXRLhtOt/i2Fte8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788424834; c=relaxed/simple;
	bh=u4SJvsRtDYHcLP75ImZq2IKbAAzfCAupfM8EgKKIiz0=;
	h=To:Subject:From:Message-Id:Date; b=c7bki3Eth1udzbDBUoPzHIUMogYi0QY30Mn5ap26jBQxlGyDiBX5vQTB/Xxrl7j/cp/GvankZ5Jw85rumqdnnAKQ1722nqSOhVP4y97Oj3lTIBbEj8MLXO9H7/orXoWGBjzwgT9dTnuXNx7X8bkFuZqqU02X7TF+bIkHkeNAafU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/OmHjIw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/OmHjIw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2115C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788424833;
	bh=u4SJvsRtDYHcLP75ImZq2IKbAAzfCAupfM8EgKKIiz0=;
	h=To:Subject:From:Date:From;
	b=Q/OmHjIwLncO5NROriRMh+NIQYcUPHyTvONvV+sPP83coMSnJSHhoUKFkNWRqaGNa
	 WgJPvLAUnSzPPF4QZ8zwCb4pWNeQU7KAAg/pPYW/nEXCUTb/D28MJHEjqO6lYMS90R
	 yreZlMnPuc8qQWEcExEDTbgIYqJE3Yb+/9qDnoXWBeB9YpOz18r657w1CnRSk2Lv4i
	 mBZmvaqbHYZrfOVogmQtz825faCxSe+Pp9TRpZZzMcStTGrSZjEK7uF8ozphdsAOlb
	 z1cIAwzDiINnl+FsRMtChCGl3Dx0SoMFLkP8iW9fY0xfIMze+kWItJi6f1O5OuJyuL
	 9AbdLAcWjn9dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE06C624A4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178842483369.15637.11080197105350701431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c2a97acfa4b4e977d5bbf0022274175ed35ee5050867d900d4631cbc422afa9
Date: Thu, 03 Sep 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788424833
