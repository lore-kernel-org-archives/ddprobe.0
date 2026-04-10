Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A99037FF70
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 12:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775822854; cv=none; b=QNm3Rg6+0M/9GPC6a6KBHY5w5sL7mD5rcT/BRhzNCw0sjX9IYutQV44ZhQxFyevxQ1CImKgfkzOvZLW9lplKTM9nMlVKq/tI9HyN3GOY0BEih+LlkPNuLv6++DZrCb+oYR4LddR/FDU+Qe6iFfcHKwdK2f7X6qqe/Tln9Dr4H6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775822854; c=relaxed/simple;
	bh=cQsXKOoao+iYgkBiUL9jpb1QRnrxNCm3d5ppRl4ACNw=;
	h=To:Subject:From:Message-Id:Date; b=nlNJUaM8LyyrNCTmK4pGhtzszVxaN4FP2bFU33q/w2LK6w8DONkbH42sSU5FQbUHGgOjpTPemhdYU6FPL0BJnzngEKA7VeDpSKw8DgR+wdYgfPUMiI1uO9qBMI9RR0+/wUnMoArF8YQwS9d3mVMtjCZu+DuhtlKzmxQf5+xYf2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z4YW4V2X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z4YW4V2X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B94D6C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 12:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775822853;
	bh=cQsXKOoao+iYgkBiUL9jpb1QRnrxNCm3d5ppRl4ACNw=;
	h=To:Subject:From:Date:From;
	b=Z4YW4V2XaUYPogMqr9mZaElE/bsNq4E6w/2vtdQCvMF2HuTVShwlYPvvMNXUUBtGM
	 oGhguQTHelVL20MgxvsQK5KzJ6d/frUvyTUnso0VjUx/G1nbAM+VlfpRvSV/bcorA+
	 mNlPYIwEs2vsUDWztxZ/eFF+lbeVRuKMY971ysGdVbspsvVvwSLYMvIlAu8+8u2Ad2
	 3QPbx+E2Yhkwf4fIFJAf6DpwzISyB7Dl75rIerGAtmdO5Tpr2O1xuXQydF0CGsBNfI
	 rrGxfVkYiWLGTBCqJCTZkFFm1yCRHwSB5AQiTU9zEUms9Oc6TVNiLf9uF+VB+4WKOQ
	 9SYO2SriIs9JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2E2F44846
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 12:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177582285368.16912.8460267091730866104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a336a6dc4f21dc52711023b659a44dc557c21eb936ad0d1638399560060d1801
Date: Fri, 10 Apr 2026 12:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775822853
