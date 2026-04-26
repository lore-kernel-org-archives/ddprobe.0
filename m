Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3324F54774
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 06:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777186654; cv=none; b=t01TSLVD0Bs6jnFIKRBt7PkB0mkU/9FNKciTNx8C0GwERiqj17uj184Uu+l4MAb99lDyIZ3JnAM3mXi3QDeiVVMGNlPqqM4BCwCiHgZIPvotGHj370srAv7kDRgu29lQoIzRRhBgM/Uc71RnIliy65jm1Q2lQOqdVt+AL5DFImY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777186654; c=relaxed/simple;
	bh=ZXQy0Wa/qg1eHK7R1FrrMUVDJWlM4WMiW/kiUSj4PJs=;
	h=To:Subject:From:Message-Id:Date; b=u4BVS27fa8ZFyap235EgErf14NL5a2JWTKHWGC4ykVZlZShNiN068df90RR4pj+uulKe6hMA7WE+WHvIiMSpk1a2txiL8AkyVnRWd8cgvUSlHfNLkVD+elEdztbnM5lHpuVpNJhB+6fc0a8uSVg8zbICIAAaueZIASXw5R7iV7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mGSS29+h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGSS29+h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E4DC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 06:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777186653;
	bh=ZXQy0Wa/qg1eHK7R1FrrMUVDJWlM4WMiW/kiUSj4PJs=;
	h=To:Subject:From:Date:From;
	b=mGSS29+hIMeunxOmmKDGZN4dx48CRjQa+VtDYdDA6OJExFnPdHG9CkvnAM00zm/b3
	 ErD3G0BeS1HF994oTDXQdmnLF546sa/KmkF3W/vrmyJfEMnU/A8iZT/MKG+RG9ua3d
	 IvKnG+7wF/fT78R2tT98ewpxo2apmXFY7eYpsoD9BVlLU7vQhiwNwhSYm/yLUqgZnW
	 m4lqRJ/J364TcmfT/XYeTMsC17rPCG5tlbaNZQvn0fjYmoyASmjfiWIM8SfIXlqwPq
	 1lqVvW+6I1qa864AixfdqRm5lqdtk8Xx2I3uT6DF1Q3ZGJQl4eSsoo7Fwu/FZPH5AR
	 prlfZ8wfuEQrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAA2FF8850
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 06:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177718665368.14160.2643083056801875200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b6538ee5259c3adf7f9b969b73b56f83b35655f8017eb697183193c882616bc
Date: Sun, 26 Apr 2026 06:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777186653
