Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311AB29DB69
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745919596; cv=none; b=VFfdts6ZLzUz1V43OYenOOQTaC8f22xt2HfCuzK+Vfv2Pg7dZ57c13qpZiJv7ts2putK0YB46KnRNbFJQCAIhBorUyOvwQ16QVWtRyToaEreKuGzlmFkYlShP0Ba/cJ1e5ao5Lo0A75tySU1jexCc8RescwTQhjLARGXYmRvebs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745919596; c=relaxed/simple;
	bh=kgok6kgjRGiWqLelrVIQldJS9ZjJJu0oWdoMbKT8WqE=;
	h=To:Subject:From:Message-Id:Date; b=Y9X/NHa6i9l8aC7OWsdr06dp5QmTKmU2Rq99nLnYzCsbOYaNE3SnXmksi9+atB4jIPzn8MUcTUuxz0D9Os+BfijJgtrAeUBMh4YZfGu3L36N3Tln02SpfJg1hfTpOwWNoZoKZBG57W8PLmyLyWwhwY9cY2Uc2MYwDxGh2tb1Mgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRBV/W2C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRBV/W2C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20DDC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745919593;
	bh=kgok6kgjRGiWqLelrVIQldJS9ZjJJu0oWdoMbKT8WqE=;
	h=To:Subject:From:Date:From;
	b=lRBV/W2CbnkwLly3aaZSglIZ+ih6uG/OgfEvNXWp6MyOhwjTGhRyXijkCeurxZaac
	 eXGutGotEYNNJ9hnIwYw8oQ7iVQcylVl0GnRNNa7NctC0tU8ja01Hl+trTyZWfCxxE
	 V8qin1E6wd5d8LejPmwZFhmkldS/InKgzetN7R8/T407ATumH8szZyR2EZz7hc8+cu
	 xfyBRM7z0A7hYhbD3rgKk0S+/e+bPA7VdPzTyACtKGVPsc5VlBwEcFkW5lSKTJuw4n
	 NcAkCb2BnjVWB46+CSTYpy9En++HOt5tTiqhFTNUjxMTBizx9Q6inXS/MV9sDp/ZYu
	 g9VwzPmc3ffAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB71C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174591959357.10820.12034689100305567743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d970c8ccbcb3d7489e25922e806a54299945c4210db2c3c679960681402c256f
Date: Tue, 29 Apr 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745919593
