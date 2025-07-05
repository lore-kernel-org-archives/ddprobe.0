Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3325313E898
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751738394; cv=none; b=S8FbHG0JO9a7/tEF9R1Swn3eY4jcpKiSVWW7XtG97l3sbFtWpuiG4oAiQar7E8gmAm+/85Be0jv/2xBd7KZ3KT6PmvoVETyf9ramcrj4darGfocwZ5NrJBthkxKSpGXxcb82SJh/2stm20iWSqAyPmaamfsewf/N+92/vIoJ1/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751738394; c=relaxed/simple;
	bh=A+fOpj3kv4XGNteLoygsxe4KkZrrMeGXhqF7osbeuyw=;
	h=To:Subject:From:Message-Id:Date; b=OWF9Mo9Avh59ZqmA72um/0leXhdILEcCE1YIl5yM2xcDLsSoiJ1rNkr638uiX13ROWqdxhdkMnanvyTuiPqOICs7o4gfJLnM0AvGpFLH71WAcGUDy7bmTrz8Bo9iWZm21rAZzjLEdiIWJFeUl71KTC338imCJOI7By0mixLmRB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sTimViNE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sTimViNE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11DAC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751738393;
	bh=A+fOpj3kv4XGNteLoygsxe4KkZrrMeGXhqF7osbeuyw=;
	h=To:Subject:From:Date:From;
	b=sTimViNEQumGPpDEimOoDgLsa94cQd4ynGfgsfMSl75XNcqK7o9Cv4uhXGZZrYg5l
	 LsfK6WPqpVCYlSI1C1eqTnHRevo7Z4zvqVR4qm8Up5ABQ4QZNs4+xbVHA4lSG3yeRf
	 30tHDL6tebQfFM7Vg44hL/2tBetv9W0W8AT9+L28AfDa+fjjRrKMXboKAwekm/k+6c
	 qTyfOeTlAzDCm/zT1kC+7QEXpzE7FzQTv4wCKFbTJrrKnpJ8dTCZkmm78m4KU11oR8
	 lHkcpmmRCVFM2/8BFI+7OgvsVTVFOpkEQpZ5n2PLH+8WnCpgsGRdkx9hV2+adGdYUW
	 4xsgyIOtDStJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F46DC8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175173839357.18828.5821489641878280402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eace97a0f25dd5a800770fbb5693045bd219833b1eed193c37828105bf45866
Date: Sat, 05 Jul 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751738393
