Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417F81F09A8
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742555394; cv=none; b=uQ5Krm+Pdhu/t92lae4aSKE7gJG1YWMoQ9aSgSCsP0NTbJwsVNaq+5NeFHY6DvRhu871YeCjEfTLG8ZnNDy3hvW+nOkeXOFxNIjMqrrEl91/ol6GWWpvmX4f8nlTunSScsJnaVpnzDQwWuwdoHnMp1VhV3wEYMn29pIc2KfX6+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742555394; c=relaxed/simple;
	bh=ZFGVgPlsIHLeH+4jlm1cX8H9veNosZr7QmZgNXPhhz0=;
	h=To:Subject:From:Message-Id:Date; b=tOanMBQ6jf2T4pV6SubU9c1l2gw0Q4kpw3FVOeIcz5nVqjn19RQS0zMiJy141XKDL4CtTagYDd3iXAhOHvsgH7AgTv9+YYpnW2zKiib+pU4fTZYkJ/sEHS18iQxkYOHOEllvIh2vaFI+OwVk2HoiQI6OCpSYoVzFs8uTX1VTktQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8dqFtp/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8dqFtp/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD4FC4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742555393;
	bh=ZFGVgPlsIHLeH+4jlm1cX8H9veNosZr7QmZgNXPhhz0=;
	h=To:Subject:From:Date:From;
	b=P8dqFtp/cHCU8H7uutHyUr4lVn05agLVLakigbElw7Z7juHXfsp99BAwhNJ3w34Fb
	 dQlh1T+AEI848RXDen+jFMcW/xiYdY54RO8QhdsvIPd2gAdv926U8TW7CX+BGC2zHf
	 7wUb7xqlWGqhTDVsXqRlDuEHg6ykY2Smi9EyFYy8fEy5lt9zzzZBvk7DqxuLn6+sjz
	 DhMax7gwgmxM0Ewb45agVbLN30GLGB4Cg5MeHgaT1UvbfhGNk4yKszPeLnmsPZChKP
	 shKxX6Kq3iACnDumn53jVvlNS5vACUqlA/0MUuWHAHJOB37kFaT8K0lx2fhNDRQ8Um
	 v9y/ht3n9QrcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AACBC35FFF
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174255539362.24141.5139823686634865671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98999747e69d79bacbb98d9d8ad5d8b21e22e56035c317f93b4c8482d617ab0b
Date: Fri, 21 Mar 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742555393
