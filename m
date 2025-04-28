Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD4F1519AD
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745804394; cv=none; b=biWGDNYLTodkNU4+FM8fRRbs/49pWRnozkykFOuy1RfFXMfCHFwnnVKbVAYWJv+K4u+DI2To6tYUZYFtxWGoTO8HyhiHDlBLKseF0Wl9GmkIS/rDt6Wh4yFYfIHO/sHb5H4QeDgA32dpKCTzzRfWQQZRkZN4lL68nxEa5XMN4Do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745804394; c=relaxed/simple;
	bh=uB3oaoONJFgj8JPBsTzowghMfX3RvdTZbXHBxEhnCSc=;
	h=To:Subject:From:Message-Id:Date; b=CdO78gkLkrS5UZo/dAAFg3YAWwJHsqAczDjYVlyru4/k9MDX0oSMCn7SHzIuSScQvI6448+j8UzFph0ZBnzcBVXFiJHLUtoXBBmR4887euIIVCLVag64ZWNeqd93Ez7kQazttBGOYf8P49IvqAY8IrgkdVO7bSAGiKag101qJUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pd6Uw9mM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pd6Uw9mM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A286FC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745804393;
	bh=uB3oaoONJFgj8JPBsTzowghMfX3RvdTZbXHBxEhnCSc=;
	h=To:Subject:From:Date:From;
	b=pd6Uw9mMaOifxeYqhCUy0IvzBALjSLFhZ19Hwj2WdD4cTeous2ZEMxdsDhXyFP4xK
	 ThjPzR1ZgoaPFM0GdAp5F3/ViklAyiE6rTH47kADAvtWyb0LcPtoHeUcouWb4SwAfK
	 LdlrUVjZ8f04Bopw+D+fCgeIxx3NedizFJOaBBYQPUaCmkaLEKU5QfbMCImfhgQotx
	 Hw05epTGhL5Jh29jWVCvsu9R1O3wxHTUR4fpfLwhGt0PDThGZfAKswZXFVApHNuKLD
	 RXnSs51tCuwNlu0en6YmyfGfqLXPFzIRjrL09kVqdaNDhUfGa+qAWqm8MvawYJYHNN
	 i7BbI77P8hJkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FC5C369D1
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174580439359.31365.15968856080058154609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1951ec0745926f91c6acdbb71b6540e95cdecd8429c05837036bb1c81b76badd
Date: Mon, 28 Apr 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745804393
