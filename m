Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 559513EE1D8
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 20:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778014654; cv=none; b=kYjV/mzg4KnuQBXAS8q+5TWpNxqqgcpgoaeqQ6WOoibbifvahJRdlYJQRtOdjKfCpqakFfSpkU+9MNylGuZGENwm5niIbri1jWwyLGg5mBgyt6DZRc64wddjHwYv4nbFlDPI573ZIQ+SdZadjqnOhFJjHn/pzJ0ew3NheaX3R/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778014654; c=relaxed/simple;
	bh=OcOrdDZjI8Y5dldTFmvo5Ch9zvsbl5v2+2/jtwbSCVI=;
	h=To:Subject:From:Message-Id:Date; b=F+jKfBc+8lYo/IDB4Jn7zidcJwtF2YwsjL7jzV3AgHcyTG556OshpNnq8cg2qAEeZejFqFSkLSEQZXrmfen4Y7R79eLSuwzjNifAcOOkGFfa3WIdwwBSZvJcWY5Yk7cyw3f+U6IfoLLoxuPf5nN/Mb8//1u6G8RBc245EBsNOrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S9PZhgME; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S9PZhgME"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9573C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 20:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778014653;
	bh=OcOrdDZjI8Y5dldTFmvo5Ch9zvsbl5v2+2/jtwbSCVI=;
	h=To:Subject:From:Date:From;
	b=S9PZhgMEx358RMyc+XnO6QcEckRVnjJaPSzjqRHZVO715v6RvFDsE8sFlajSyny9i
	 DKN6B8Dk6x37AfbOxFCQPPCYaY+MKCbQBwi1uM3tAne6zjHJTpX8CrFB3VLJ8ILKi1
	 obA9XpXKitCXuccq9UnXwNfxD/lgZUnhpfhfVHRvB5MQsB5a8D29Hr6dOm4TEFfLjV
	 139kH5fLKK2SiIYg5ib3Phse5hmDmrpMVzxglOu3g3YqOFc7q7ovQ+gUDcimQFjoNP
	 t7eumKOVFC07YXWPnkg48gHmVHZJRNW6Xvt1zoKj0Kb9257J7OTDA08bMxkeDWkk08
	 JDix/BBnCETVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA10BCD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 20:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177801465368.24231.1568249701070637064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebb3e844e86d6960ccaa741d760d03a9a436a2db36dfb9cbf077ab5db84bda49
Date: Tue, 05 May 2026 20:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778014653
