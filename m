Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212D312E5B
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754758794; cv=none; b=Ue68chxJYMN+r9AJZwA9+dxOsK0QXk/LWIAo/QSxSig0yPKbhumhNtuknsjk8FZ4Ykll0VTM3t3AWb5AHhpt1MxX3QJm9wBIRhja7SqyrVeRnfIfgf9L9YGMqQYyz/pWo+l2MGJmVs4ZKaseN77BbPQ7gbINjO5B3vaCLmn5thI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754758794; c=relaxed/simple;
	bh=CxRgNpqSbnqaPJ7UxdBFK7bRxsKxpfNi6WVcWbbbtNA=;
	h=To:Subject:From:Message-Id:Date; b=CuOQ29beeeHMxJPUkS6jVEvvrBcRMY3Zox92GdHmunMcGAWKlrE2FwZ01CbJErnixoH1yp18jMqxEAwNlHbBfofEAoiXMZye+Aq5sx7KeotrQCfCph42ZMCMtelQ8MHj9tZ8mgiYn7Z9puepnLg4CDQA7jG7ovwmZ8t6TmL9vj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKzqyBUG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKzqyBUG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26CAC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754758793;
	bh=CxRgNpqSbnqaPJ7UxdBFK7bRxsKxpfNi6WVcWbbbtNA=;
	h=To:Subject:From:Date:From;
	b=CKzqyBUGNq9qDCqiP3we8U2HCDLd7SKCKS+qLKbiNaCbMJghm31dzx7tq5Llwsmdo
	 VtwaUJx7xkTRRGc83788IffixT4NfA5O6pZU2R9Uot2WwWwify8HthZOhDfYSRxNwm
	 WpKcUcqNKiHzBHWnU5azNYeYKqzMkmi1xIPs8MHsUPiCaqRGbRFL0O/kFwVgu7YnUf
	 5aF3DqbuzfU5+EcIx+PuGWnD+kVNND6GcFdlr1IWMJxxVQsUkrrGxK2TJ95re+XIaV
	 Wxnu57ighJ7V8tVhSiFujBwWhb2AVHuXZLefEJXDbRJa6VURT6H/fwKLw8CV44q9Nu
	 7wtNe1h0oELRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BDBC87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175475879357.3827.6993662931854718064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef3d3d2f03b061eb91275ebed8458cb9d4f2b6246e71008d03b92ae0682e2625
Date: Sat, 09 Aug 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754758793
