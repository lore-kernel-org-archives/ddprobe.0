Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE94939A07F
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 08:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775550934; cv=none; b=fZxFewrVmW/gaN+v4wFCU9XxfXqGBI+2COUtv7dHKQki3WC7C5KEcHtZqfO0Bh3IHRK3blvxHlRd4ouzwn6kgSjb8AVij65CWPSeoui431r2Xo5a0FBj1oAx2fLJbp/2mgNxyiDaUMdIxpKYZAxmYB0jbDbxPMrR2aRJfaQxJ24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775550934; c=relaxed/simple;
	bh=9ZC0G+ZMxmnp3Nl5A5jbK8a5UaiT4e4oP2dmVEx9JpQ=;
	h=To:Subject:From:Message-Id:Date; b=iI7Hx5O7SStmeN3ZmVsGBt4aXlEthai0QzBqxQO329SIrUpjMrLNWqc5efFxxk2tT+WtOVQyuh97+F7gI8BV9IvlLesNpgz/wJxoNodSiUwF6JzIMGwhSQFcKZbNKJYbtZNrVPEn1LJSS0PrZSy/aUVp1HqhbPmxvQaQa86hamc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AcmpmHL4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AcmpmHL4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC8D2C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 08:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775550933;
	bh=9ZC0G+ZMxmnp3Nl5A5jbK8a5UaiT4e4oP2dmVEx9JpQ=;
	h=To:Subject:From:Date:From;
	b=AcmpmHL4KMcclsOa8wZQWP0spvdktpsIXGJsTPqBinpHFu2kCK62exvJutpXbPjhS
	 jMI6y398E7f8dD34luZP2QEhzHJzPoJ0EkTyO1Kp/I1deytBlxFNSgn1bSoAK46Cj9
	 oIJmWT44WLg/lmH5Y+pzIdG/97h2yABJ+L+A/hHrnD4QR9HLzjuX0vPwQHhIMmudfz
	 mvA13xadsxSXUt8PD2vw6endRvcHu3B/q3N/7+5s476SQ3YgL8dH3rmDzkg4OQFh38
	 cpJrJ31BLJA9ykKNby4qfebQ2MzkhSx20e/gcJsqcOAdbEPpcdOnpNvt/OocRb4znW
	 1zi7nfrmFCDTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB733EDB7CA
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 08:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177555093369.16609.18267931616254983881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96f35300194f511ade6bbb206b6330c8fffb97c06c5e93fa12a33863a9c2c02f
Date: Tue, 07 Apr 2026 08:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775550933
