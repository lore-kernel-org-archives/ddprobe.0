Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374EC1D2F7E
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724222754; cv=none; b=UywGv0lKEdJd6y79EaQ1sRJiZRT9zibkE5SIL1dn6kA8RSJsaOLYA10WLnbuswSGw3VcEviddjca7WJ+T9Th/6sbcDI0aU635nG7jvot3rX3gAct56+LDoEi/WZx8ZaqgCJLV6nEXnCBaOoJ65P9isBPtTB/I4BSIDGHZ1VjihI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724222754; c=relaxed/simple;
	bh=kh7ViXSMbAruGcGyfHYHbUFesZQ/udSYzofGv1uG2yg=;
	h=To:Subject:From:Message-Id:Date; b=F4f9HPbLxDb0WBDrFXD0MJQ+U2zPO/5o59yXtVVWDFdt9GbqWl/tzjO3c6z4Zt7aMzVjgIzen0SQb4q2BN8BnXt4u0o0pOF5RShThW7IWShVpDzsQabqNbYhF6J3wCnVUUrCbLIPWKcTjeOtgpHD1/Z8VGqk/2gfe7Oq3SMJMxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uzMIDAJ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uzMIDAJ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B660FC32786
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724222753;
	bh=kh7ViXSMbAruGcGyfHYHbUFesZQ/udSYzofGv1uG2yg=;
	h=To:Subject:From:Date:From;
	b=uzMIDAJ5D78cV1LGxdwO4kdI6YuGN3kHq7Vh41lUuu0ApxMG8jW6xo6Bz1nICbIMZ
	 b62og91bPzrhgxRtSYn4r4YA3aMOFGffEh3ECdf4Fd+I36aVPMyj69bsvKCWu56hJd
	 pUcAmy6JBG0rPYBRC/nSq/SpN2DdzUFgeC2F3CMMvxTBgMH1eja34whFPsDBakrPwz
	 0603b/soZNxuRiBDQC6G+G0bZMabyYAMup7mgfoyEuAAkS5NTtOCLVuDPQYxIcdYJs
	 prILsIooa5qWc90fJpNABMnEMnKZjB5EBeHaxWY7dnXBR6bWRUQyua4cbTHT2dLFTk
	 C7ZWQ+uwkn7Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96922C52D7C
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172422275360.19340.9036789783808334660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8693d224ee33556bf0874101d1c1d3042b75542edbcc8e515c661230a732125
Date: Wed, 21 Aug 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724222753
