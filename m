Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F3C3ED105
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 08:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780992274; cv=none; b=CCRShyMoc+jcr1sRmKyaPptHIg49qFWQI++efu5FVU8BOzdTYXL3XmjKNF3nDL4IgwhQvX9mruSXnbC+jToKuZaVDIC/7dT0L7rTgsY+V81ORPDgrp2q/Dox3eth8Xa+M/TWRJAgobmM+yzzng3Sgby3X6jzuVJN3OMDyKhb4mM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780992274; c=relaxed/simple;
	bh=SeT/ySdhW0cU/pSZfHP8uL8lW3mLkAP+ZqXnayghIno=;
	h=To:Subject:From:Message-Id:Date; b=p77DaVwE+MS6Ng7UE/syrMIRYUoISkapoO7yKZd6OCOEwjqZYmW6oSzCQACev9kRPZh7/kwEIsBOIBwa+OjGfObIOCxSN9C1zvBzYngHbnwekEvU1X/PIbf1szQoZ3DXaqIOaKJLCE9NkqzsQ2Qfpl72tgkkwv+YyQmvbKlL4lU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UTvV62Wx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UTvV62Wx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEDCBC2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 08:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780992273;
	bh=SeT/ySdhW0cU/pSZfHP8uL8lW3mLkAP+ZqXnayghIno=;
	h=To:Subject:From:Date:From;
	b=UTvV62Wx3BvBZ0uFNUOYE4dbMLK/Kj0zU1x/rJ5hNihrJzyYjEkjs71DBLndt6Yq9
	 JVNSMMGV1TOZ3XNbWKJycDXnqt/jAiLC9AMjEFFvm0XMcxQVw68OAOpyhSf5p4Hff2
	 H81I06FSZjnEyKNCObiyU5AHagmRa7MlaGDvYb2BOiw3/BMVT+tEuOPnh3nEMeHLd/
	 tCiDM+7xqppcwyWJsSCI7AlNODCzN/4N73ZEKDDTQEQ9IrSgDr9W7gfBUnru/CwjpJ
	 a6mwaQlbRlWycZEubt1Y3yOxSrWWAiuxJHoGxUlxdGUphBSRcoJ8TDSlCkvMtqPzI+
	 CJLAh4V5o/O9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE5E7CD8CAC
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 08:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178099227376.21794.9028673562718766374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a357f7b8a277afa54deb98b05767d0793aba0d02af348ddcf14b5b7879db5a66
Date: Tue, 09 Jun 2026 08:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780992273
