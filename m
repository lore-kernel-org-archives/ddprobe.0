Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301D3173
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742602196; cv=none; b=ZapcCtMOyhMI80n7efECxO1KkHz0f7ooCbzXCc3ZcC34p5K8oarjMr1eAz71+qOkFuD+QRu3ooVcF1Ykf+BPa/+W7II2eZGg24CfG8x4oUSA3DEla9i4BPVgh7M6Ybj0bNRQOWCyq6l/DSq8bQ/OlFqycArMxk/QFO+OiN8NheY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742602196; c=relaxed/simple;
	bh=cki3dswrTmXZaMkiRLOgU9zk+Kq8eqwG41KUABshGow=;
	h=To:Subject:From:Message-Id:Date; b=PQ30gK7OtzD/Ml+M8bE+bgt2d95U5SKxQymD2xWYDAtYucTKD4UrBXoQ/RUl4pScn0i6L1+G7b6yQxh1HIQ2MO9HXiWEZBaN3vh8rmc5TX5itv8KMU0TGMX25Krhyx1ZBTqeSDBR40Rk+6FJHAtFjMEgQx+J3Gh1hhrOuCbh7Vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z04RM6QK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z04RM6QK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A82C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742602193;
	bh=cki3dswrTmXZaMkiRLOgU9zk+Kq8eqwG41KUABshGow=;
	h=To:Subject:From:Date:From;
	b=Z04RM6QKaGRaMvNy+AfChY99fivqfRQYP0uK24C2M2WoFJa/DBhFV9FJH30IBIxaV
	 tg9nxaapVkh7UKhp7viq6mrXPhyzoOPVtEs5/xKDha0BaE9VRBO8/ukyaS8HwE6Nbt
	 So+iRiUURALTvLstVZ37jCI5EM+EdecaTsovR4WV+3HrrhXWu1/OwF8kJ3SklMbGVv
	 pKFUs+XRWKHL7pzXWBugCvaaLoD652bYUOl0FRA3AradKTkb+FNmUtXCyU2bTt78bp
	 NEM9dI5FyFwEMbZNBYFOXuzHkUN5S9D/m6pmiePowX70oaGOmQDLegF9cI7FnyskUm
	 qGm3hMD6E/HFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94566C36001
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174260219359.9172.10049193885181478403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7ed0ef324a2defb29f5565f30d6ead54e113c827bace2d1346058e7325fdce7
Date: Sat, 22 Mar 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742602193
