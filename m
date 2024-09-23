Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E68184
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727059554; cv=none; b=gxSZpFRiFrrsG2NsPcvOu46qmJ6PAH4Wd/upBfT8PZZhA/6Vd4NgqOKIB6zYH/nlZELebWV15lI5HmWPdvSt+fu5Gg4pT7O+kqpAZgyL8C/uXDesGDiT3DYnO/EnUpgjuhuUbvqIGYjyC50UeC70zogDo9L/S/SZZwH5ffcAM4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727059554; c=relaxed/simple;
	bh=RUwJrLoGno9YaG2LjY6goIHFIq+vckdEE86Eo+PsN8E=;
	h=To:Subject:From:Message-Id:Date; b=XqUnLxXHeVHq7p4JmHNWRGkHNYP/EIuCSk4Wn15N5Bw45zteQHtkyQ+/GKQ5PA7fByQw29P2nYfies/vbvi5b3gEIgipJqMN6nxsx66R3mWY0Eko/VsHuTFhoWKZCbab8h/ymWRDtm1Y1nplZVJrk+b7FYcmuUhV/vEuvT1XfKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WeqgtvTV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WeqgtvTV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1460C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727059553;
	bh=RUwJrLoGno9YaG2LjY6goIHFIq+vckdEE86Eo+PsN8E=;
	h=To:Subject:From:Date:From;
	b=WeqgtvTVZFLSn0qgywdmpdLJRCbxoiLDwdijvi3nWb8QGzDPPO3tmm1YJgAokPtC/
	 kG1MjEtMP+I0Oi4ZwA1OjtwDrr5JS0d4mHO0iIXlGo2PRatm+JpN4PRUVGVaUj8WS0
	 anP1eJ+Nzv5G5JFST/6OCmWigDhwQ0V6P4tfHvr9Gnn/BgKeX8tyvnKodjG0En3QRn
	 PmYvG33zVB9u6MIFGo7f7vcXXQ/2hYUfArk0FBb/6LEHiD15oojb2BYOeCtqt5HC7I
	 lmtP+jnaWzTz0ibAOy7Tb9rdQuXNB8zOHXhedVPmR0kYe0JnQxnsgBpA1IXH70nOtO
	 3mnUC1MLAC/Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3F1CF9C6C
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172705955357.16659.10069209830243508496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b8db75b688cf7d16280132d1f7640d6d3ff7903767a5dd48a01adaa3ab3ac49
Date: Mon, 23 Sep 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727059553
