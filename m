Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E86A2868B4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 10:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777976854; cv=none; b=BFpeXFq0FoTcPqaZ1s1OwEV7Uo4SWHlGyYpH8h5fnjz8YB7rdutcRigSbi2I4cEg/pNH/pVPcMUtNkZ3nYC1TGGUO913RA09eo01iboMcR+wND2XvlhJU8MzXR1wjEXZ603pcYkWTUiP6R4qye2vV7xKRdCPaqk+8NHozpe+GA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777976854; c=relaxed/simple;
	bh=WSnAXAwlTkf+YTWj9Y1hjUQ1oIHrgcskUvg+lSBGaKU=;
	h=To:Subject:From:Message-Id:Date; b=f00n2fzGlUmeTgN64WyJ4SYREaOGGNdQ9ms0o8PsCr3Om+AEMQAbB0TwiBCz7IjfK80BSS830XrhceQ0tvneKYoihsymIaNvENTDHfY2qstcGtyaeadVQasy3h7kuAza8PQxMD1K7mV24fs56kIr6p2OgqNF+f2lVpEHGqIuIU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sA8a54Fb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sA8a54Fb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6997C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 10:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777976853;
	bh=WSnAXAwlTkf+YTWj9Y1hjUQ1oIHrgcskUvg+lSBGaKU=;
	h=To:Subject:From:Date:From;
	b=sA8a54FbfMf1/zhJtV5Y2aMqcCIZ6yvZ++9B+1FmfeHh0EAaY80KFugWp9eYNK34N
	 NN8utqcxJb+W7LsmjRitfujRCnZ13QyYggLOMNXH1LUcrlNSczhIL9A3AtgEbaemC3
	 NAWsq02VVYpcnka2oDHDs12w4b5HOXVdf0W01er4lNYglFR0tvRTGpwDsVx2kdP8d6
	 AErhshCN+pD93xN5R++utCmIC7g1K7my9mDHZ3Y0XlTot+5YEHUrIe9COicFvaWzPK
	 H3bzdu1gQK+w1g9LbejHIzDJsLfkXZgsAYLR15EcubhZqYx9hpS7uEwSiyjDrjF+zQ
	 V48W6wSW7W0+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B723FCD3436
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 10:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177797685373.31632.11377055512111352819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c817495fdc230afe48f637a1fdfeb06275918367116abe5bea47f8236ca718ed
Date: Tue, 05 May 2026 10:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777976853
