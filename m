Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53BA236D517
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785098434; cv=none; b=C0Bur7DXnRJxZmDtAQhZdeZqxl509o9ykYxeZKb4VeHNAQswyMrfNGsZUePG533H4hXkNI6z1Ab88xaPpgyIALCQ45MrllCgidkqZiPcS9j44CXZojK2+gesTB5PrdOt/Myby+7y4d+/NvtKaX+ffbVwFkLLvU139lqzyMukSZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785098434; c=relaxed/simple;
	bh=CSV8YTe1qtf0lnRkrY0XvCakKnQkJXV5vXxcSK+tThM=;
	h=To:Subject:From:Message-Id:Date; b=AFZrRwQ7VhkJHXdM/rDkPHMFUGm/wVMGe1da4ePstsvDWnhq4ePJQj0oJuZFwy/E5lnib8zyUASHPHp4wzdDu1jFagPVyMvGzLY+7FAkAN7wL0gMiXYXACDjEMmd9c9dCjJzXwnIv3fTJ0tOxdZsi2ec3vnKwF073kyLpo2nQss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TQxyjB6D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQxyjB6D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFFDFC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785098433;
	bh=CSV8YTe1qtf0lnRkrY0XvCakKnQkJXV5vXxcSK+tThM=;
	h=To:Subject:From:Date:From;
	b=TQxyjB6DbrY/o0RWFwJhvnGx24LVab8f3HTITMvvvHwuvb49cQx+xiIghSWhaHADM
	 UrzthrInZEVNJhf0Uk3O4LuSdHdeCL70Bzf6EI49hKyo8+chceVgTcgMkUMu/0VFQe
	 h1YNJa0AxqeCpOUsxNjM3Yznjev8cGN8wE+88GvAxE5P37GpmkQKKzh73loR33spRy
	 IkFO+xfAidy7Ev4JUTVoTgRMCxO3kE3x73UJHOsSeQQqfulN9fLyECF4movlHGX25f
	 N7v2d5buva1jC6wGs7LIIvVq9FTezn41g3IygYNzKp5wTLp7XbC0evAMpb52ZwWI7S
	 JefqNx932tuzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE05BC531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178509843368.2703.5216654525971892628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae37ca9471f1b2226cb05d0c58e6bc735ec61d3effdad5b3cadabe1d68adae53
Date: Sun, 26 Jul 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785098433
