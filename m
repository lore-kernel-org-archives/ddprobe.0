Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1383F1CAA6C
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772858694; cv=none; b=Sv86QQqYb8uTmAv9zY0c6FNumwBDVjnG9FJMbbNikXfTCp5ul7yh6H+TDFYMicjdQ+vCHLzi5QKK1ibbON38T9XJgY9XGi/9gXwK5dRlOZjUTxgNl2/m7X/WLWkS+Jg7xKV46JOKLQjUX20dFUc9at7u6i87gLucewDP/igDeTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772858694; c=relaxed/simple;
	bh=isJghynau56gRfy21lH8KxGThG+0jyZZ3+8cloK67Lo=;
	h=To:Subject:From:Message-Id:Date; b=AQvqL6Tlk/+cowACtpLbJoLqChsuosu6az9cTbklWuQQL42Ey5NZOa0mL/mubmRn+s6Nbo7ciVQSbFc5VMVoKTABS5IdpVDsGuJ1kiTR5+Vvyvq+uNkxKQ6zW1epoEyD8D5wOkndZdRUaW9G2CTyj0Plg33ukOOV3yzzM5zTOVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nj9R0dlQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nj9R0dlQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4798C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772858693;
	bh=isJghynau56gRfy21lH8KxGThG+0jyZZ3+8cloK67Lo=;
	h=To:Subject:From:Date:From;
	b=Nj9R0dlQS7Ip+JtGnob6gJ0CYgG7V27o6uyAL3xYQYZgzBcCG7It7M+OYEX2khRYs
	 lSla3DukOnF2AIlGfqS0fE/u+hAF6SBgYQVPX6/C89KKShMja1zqXlmONM9LYicd84
	 8+3yXhhkuXyfvsUaCbkT96HEoNwUuKPllWa2oCj6rAGP1TNZBlkeYLL7EcXmtSTP6P
	 yx0BGGCblSuJVxxpawiIecSPfA/6a3sWbejydobVDLkqdlQGhItB8LU8LugL3JKz1F
	 OroA9CQg136IRXHpi0fQn5wRajztiVob9gG9l9MrKZicgOzE/VEp4xZ8O+X7MUu+HJ
	 8oPTTRr+zxIng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900E9FC9ECB
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177285869358.23156.8523787442750957368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 288b64955bcbdba88bc795a1f354cbf86373b0174a26c15ed4d2aee7d1e8a426
Date: Sat, 07 Mar 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772858693
