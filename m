Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241DC33F595
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772742894; cv=none; b=MIkCr1ypJuaRoa0fbGBeXMO+TSpz9VarrdB/+7nILcsid33FncQuPT+8OxNXqrjRQSLDJmKMMaudgNIjAfzTeoQC5qlZMBmXeDvq0+VrZ8dSjEYc2YEtaqgN0GZSG+5yTM75PO5Fpwd0blOQ3ROcNNosx+nKVQkEOspTwLmksRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772742894; c=relaxed/simple;
	bh=VJNjmDFsmc9b0xYkyCWNuQ4kMpBHsT0Mp5tP3+q63xs=;
	h=To:Subject:From:Message-Id:Date; b=RL1Tra6GsM94fQBJutVBkLsx6kp56nDG98qhIi4QUCiC8N9/vbkmKR/E1oPdixNsqCKjb/AIvFUbVxf9lKA0gfAGzs5p+ojocvpYWf/4gq5+1P2iKFLn3KIRtA2G5B3oA4hYUUcDicBgg6aasRv8IeD6F76HvSfMJcDsHS5P9Hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bjipxnEK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjipxnEK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA83FC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772742893;
	bh=VJNjmDFsmc9b0xYkyCWNuQ4kMpBHsT0Mp5tP3+q63xs=;
	h=To:Subject:From:Date:From;
	b=bjipxnEKdEyBoct5Gq/J5r76ml3n+6132o21p91164zLGA+KZVl75C1u+NnSaMHPY
	 4I1YPdTLFssfBoeDwkH3RU6iVVXbgtbius0DkAz8utq6hwPlrCS+wPOxsuxPG1KO1s
	 oPl4Lp5dCQnIHuNR5rLLiw5H3eXNfW6BbRXVb2S/gVcR99Ibt+eo/BPJu1oom1qOy/
	 7/LX1yGfrhibIbSuIAAHiOP7bO1ZY8oaK4r6KaYsJtJPhNI4p8/iY/gBnpYC72FARW
	 BTevzPGFIMiC8K7xeAoC4Z2MiGXbREVo9pLs9BoBr4arPzk3WWFWQijIl5oXvT5HIq
	 mSdvv/W/pHoig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F18F47CD0
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177274289358.31861.8491494338691927905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7fe635886718ba6a1ca0e7a79e754de619568daa9638849fdfba49aadf057fc
Date: Thu, 05 Mar 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772742893
