Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6571A1CFAF
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 04:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718773163; cv=none; b=n8Teu7YkbJ8+9bQR+rAlnytKOu7HCGQhqLlUsgOfjwgJuR6qoYMis79fqGrvu/RWI0yn4yi2xE/29R0QzTpqLtMetWWKI9yWkch6voPw3j/Oqde1zwNbtpsYufG3hr8ysFR/l4V8/Vu4QtIPo9UgO+qWo583Btnq7YTklzuEMAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718773163; c=relaxed/simple;
	bh=E0pYZkQ4TbjKriPWwEW2dTFGQStOAixD+uLPRRUQ2D4=;
	h=To:Subject:From:Message-Id:Date; b=Ts198kKpSnS62/8FguoHZneQVEELlgg4DiQReUsh7ybI2VwMGuQ0qQE7Q42OPWl06YC4h0syXx70M+KYjGGTo5v89aZ0crzuKslDVV3h9hAtdizgiPDdJsGUoYpz34Ma9Bd9LysxLRC3rLMBMOF0jgWmtRZAXciWVK/m91XcgQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fw2o/OY9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fw2o/OY9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE64FC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 04:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718773162;
	bh=E0pYZkQ4TbjKriPWwEW2dTFGQStOAixD+uLPRRUQ2D4=;
	h=To:Subject:From:Date:From;
	b=Fw2o/OY9S0cZYDuATdAVyeEvI4EBC8GIEemmpwQYaPE/UQid9ZdOKU5JGmugoZclr
	 mhiubwfcztnAFcRi9IVdiJ028Vhk2AlXqO48ion77Su+CkGMDBMzs30C4b9EYdpQr3
	 TF28R7jogAHuZM/4puN/+Tma71Mx8d838nAZnJbyGuJk0ycG1B+R5vVuleFq83ch+x
	 xPc6M1I6MGWfhYvpYaxwGNCh9F6gX5im2CMP1HTRAa1MTusE25ZlmZT8uy4qDGLSSj
	 AEN0dLPT4vsSIeKuXdkvuKA1DMduDwitKWLf83fLUzGjCHDRh44iks+6VdlTZMK067
	 BY0Wtcbk63K6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2366C27C79
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 04:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171877316278.32189.14562734978516941720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbe12facd4d7cf3d721804a35314f12fc1c48c9b459d637ced8dd3f6a41fe1fd
Date: Wed, 19 Jun 2024 04:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718773162
