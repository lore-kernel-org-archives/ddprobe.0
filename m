Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21BE05208C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790793634; cv=none; b=QDeQvtfAayrlrGWFSPVZc2XnHVYT6v9saa7BcnRUm1SnXaapRuRVOqgr1cP45XhdnEo09joUkgA/pi46M1mI8hb2sjXQ567oIgWqowltiMC72u0RS09gFxLxHeBH0pz5lDbrVi5aHiHbxKqQsBxNUu9vMUwPXQo8O23in6lx+88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790793634; c=relaxed/simple;
	bh=2OZ/hRZM6soT9jdL+eti4Ly0mNTCW2eahNQYy0iuSaM=;
	h=To:Subject:From:Message-Id:Date; b=ENMIZ3Kazc+5VGJWFpRNH9f/lNEBjTK4yEcOiK3WovniWSzBZ3Y4WM7D5tDxH1I8v49tbY77L17bAJ/kSWlGRJ18Z1MsMbG2hz30Eq6pOl6ce9hXbnBPk5XJeBWnJ13tegsw2dndRrE8mbLG9VT3H1x03eJBtBFIE5k6njM/KFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Galu23WZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Galu23WZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC12FC4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790793633;
	bh=2OZ/hRZM6soT9jdL+eti4Ly0mNTCW2eahNQYy0iuSaM=;
	h=To:Subject:From:Date:From;
	b=Galu23WZfgFcQEZjZHehkrG6nHrM7Igld6hiokY9ffPdBAY6xIapU8YdFCZ9xhwsa
	 6zAZgqIsaRtys9UfHRTHFXSMQ0+47h0SV87XVRyWCkLdFfctD535O4sMOtZLkX+ImP
	 EiaU2Lfb/kKtPVWhrQAnrK7YOtQVshIRECPe/6c7x6icVNOL5Wpao3vFeql8au00j3
	 cqfziNOmiIMUeZo2MiOkueO7fpaxbpEBbp+F5b9WhSMmdK8IlU637yVIOh1JXsmDlp
	 1jTif0G/QGmeXJQriumXmQHYjYG2Dtxw3rL37hZ/rB9lLyPqt53+P6FeFhNuYBrDOl
	 kbxxp6JbmFSMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA99BCA5FCC
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179079363368.4257.11266640860727523206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18f62507d1277781d7665893deb7390d4d96151da3cf5d1b3618a490ec88dfd3
Date: Wed, 30 Sep 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790793633
