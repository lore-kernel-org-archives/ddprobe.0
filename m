Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D685C189F20
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753931993; cv=none; b=jimqv8z2PCeqWPcLIsKakDRHHP1GqKyKd0DlpAlgayuftWCZazkowMpVaCjbKPoAPXXILU4ghTdpFtamzf4W04J5BMhNWZlHkTmAsfPbNFaWF8Tqet4doSJjIxSe86bVQANJz+azvclNzu9FPYTv3qFVIX+KIIQmo01db1ZFm8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753931993; c=relaxed/simple;
	bh=fj/jk3neUeUpP0aKFID3bttqsBMwemTvjO/4KyB/hjY=;
	h=To:Subject:From:Message-Id:Date; b=QvDyEYmnhyxNTvTS+jHFXY5cxMzoo6RO+xVx5YJdlUCYPQDWbTT36xa3ugflampmqv/sNHfFpcq0EqYnAcA/1lW5IrH0mm8cxPZw2PZO8SmY0a5LnKgxI8uveFcW7rEZqbt1TPQbr0EEBrTwMD/qx50te4giwyCLp6r1JzCiGhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=knbZSu8E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="knbZSu8E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E8FC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753931993;
	bh=fj/jk3neUeUpP0aKFID3bttqsBMwemTvjO/4KyB/hjY=;
	h=To:Subject:From:Date:From;
	b=knbZSu8ElHZhiwYhIPoNGiY43XAk4tklyvM80lY4JkNe9TrHtS+3c3LZALZUBpjw8
	 7LPuphexiezToQDsldPzYa0VhkmU8k2TBJ1WkEUG1niGB5i8DLjnmJAJ4+xcWsiCg6
	 TnSGJ2EXUDrjTnekDSHRaa2WV5l9gObk777/05tlaxnfRpMmh1xy9+gkqoaIoVsCRg
	 RDScsL9FihEg8H+wlXh24tNYJuK7twARd766eDCkxY7XKpuwKHTvaYLhN3OSl2zwS1
	 wkBv9HBDCThq2+A2vEmJXiMMjLk+1l9lWpjRGshHpNhN1LVFGgFcmHcqnKdozq/pET
	 xdoujrVC2x4UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976C4C87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175393199361.32517.9309393146547612433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de77beea9f061a0ba699d4c02734c9d5df182a9ea38682cad89cd5d891732347
Date: Thu, 31 Jul 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753931993
