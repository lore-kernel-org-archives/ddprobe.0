Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1576A261B78
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768283034; cv=none; b=ADSGbyTMFXtfCEeHTi5KR1GA/rTg0JO59ZzWUbOEQ5jWT52wSAhB/PW6U8pkJVHXKDekwOMFbfoIGDpUi4queKiBD1iS8Ny1cnpOUrLABZC9Xhn6jbMgQTST74KUrrPQzW2iMzUGZ1sghblRAwpE55xgzNRd1aW+dHY1gicdo5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768283034; c=relaxed/simple;
	bh=clTXBSR5kV2ADXE+biaqzpBZcwZ4b2PfHOFqFCcKBf8=;
	h=To:Subject:From:Message-Id:Date; b=u9zqH2mnQH6cLZ92AlIF/hCytAsxOPsUFZ4VfZS/SGV2iwFPe7rRAcdhBhta7JrVoURPB1c7S0qRVrkLW0zkqtCKAZsjaVDlV18GrcB5QHEOht4lAbea7OlcAFghNYVZiHRxhe5PGIfpuLeG3Z4NSlcYJQMYCWrNY7fid6GKB+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oUM92ame; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oUM92ame"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42A0C19421
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768283033;
	bh=clTXBSR5kV2ADXE+biaqzpBZcwZ4b2PfHOFqFCcKBf8=;
	h=To:Subject:From:Date:From;
	b=oUM92amezJwU7q0wJo2GQTdWso7xvmOhCqdrlY2i02Nmb9XBVNCarynfpCQ6I8Vt3
	 vDMVuGV24NAoNPVFwMp7MsndmbxFqeIbhOQWk+nD/dluuu9e9CcDDUu5hWxW04S1kt
	 JBRX4QEah7bqxDeLZz7I/lqRTGLmUEjOTWtHZfG+vicMsh6yJxKjeRzubHzkkPEaT/
	 6wxgF6WZr7T/d19s7Dr08nMxPINloJkLXQQ0DpS+RgXa09obIium+vwD4ftG/xNkRL
	 kaU8U+axMDMbjTE4MrHHdtr4QTN8rsQfFsyl9F5s9OrOTkR0tIKzDco9t0r2xEQLO5
	 t1wZmXJ8orTmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9343FD29DCC
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176828303359.15498.4814758733258864268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5206567069cc2c0aadc357d528a75d4d17fe59da81438cb4fc663f6444e6b1e
Date: Tue, 13 Jan 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768283033
