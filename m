Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDAA71E32B3
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735751153; cv=none; b=A25OYAV86Iv69y5WQBMNVfvXrU4FeIWUvMZeXjTMKQOASnqb4Fy+XEPs75Obv+UcLZlmOjaTB7JsqnTzls8i1GbQTRobCpp9e+cE8iUc0MMIe28NAZfBmGart+aEVwgGLlgmUhUc6NBd9pNvvtLPjQn5pWYiF+vT3q82Pvl2PVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735751153; c=relaxed/simple;
	bh=O29BsDsg9ul3jW8aKavopBp2hj9bpP/Bo8K7/vZAeEc=;
	h=To:Subject:From:Message-Id:Date; b=UeG8PE4JpuqdXO5igZTvWJ/dQHoxPr9DHdzaA4gUSDl9vRMO8xLvKyELlMAm+n6b4MRojYaCpyIEQm10/kVAwtJxFZ2PUyQNEG754FIyOnIhZyoZMV/ZhJ4qiCohVXmlw/bs9ObkU0OLdaGrNauRIouGcuaLGMsQfjXiLZd5Qtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q/rESu9N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q/rESu9N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AC4C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735751153;
	bh=O29BsDsg9ul3jW8aKavopBp2hj9bpP/Bo8K7/vZAeEc=;
	h=To:Subject:From:Date:From;
	b=q/rESu9N/TREHF5QInJjLOCRJ66SmkBtt2rkc3fCeZtcoIw/xQBBaUKI8BapBRz5r
	 OaGNDtSQEMQRn0k8Jge31Py1y5R5eCnCFgajEFk8hN/DOvm4R3G70ai816pBRH7ZIr
	 9iC9T5BDpVsas7tFl6YDmhdnFkl6KWcRDhGajzwAVL3xUzJt3WfxGkaLqbC+f8Opjc
	 mjNzH2pYCo9711DH9/vFV8xa8DohAxW10k02cJUY66pi3P/i4XaoFnTkAz+FG0Nc1N
	 sBHA46POohK5cYgNiaMsxjHmYWxxZykedkJNan4FRgmhxwHIdsiLkvz1zTq6LF8xfR
	 osMqmZA6ytyFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994ACE7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173575115359.26239.11925476923812612266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9ffd323d130e345d924570e3b372e15660d466366ecabe92b20c203a9a01ebb
Date: Wed, 01 Jan 2025 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735751153
