Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA113B42FD
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 09:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781776594; cv=none; b=q/9o+T1MAWj76UWL9TMW2rexlLajowczH4XEMXq75gmnPdwBhbDXsQgvsxbGpbI+1QNfXFTDTr4oc3JnhCrX2Ni5qVNXI34a+qb86FDqOtCu4snY1jKoU3jlFSgvs81LmHll1H1a7rBmpdxDetVNXyGWQB9GteVGScuBrOevjYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781776594; c=relaxed/simple;
	bh=oxDQ8HYP/8WqGQw9IwFRQV0v1GD+OquQhoPG2+PIvUQ=;
	h=To:Subject:From:Message-Id:Date; b=ZDuDlfqb1lktBpUtO837+YisGa+DxJGgon6xTOUm9whCkkrfg7MOo8Pr2czU0O4TSOdOAXXb/qVa9nuCNZAoF2iPSHa+UbwSEPRYorZBDOwy9rYc7klVki2xgqDy8U5T6SrFbCM/HdCN3RJ3KO/3FYIQpghIWi8wCuU7GGZrR/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gi371s8G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gi371s8G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2E2FC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 09:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781776593;
	bh=oxDQ8HYP/8WqGQw9IwFRQV0v1GD+OquQhoPG2+PIvUQ=;
	h=To:Subject:From:Date:From;
	b=gi371s8GTUeCV+uWLJaVRIEUpYXZDVQNHRG+ALvtKdqljKXzUdxekI1E6h1EHH7k1
	 N6TyX1MWx0EAaevRLEdmu8YiiH09gEDImSYbIaGlR6S2m2uwVK0MtONK+XhVPq1v0/
	 DZ1RN/DvpZMJcSVLf4G4W62cCEcmoZEo7LyW44iyXE4edyt6f35d1Qxo74JNuX1Mmk
	 vKCExJ1Zoi4+6lu1Lj3K5uF6uvcCt05Ouv7UCAR0cSq80jeWgkYNJpuB8NrQ9Ilzv9
	 xhjSieLylRMWVdIF+YoPiPQpsJ4B6XvlJoIOrRzACFNDny85PwgpwsBV9Oug6bEpvz
	 h3LSD7Zr148QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99EACD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 09:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178177659368.8445.14858011500169564081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e341f09f21540e53a4da99978228b6c2414dc9d082de56dab2b6a314e861923
Date: Thu, 18 Jun 2026 09:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781776593
