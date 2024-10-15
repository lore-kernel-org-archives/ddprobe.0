Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DEE1F80A1
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729020354; cv=none; b=q0OA4wMTDBEmzQQOgQpWLYktBgTY4uiE07a/9pWbXt8ByxniMZo2G36IfRmO1tTdenHYLNbz/Jnz1kXoDOssMpQUCEiFCmTMuBbXsdFhfL0sQT9sFJLKTpcMVehA1aBJOu8fhIDGRBUHfqFaDQqIfcXX2QrMI+lkoibvgck9vb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729020354; c=relaxed/simple;
	bh=zeO5KOMaaQWHvnMMvEt1lKL7VayvqfaKsoTBcn2KpwQ=;
	h=To:Subject:From:Message-Id:Date; b=ufaZClxMr+oPzYBPxy002c85LI+PhnXhycT1eNLCVgxfzTKJ+TvjGiRaBLcPAI4D1DqZSzr2cSrFnvBCdt3BivCYIKBDZKo7gcJWazQFXOZS9YaNNjyO2KFIXXChOpUobw33zG/djoabuWC6rwIhWDl7e9MdL1SnTGmD7vck6nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NMKPLrd/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NMKPLrd/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82C8C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729020353;
	bh=zeO5KOMaaQWHvnMMvEt1lKL7VayvqfaKsoTBcn2KpwQ=;
	h=To:Subject:From:Date:From;
	b=NMKPLrd/3mmowPPW6fFwqNOMaKtHnF4KGMykbMXfHfVcggIdSkAEHFpgzl1X8trOb
	 G/O3/fkHrgEdN+eT+DqcyXHcK7aj4wDVgQC/7gAq/Qt7vqf0rUvs7lhdqqRSVBwnZM
	 p7egnVbhAe7mZNCMHPRhkHBMWUF7pUuuaQYOyA6I1XIFgF6F3ct/9a/siyYzOlFBV3
	 Qd0CMAjaHQSCBG8s35AjfxyBqqaCfeLSH5+Lzi3WTMIOVb1Xgfh1hnAL2QCtG8zHvq
	 1ggrF/LEkAuxGSKJcLoyjoPFW04EEqOVKuhKLl/9Byv+HDFpY8UWBIK+qJqD8nhR3G
	 0MkLz86Sq31tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CC1D1F9C2
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172902035359.3744.8489449429363433838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0415da90ccca28e4b4d2969e4c51636a74af00a5457959a1ff8fcd0192449e00
Date: Tue, 15 Oct 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729020353
