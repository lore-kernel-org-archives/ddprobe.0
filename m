Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B03FE3B3C13
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787860234; cv=none; b=AczffyvibesRXUyKwqRkOlO+wi7WxN15FW4eKouA9UfaOr6TSbrKtkozslyKWhBR5RzuYVRK4F3cZrWfYsfeGo+o2bt/HaEMTJpeMR3F4//KUt6+N3Csl/O9VByuGX+zklH9ThbwdJTaPboguJxLNuTvbwN9ZeUBSTbU/VGaB4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787860234; c=relaxed/simple;
	bh=LWhcxg+BGafYBHRDBBvp4LR7EM1clNbTjIRM2NioVT8=;
	h=To:Subject:From:Message-Id:Date; b=B/XoX43GqRsmSnP6hqUOSCyTccKQBykkq2rH/WQ4iZz287v8xC29lSce23OXMlqkvp9oav8PMkB8WbGJXE7XgdBSXYBSjFEZEtF1Fs0s3MDBDRxV/FjbLsR62jmhOfY4tq6/JQrNi3Yx1QvKedhnZaoem/wzr8s/r0sVhuDm08c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bc/pj6yy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bc/pj6yy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1490C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787860233;
	bh=LWhcxg+BGafYBHRDBBvp4LR7EM1clNbTjIRM2NioVT8=;
	h=To:Subject:From:Date:From;
	b=Bc/pj6yyB08DHcsWk5p8pEV+HOO0fTce8QTonuOBpNOgDFetLeZOiXtxt79/rFw5Z
	 e4itPdP+Jtxz9PMjhy7zY0nfSl5nZ0MVY/bS+R8FuoLlswBC5nJRirza2YkQeGmEZD
	 /hs+OX2sX3wValrrpPJBThVS1NuoQaxQMruVoxg6yG4/N2gAzIS7cOAEgrQ9usmiYR
	 9q+pB/o/E3zpO9lTJGRZdJGt2Zlf4xexdZaJcdzKoAE++C99CXB0EvSs9odv51cOHk
	 10mUgyJ66msz5w45hrTIkHV6c6ayoPfGNrB4LCn1L423694Ii+FMZsyPOhYZwkuXbA
	 vowrqS+ukSKEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD125C61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178786023368.8580.11152091481772306329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1f3ca37d2d246b0268686bcdafc40f23acf167a0315091bf6f9a5499d6c5759
Date: Thu, 27 Aug 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787860233
