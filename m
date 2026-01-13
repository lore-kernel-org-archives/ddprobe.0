Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC9A4330339
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768320834; cv=none; b=SRDEHKOchKToYv7uDnNJICqJG04YPTyzPy6B6zpwXyyO6YrYtF28H9clUrYRpRfAqr0VUdvZXXg2e7mcstcZKO+blppugu7phyibNFHyMOB9b3G4nFRiFulzBKA3d/G19502K84jvw0CxDnoI0RfK1Qa0m6hYj2kb9OHgolSc78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768320834; c=relaxed/simple;
	bh=e6Ja5AP6lqK5SLDqQfYbUoUje4IO0zWe+G2Wo2l+bOI=;
	h=To:Subject:From:Message-Id:Date; b=hhXzN2WE0F5mB8VHgo/F4Vd6+vMHsgI5GZxcBDH7+uDawle0SaZYiMRMrwKxBYpUJnG1Mohw5XWHXzz0V/GxdB9c68LsEJkTvTYLDZt6q2VpnDAn5iP0qfKbZ//VgfmWDykN0xDG8JKyIQjE9i9kCMAh7fYLFoRnCZW6HNFANag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sToF/4mY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sToF/4mY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A73C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768320833;
	bh=e6Ja5AP6lqK5SLDqQfYbUoUje4IO0zWe+G2Wo2l+bOI=;
	h=To:Subject:From:Date:From;
	b=sToF/4mYp8qJ+BlDqfMrExiH8X9SJkHX1Lx/5nLouDL8D+XUcMqHleRjm5JJIMXfC
	 yWw25e9luc+vnKBVY5HsL5QixXLhUFmtPh6jFufEMfLBwXMByEv1CXkI3cr24tjMCm
	 VheTW1zMlg2ctXr/uHDrW0M9QWsATdMq8ZP+Ci/jk5CKDwTjuDyWJoiEc2ZChDN1j9
	 LXzm9l95BYrgEAvfwRnEpAbbZmbZ+wMXGYV0jv4wTqJMOfw/pcRC2BEOP+44m69qD6
	 ARTvv0zShtu1X+DE91U74Hhac4cvcbAp7WwstYHQ8jBGKbIsyutWUNDtuEqH18JqBX
	 hYjIfe846zqmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93441D2F326
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176832083359.2332.17062475183355459652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e11fd52170ee57873a1c677321b5cdfcf9c8c58213f492e5a32b11ef38f78501
Date: Tue, 13 Jan 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768320833
