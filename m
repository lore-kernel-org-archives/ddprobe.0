Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375DF72634
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 05:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765083774; cv=none; b=A/BP+Ta/xopvSj+/TfwhFUmA9zphV8JE4ci5jO9t8ixAXirVOdh4/pThOL6D8AIqfp8SohkXubUxx1KpWYSv3WN7F6Famj1EPdM6h6EQHF6Zdgy6doXJWghNl+swgX9Zn6rl1u2cHogln6CHLSGHgPKA6RLtc3z9lcSxDsLcC0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765083774; c=relaxed/simple;
	bh=2Wob299rsnUrFrBh4wAqjdmr4ncVCcfS68M9AqrL2bY=;
	h=To:Subject:From:Message-Id:Date; b=Z+sCEtCwQquRbg439DBTyi3d0agT3FC/Pcqu+ps/FiUxFul1T9LlDeYRpQHOsVsJ8Pzjfio9tAWCjbQUnSP9j81WVzHJnXjDFDfu0Q90gaL158hL7VrcyA50ODWzdB/k4u117lCiHRKv1TKYFcQ7riQzg1tf/urrXfoY3+LyA9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZUncxGu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZUncxGu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2D0C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 05:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765083773;
	bh=2Wob299rsnUrFrBh4wAqjdmr4ncVCcfS68M9AqrL2bY=;
	h=To:Subject:From:Date:From;
	b=MZUncxGuPxADaDiDgwVZMAEq/GWFRPc27TQUmWZAz2SOw3f9IsgwWKSczykrbfvcX
	 l+KS1gqR0nu5je2/sMPziNTHx/+b0k5zbpgek2daj+cqWPaqj7Sh6gi7Kdt/rYne+o
	 piZYglN5GFAW0jsk5+orlqSgKXm3ARJ8LK70uiPbZTnOSr2Wj+jGNUcInszSFx2zOy
	 6QV6QAgDBEg7eTL0UTV+hDkQBcZGUlQreLPolBKc+Z3Wara2j+8IJ335ZTGfREyLcM
	 b/T6m8bAKhGzBv5MHKEGaFTiFd33RMoblfTqHQ01QxcE5daoet50JINzhoeq/Vcdpc
	 deviH8LTu1tMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94125D2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 05:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176508377358.11625.1296868957602171738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c851ce9867d70b4d3f40c80c5ed4cdbf95748602c9302d59eeeb9d9a3f0caca8
Date: Sun, 07 Dec 2025 05:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765083773
