Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA38158A24
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 09:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713950423; cv=none; b=Pp1ysFQu79zxG64a0feI9ioNl2mRMpWKg2Bouv2ogPFR9owhUMLMjpNmldsjR26b3fXmuhE/eQOMMdAYowYjRxRaBjBGiYUXRWlL5gLoVUPHQHO/gXWFFd41yy7nco9HCq+rt5bZ98KeVmMUCkBKlvgwXo/uW0l5WEbvUC3ndbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713950423; c=relaxed/simple;
	bh=I9aWh6XW3kX0aVogNJypFbIbrUn7RnM/KeLu4B7s6ik=;
	h=To:Subject:From:Message-Id:Date; b=owNYwFFaM5jal80qDRp5U36M+YlLZFPMnEB4GnVY9WGAaNajk+vBDrFMYinJgSF/0t4RZXewGq70IPCfneXmA+cS9PFlxd8GB0qwrZ/WBZyNWACl+WjvQNNAJjGBquX/4IS4CL1b9YqOdOAtwS5C/2bfdZoGzcrXcL6vmzL8f78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJx6PBVm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJx6PBVm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6861C113CE
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 09:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713950422;
	bh=I9aWh6XW3kX0aVogNJypFbIbrUn7RnM/KeLu4B7s6ik=;
	h=To:Subject:From:Date:From;
	b=dJx6PBVmtrN8epTjX0fPHisI7/gw+vM80MqJLkW1F1syPR3CQuTdtyVaNp4VzdAK3
	 KhXmwfWtMek4ZC3fZNDIx1ouK4jtQrA54qz0IuygRmMRes1KZahqDmqEu41YrcZY1g
	 WGOzLSfa0YJQ/ofOnLviYQOBWMYgdbYRVcnzkHJsvDUx+kezxOO4ZL0Qy5mS6Bul37
	 ov5nxWr8GDZr3tPnvsNvtL7z6+KvHPU3qUVJulBtpwcbHXhd9yjgcEtWKNyODPLyRP
	 IzepUwjtttDD2tw9/dr6jm/7SZIgxR+HSQhc3gdDAscQrPG7GKIkcVJLjNaTpEJASb
	 Y4FAiuPFOEUIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0079C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 09:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171395042277.20167.10506502900588184133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d3c1d7ecdf61f963a99c4d2e15f3196c7b004efe9ceb510738d08f271281cd3
Date: Wed, 24 Apr 2024 09:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713950422
