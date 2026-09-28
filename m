Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1253DA5A7
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790622034; cv=none; b=sC9cn1tFgPEIWja1qfknAlmnM3alC5DQTgLvoMsHM/JGbrBHINs2NoEdkxFLy6Dc2A23rFWB2xrC23huvM/901fU1BgQIEl0wWA6LhF3MJffYvhIOSdNCPLb3aDDvxp6KmKEFlmmUj0WGUpn/cKl2CuDgah0Uwi4mCr6A7SueX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790622034; c=relaxed/simple;
	bh=qZxK2oeAqr8xrb3afENDVfqdNT6UA38kSzq8kWukqVQ=;
	h=To:Subject:From:Message-Id:Date; b=fbaIbidpMbYuNX/zL+uxjvUXqRzJAlyBZoBNuE3XsdCtWMRgj2IzJl1Y379XIIjiDvJxfHuLYB8A+WEGSmCi7i6BO1Rmg4oJ4I0EES7rtf5ZsQ/U/Bx1/97sIWsnQS8z55GLodw8Ou+/v3iKXiJLaZR7HPe8gOVks46rIcLxuzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zb3MhUdX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zb3MhUdX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08A2C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790622033;
	bh=qZxK2oeAqr8xrb3afENDVfqdNT6UA38kSzq8kWukqVQ=;
	h=To:Subject:From:Date:From;
	b=Zb3MhUdXt9AazKlG8vzbJkLQT1/PRwStAVcaUEt9WIAeck+y21IJYzgRhy78mOP7S
	 33JFSnW6U5IyGoadqXXdD8fCabJD3m+uCXkPwnjyiGkN17H+Bcg28JTuaKjC58dqzZ
	 YX0S9QNBIve3NivpG0XMBPrMFLGZ+gv0fUiH55nu+Qs9l55YFr5o/wt+Qdz4iEcLGh
	 JAHYh7rHkKg+LN023lENcWFC2/lR86rtc/7uIL5WZAh+/6vIaYP3eSDqT8sgX1/aCl
	 EtjaB0y4piFLgLEuRL9wZqDT8NOMbWbXSVbLFDLOsepErkaZmW00tWRBimDdWXDMXx
	 bRpb93yURS1DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB151CA5FA2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179062203369.11610.17812114457359823450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e882553d7b68811b237d4fb9956ed9e291c041f52e0e62dd09c05d08535961d4
Date: Mon, 28 Sep 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790622033
