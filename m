Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C75D531
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 23:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763336514; cv=none; b=TAFwVM9YsAF2N8NhI1lyzf6QGCYbRV9RaaaenhrapZ2KQMzgXTJ1/x2d8ADKdzBtZpcgwDYEA+L38MCWgkXEEhFZkWcSWvMUMN/RqCU9bbJkTfa2d41UE1O+adzL3PZJV0GjdehZMkiFkG6QJF4As3snC/ini1PBJAOSPAFNef8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763336514; c=relaxed/simple;
	bh=Z8j++QKGKGt1D2SvPaopCq10RMeGOUtdJv31ZLY8hSE=;
	h=To:Subject:From:Message-Id:Date; b=VPku0F8FuEjXtjJj6d1hWC7REF227xG/91GZ+6YMThj7rE4eYFaRtJvesQ6sxsJvSRB+pQiu/2KYbstYCVTyzUHm+o8iScgQ3ccju0Ti+cNp+SOGsZ6/c9EwwHP51Y15awJ8urG/KsDDR3gtsLOLw3G9KnIEe4fijwlRQgPfudc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DjmCPwz1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DjmCPwz1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E8AC113D0
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 23:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763336513;
	bh=Z8j++QKGKGt1D2SvPaopCq10RMeGOUtdJv31ZLY8hSE=;
	h=To:Subject:From:Date:From;
	b=DjmCPwz177Sl8k3jcNRvwpFAcAMpi3TzZceXFMPnjk6DDVldF5eP3CM5OuQi56tPu
	 iXvMt6Uvsb4D/p167Aug5AT9za/8KfDUnmGMt2002qEmwKd50Yy1rm8gNjjpEjBOy7
	 q2lUHAfx6mGuTowUEriNYJJhRHHUsAZSNLZ4tJFZ2UYkY4MBXBfr1xQ1DBxfXmWS6U
	 RX2Yh5vDKsU7dYe7mn+RJF2fFlN3tn5Qmc8pWstU7dPiZgLD7XIsK+HXP6LOWPfOSD
	 vUuHAuZPZaIdavia/psVJTwC9gQQtarK77RPDV3eeK5vtE8egvzx0UOgraqTcpgU9g
	 tKQxws2urH6vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CC5CCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 23:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176333651359.32693.3681612270755877681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 884223d0188d259bdb7ecf3b1aa5c7ef7d185cf7d86c0e92e3afb4729464a3fa
Date: Sun, 16 Nov 2025 23:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763336513
