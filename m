Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF272AD00
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 15:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764687774; cv=none; b=is3rfKxde6aIUYNXkbss+to59Rxes3Yuva7JSbukNipcBn4v8h5+pjhQlc15lLGtKkPSLqMOqYvvWtY9uroEpGnPUrmumvxuSp/RO871fbbbvY4gjasQbIVVvnNvCPjiBUEeZ1cl6ecxceeH8MlaarlJfjt6lziQ6tr7BJfFrc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764687774; c=relaxed/simple;
	bh=4xzTXw+DMBN0PV5pJPxR6/8P9aSxl4wUzkRqy6kEmrk=;
	h=To:Subject:From:Message-Id:Date; b=O1tGA4BDCF/Z4huECFLz55Dby5aL9O/vY/gEfxc6RuLyWqqEsRIHiMaiL5GuGxfFuizYxR9Himam5VyrSf6WoFbhNY9Rs1AZWGT9wikcQI5vD8lGj76w85cvs76SsKWqEQkkWRQrzwGnevQ5TYuoqUn/dbDtlIWquhDe7HvVskI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZRCGuCJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZRCGuCJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA91FC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 15:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764687773;
	bh=4xzTXw+DMBN0PV5pJPxR6/8P9aSxl4wUzkRqy6kEmrk=;
	h=To:Subject:From:Date:From;
	b=cZRCGuCJfv8LNbFmoiLlIx1zfbt6ZMG3HAzeJPzqZhdc1CD1+hsaeFIwZzA2gjHB4
	 4FBkpBnunSqnxvO4eetimHqqej8zui5l1jBEAd/0Wao4KxiIyPc9ZwO/n+ibjRCdZb
	 3RbYUG9UXu4pi3dDOD6Alz03TdFsPTGfGGBB9GzHkzttiVl0ThvWFYzqs2vY6Jw0hA
	 +fyMITI04EPnG1cEbuI+Bz04ILTR8FommXF/+3GaFMAfvYIdhq0HX4w2S1/3z4FdgG
	 aG0EgtB4MCNA6uS8RIlhd+BzaSHbPHchlgPrhvCMSri+PPjPp2RIcpKlxsDLOZafJH
	 odPBTCkgn21iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96707D116F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 15:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176468777359.8681.11445650704925430887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b54e645a6bf64760ae1883a71c499c7875f0847d0d5edd8cf84edfa7fe1207a8
Date: Tue, 02 Dec 2025 15:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764687773
