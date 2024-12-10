Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EB4433CA
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733807754; cv=none; b=E/fwriISuU85aX3Pc+hHdWFGSqQrEfZVlhlHVwNU54dVim/LnXB5AJUZ10iJBnNQH2dUUQTb95XXBIaOAdisuoEFpGIGOWrXZmPS7N//bEMX3EGcHbEpmdWxpTJaYmOnBvRUPGIb2nR13SvmNbs9fIy1l4ViIro/vN5mdsexIMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733807754; c=relaxed/simple;
	bh=vhRzAe6RlSRYNAXJNaMneqqaPBuk9tyg9Oa2hFg+Syo=;
	h=To:Subject:From:Message-Id:Date; b=QZEJ3v9qg5vE05hYfxryWcWM+3R7QskKvTB833Fgy2YWpIQAwaT356QJWw0Jq4Bd/XQdxIi03/YYTf80M9W8TYirakLBeljr/J5//V6Rqztd5cP0kjHYiFSIRXUKJXrWdS7AomAZ9584z3qUG60fCuZPlnavyOmTHHvoG2oSdF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VRm5yH3S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VRm5yH3S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B87C4CED6
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733807753;
	bh=vhRzAe6RlSRYNAXJNaMneqqaPBuk9tyg9Oa2hFg+Syo=;
	h=To:Subject:From:Date:From;
	b=VRm5yH3StVwoQhFnNWxX3KhMgYH8UppW5Tg/sguZWPn3H+Ljmig/JwD/Dbw5fBGDq
	 8aEhtA9o1FP6bTPWv5pRjdq6HO/1WtYn9kdkmrBNtrceImf+SK2xgJyDJUj5J1SRfy
	 LfHQkAH7p+6oZBLbLWl5h+7KwOCwKL5cH8hkDo6vvAAk9K/P34zlIbsYgA1xidc6QW
	 Va0Zucs/1qKoENkB6kPFRMwN6TBSHcVK+PSKkECngOOK+m/uyDcEDzQfaxMW7jELPd
	 x4NrhLToIZrY5iDFftc5kLnqgEtjYDr+yJBkgG8H5RBg+TNWZpYN5GGnBTt9/Vx+uS
	 c0XMtMYzCM9BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B3FDE7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173380775362.32254.16668480463069482844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91660159503e35c8b4e6f97a46e179306f5760d46321081fa7b8ee263f5b8f1d
Date: Tue, 10 Dec 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733807753
