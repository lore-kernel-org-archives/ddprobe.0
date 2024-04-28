Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5D073537
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 17:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714325543; cv=none; b=GikCBrpuUDn3gNDNj0OTXp6hD8G41m+RHSGJiObt5CrdEbRcVtQ98CN1OqnfTdZrR1RFZbRnlcvZbI+dIizeiB9fdUffCKSPJZH7T0ZvJIZuPfHK4n4rBofFHvBvlnule0r/hzoyS5AxiMqdbE2gyZ489BpeqLYIKk9wJqviLgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714325543; c=relaxed/simple;
	bh=QO4ln7WPXwte0o0ula0Y1ArEfp3/Vf63tHne4aa2aV4=;
	h=To:Subject:From:Message-Id:Date; b=ptXKJFIOU2X/MaZDJHIH1ST3ANqANfrPLnkk4wfC+u/GMeVbCPcqhzoZ7xbMetu+I1qGbjWTRYFrS6jaaPNf/tcPQOKgF5f1/7gcl8gR6RoDT+0rHmzYfUP5dxpcREkKSTlIVlIs4noiV5ojmH+GQrefCPJjegccPD8MuXFjI48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GqFtAZ4T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GqFtAZ4T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D02CBC116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 17:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714325542;
	bh=QO4ln7WPXwte0o0ula0Y1ArEfp3/Vf63tHne4aa2aV4=;
	h=To:Subject:From:Date:From;
	b=GqFtAZ4TIkhogMBuOxmbGdHVHbQOx7P/O8cAVKaiTd58/MLExQ3XDBYDzoDqYOJoa
	 2wbd6KgIEfl/3MFowtPUpxo9/4tU6nCZcBxP4ByBflZAxzHwzbBn97ocb8j6OdsWy1
	 crzhPbqm7PI+5fk4xIF7s28ortzfwJbLDqXAw7hZs9C1NZzSmx2xsNj6DDEl0RQlMB
	 nxaylPBFuEAGTyIg0tggV6KfUKZadWlIBULmVTaEMT3vKvGw3klgXu6pCfFdzlZxtD
	 bT+DMGNAS1LNUfETJdQ7VjRXfaI2+zX/dsEPVurk12dXh3lPpogFWZibtyg+Q1HNIw
	 488KYrjPyD9Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC0F7C10F1A
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 17:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171432554276.3036.18192086047037202643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0ae832f51730b7f8501be705aefba2052f641babd2d051625cbbe73dd1fc953
Date: Sun, 28 Apr 2024 17:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714325542
