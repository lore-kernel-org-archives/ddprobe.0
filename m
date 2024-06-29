Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C565660
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 16:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719677063; cv=none; b=TEX+CNX7cWxv/NcLM41DyHqvhh9nE+tHeF49fGoR70Zy7bM/N1+2PZF8ExicQCqzjCUhTiRAgrZXQMvW8eVMX1pYcxVE6FkMcQrmFq7DvQzAr59LnOxmpuKKm/SMU9y7GmTSjmD4Q7+NAjm+vt2DvIG7lckvrM7v5cbZDskD/AE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719677063; c=relaxed/simple;
	bh=+zNgXPIrxd5UpTdXPiOrDkFfxgN8zYhLnUk7iPjSjKM=;
	h=To:Subject:From:Message-Id:Date; b=URbpDk2Z+WOEZ0erUypLBnYlfeWPATypuAjdS06BtpnMD/ZRcbc0K4HDolvstkBHijlubT/imsrnGBBqTUjKbiHr/tXU1rayV3rZGiDLbEFr+TZAUw0uDUsZTBTt7bHzPnPWRC3MOjoXF/XQK/3U18vhg6reN9CmwPsNHyMGLVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FdW4LjeG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FdW4LjeG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EB4C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 16:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719677062;
	bh=+zNgXPIrxd5UpTdXPiOrDkFfxgN8zYhLnUk7iPjSjKM=;
	h=To:Subject:From:Date:From;
	b=FdW4LjeGEG3ydkjawPaIiS8BSlGUcghGLzds9/wqsKsR2NDCMix4x6GuRhAVlV+l3
	 YNDwZUCqMEz2IMTw85z4LZfXA7vE6zqB11kZD+4vlbjr4TYoK7sBoWD9M6kNETAYZD
	 MrT6Oj4U/SL1NWzh+MCPPjAgNr2Fsku82Rz+Ldom9H7WXlkLdwlDkqR6/o+pBnEu6C
	 iQJDhOVLIy/mjhyZyzMVjtN3VEugjbdUWnwKvdMBBa+cgCQ1ltphY8tsDwQ8DVyU4n
	 OkT0SGzqZJRfEzYeu1B9cqct8jaNxwd7Ue19EsPH7MlZi+gQLu9H8wZ9KcYJh7Q8kb
	 mY73nxhRpYp3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3CEBC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 16:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171967706277.10884.13011918318592355708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22add04c32e0da62239780cc1af22475e91e85c42bc06c3002e8a440e03b699d
Date: Sat, 29 Jun 2024 16:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719677062
