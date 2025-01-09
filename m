Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155B61FDE3B
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736403354; cv=none; b=Fjisyz0zIG5feFTxRNPd+Iu7s7riO2u7kjay4u5kfkictJwR2rVSDlC2/Rlr5wjQLf1Lu1CcBDthUbXcun2euKj7JFOUu9BB3rDawAOCYZEJWDCxOFfheNSctmZrjcSIpVu2ar1939fa4MftYSDD0F96GIR8ASn7SY96I9vvo0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736403354; c=relaxed/simple;
	bh=Dwoplu3luof565y7mCwrjXY0i7pGfexdqsJpGDBk1f4=;
	h=To:Subject:From:Message-Id:Date; b=O4DaEohEWufyZKD25V/fK03mSd+VFKc7jKDbH6U1OBIF9lAbEw6WUgVcMQPJ8XNEY9StlMqKDelyY4mgi7hZ/zBS0lN5acurJLyZSi0mglxJs4yZNGN0U9cQou1kM9exXvgfWeHVP3N0JRORkH4TCensXvII755+LPPGJQvZ7SA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bEmgPpQk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bEmgPpQk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA610C4CEDF
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736403353;
	bh=Dwoplu3luof565y7mCwrjXY0i7pGfexdqsJpGDBk1f4=;
	h=To:Subject:From:Date:From;
	b=bEmgPpQkGG6BFn/HKuqUHV7NpRPJ2akeuUTvw2SlCtG1az8+9YR1mJSpLtwfnksrv
	 01CIcvf1ii9OPaF195av0yEmTLy1O85fCwIi1y20/jQH/6C7X+ltft1X2mC1LO9LYD
	 yVndF9n1cphJVERyYCamoD+do0AbymIH/RbYj+Kl3TQGEfTmUcAw74Lm5llf82RdHY
	 Bae0504am9i0aQFs5e4l8G+AN2dCxE0lPhsYqslzTpZim4WHMo00EE92Z0CTwIm4Kp
	 hkEttQajx1OBReklFOE07HMf8sJywnG0bSOPNxICW8AJUzBTk7aSOQWUc9TBr/R49N
	 cOmHn/OmrYUjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96345E77199
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173640335360.9729.11508562022141003485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: def3a2c56728b04d0d6eeb29b70b6e51b7111d3909cd616877f97966c57b87ea
Date: Thu, 09 Jan 2025 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736403353
