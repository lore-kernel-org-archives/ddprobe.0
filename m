Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105C542A96
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 13:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765804974; cv=none; b=Sb2IOrzREoM9/OGxLmf+vvt5FZzDK5CHhSij8WNGTtVu/iMjc0IL5mD1vaRIZqlzQ1UI58uz4Dwp0F0RJKVML8cBMRF3rG2XUA66JIB/eWZrEWN2HBUyB4ydtlx61Ilwqi7+zzWxuDBYdSyVaemjU5nsMMcNZbHXsbcA80jms5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765804974; c=relaxed/simple;
	bh=7WjP1fvDukJhzwqlMUxmkFMTIldMA+FyCyQjE7VYIiM=;
	h=To:Subject:From:Message-Id:Date; b=ggdfZGucu5fJWVSTvoeWU/VFPw2fmiJIbF4KyqXoayPjf+0iHdothPBtiX94dO6j6ZiGftwxjRtKwtxdJiFq7kDukU6J7SQrWhKHJ3s9sEu1TtFkef5XAYJf166c3+3kOrLHMSCuVmLuJ/Eg6gyEszfEkXAUioZ2S8XG6gb10EE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eqns7KXW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eqns7KXW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CDEC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 13:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765804973;
	bh=7WjP1fvDukJhzwqlMUxmkFMTIldMA+FyCyQjE7VYIiM=;
	h=To:Subject:From:Date:From;
	b=Eqns7KXWo+nMZiDRWfBqjNdUs5mxLNBwKUnwz5ThfN21fUurv3wDUYaJNvP56UX51
	 81T18rprgghcyAppvRfR7eZn/wdi/6QryYxmcrDUz+fHyG1iA7g5lTm+BeX18Z613+
	 DlVG6eGxP6ZpyFdH/D/xAulUdkIxoOBiaBYZrLum51+uZXQZsSHmT+uNj/1BpL/Bi4
	 GkDFOydscZwnLarc9RFql/5ackCwrFiKivEkFOuF02E4Cp9Z2SwqOaXO5sv/mPH+ha
	 3OskIYnCQEi33/bIGsBZR6gV79Zz6XA5WXnn0eMh0kzQwtT0k5KVb+v+Uau8GM2SkL
	 MPJ4rS23zha1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91571D5B16E
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 13:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176580497358.28703.3836605107607552143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31d6491f1dafcc382a6263eb5c7e698db80b967204239845a2f0b60309e14df0
Date: Mon, 15 Dec 2025 13:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765804973
