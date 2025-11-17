Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3205230C63A
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 11:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763377914; cv=none; b=jmuEr5dRhpNcpBCzQYEsi/cESv5zQvSBd2AZLVXoj0qKbHRuBNj90A5GqnQTQtMvLNHD2ZEvMmZ59UTVS7YqdLFbDBOsMPuTEPUzQzbsH3Tk73DBfCZIXc/S4q0ugntcn7GnK9LszJSD0yeX7IhfbEL5yyySiKTISsXR/bxJ8lI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763377914; c=relaxed/simple;
	bh=G4Gld4Ir+bgjZ9gNfxAwytd1LlbWrJfJw1Rpn1OuiAg=;
	h=To:Subject:From:Message-Id:Date; b=bfRvJ4wcJqiIfnEvNx9V+va8xwKHOMzrun9eTFQz4+nzpfssC3d2lNHwjxERcNmWrfVReBvNIi/5RKrFl5/J1ToDBdmgGGEc3CBB0LWTW5/0SAYPDgl/XMdNSy+erBAUmlvFW0nkirRevTPR2z9OZ2VceABSYYUc8W8ivJ3vWtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILVtyMkK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILVtyMkK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC335C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 11:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763377913;
	bh=G4Gld4Ir+bgjZ9gNfxAwytd1LlbWrJfJw1Rpn1OuiAg=;
	h=To:Subject:From:Date:From;
	b=ILVtyMkKRYeeWgpjKnSWpQjNaApEzlaisu0MmGiw1foeFHtltQmLwf5788QESlj/G
	 1pwg7aYYF1v8iJsNQ35mMFgvaJpqD9bJZAbRuX8R4mL/ozsiF6Y6PabyGRgmXyBGrD
	 Dd90QrDnFPvA9gdIGL030fOILYHgBMZdaO4zUuSfdRNRNPdfm4TQ0jDAmqp73IuSDk
	 8e/4hJ0/u0WyZg/hVWtonYrMFw8grbvXLhYdfmd8i/XbGQBAMPpabAdd6ax+kTgIaj
	 VknWqne3Vkq5QzfxTAfvrJsykXE5vXMQYgwrrKuRxS/WZtM9W/hARon82vab3YvALf
	 OQm/IFyEIfJaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BA5CE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 11:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176337791361.30833.11328076750472139198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b07d64bf9b862700be70c55173a4fff7a0825b769b554f572fc9053e3b36db3
Date: Mon, 17 Nov 2025 11:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763377913
