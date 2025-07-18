Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1218C22331B
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752879594; cv=none; b=s+NhlZbOovxCMspz3vDFzTa3BWeXnKtLwntTarVd0JISxz6tECcngVzYmKTylPeYtcAk9pz60N6PVrS8UWngIBsDvquyN34Dns89rJ5Qrvp/XZhNXgXUKe8hZk5tmc1ohJ7qV7vbGWXv7se2vhzmgmc/zENHdFI6AJ4gTaUmX6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752879594; c=relaxed/simple;
	bh=paxL3JZ6R2mzIfZP8PjOIcZOtu0HB7KCtJFwwkp/JOc=;
	h=To:Subject:From:Message-Id:Date; b=NS7tFbHlx+b5nwzDTZjM/iMlnY58G+bs0AqfLhzFbOVwJxI2lnuTCSaGyTtkk5hajleBMPGEmiJA2QJnIZdkXAQOqlmKofk2BhvQBtYuP7i1fppDhQyIEMasdflPYoYklQhfwJVGO0FTh+SjxThDkkl0h4s6m3NjGe8A6f1Mw6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d1yTeeAp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d1yTeeAp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A095DC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752879593;
	bh=paxL3JZ6R2mzIfZP8PjOIcZOtu0HB7KCtJFwwkp/JOc=;
	h=To:Subject:From:Date:From;
	b=d1yTeeApB2W8gVI+5DQMnAAmDWUK9Q6nR6XcCfKhNyruOIeUSzsI2yvbD97/aidOq
	 7fcWP7yaRLBrC0TeBZQeDR841QXzPIri54CIeCgrZkGIG1LPHvXl6K85sNaSXJZUD8
	 5hZmGLgAODA3IapgzB9AKE1tc20K3pqBfgtJZds6P1gmFeKjxEVRhRcUHSCbq1IYDO
	 X80ch4SXCd9KtOOLIToZhcm/JsQBQZ1M8ssXZ+dDY9Rt2XoG5nYpUPSDDiFui1fKfB
	 se/CWdT3sYNUjoZ6RwicQJ7794J7AazTJyYtjWyhLR4/sfayvdzzaqWPdbq95uhwM2
	 run4n54ualzOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C64C83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175287959358.27782.5078780067646608134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f184ba43f324e0d99111901b1f3111d97e5cc39783942e47f4ad0afa38dce378
Date: Fri, 18 Jul 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752879593
