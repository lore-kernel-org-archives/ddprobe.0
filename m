Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F9A2E36EC
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753496394; cv=none; b=hJgi8qgUWRD+DsJchLpgbRYwyI/xFmMN5yxyq2mZ5eNSmdwWOX0U86fdQBAu9uWWWnEHcQkdrh9a3S9AWgeUuVyGURv/bZgTDN8QcwcYEHqxZwP2E6JUKqYaIsKWwtVPPvrr04vRb2f55aKQcPbVi/tOE07xEZ/xTnrAA4evLAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753496394; c=relaxed/simple;
	bh=8vspOZl+DqcQ9tj7TELsGhl5z7DxnIid0kBJM0r3UQg=;
	h=To:Subject:From:Message-Id:Date; b=YDKmLlOQ+TFPUp0o6/RaPVOCDhznSLwgUDpn0XT6gcRKx6R0OngkxZw8aohDfY/fRDEyFJB+fcd+PYF9yHH7yig5j65oxHNuOjR5/E5e/w8fG5WfCpMJ1zZ+zAS3fuIW86p4VvJiqZhDSp5VDctTOetAYAChqF4/RGlCm3qQNwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DWeAxSnK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWeAxSnK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CB4C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753496393;
	bh=8vspOZl+DqcQ9tj7TELsGhl5z7DxnIid0kBJM0r3UQg=;
	h=To:Subject:From:Date:From;
	b=DWeAxSnKJ9NgTawc2+SQtPrqxG7aldyK6LRchhepVtlWOkDJd670cpR2Cdgz2VkR0
	 xeBMl6HBs/UPOPhfo/9fm2dWcgnu+2qjLDb5tJAVXfwL0U2uZ1SsoD/brR7IXX+jOM
	 YTF/1svZv2/8SYEDlKAIdsva/wmGPCXnMNC7kwAMdstTR+Xd8VYGumbOcOAU5A7PCP
	 fedX6EqXySKfXMe7I+0wmCgYIITQ6+OEH6V4lmofq/CAEBzfmA0sgtmw0j3HJ3fRcn
	 AWFnnFp75IGxcXf0NyfoekXrEIEYiku9i0rDPfarOZzV5lH+PsOb0WIBQcofgKgU1K
	 CRsuhf0APSqyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957CFC87FCE
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175349639357.21745.12161355577205945375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fade76727c5365ddfaf4e2e5da25b47f52329331a98ab45a2d2c713e7dd1cec
Date: Sat, 26 Jul 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753496393
