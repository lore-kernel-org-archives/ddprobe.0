Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5F5221FB4
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 02:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781319394; cv=none; b=VORzu/sVtGt1KTV7M0JN3GXYqmLFEbWjdrRGeA9xINWZ2sQ24Tgt1a2s/UDMrEDGLo2NtSO9VtNLS6gngUAzMR7S6a8YYgiAhs2dH7vSzIEUbr6IQRcy8CAIy4GGOTUgH6qzQnz1i6LtRlXxAVqQQQfKAOIHq7ViVoufH6Rw2FM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781319394; c=relaxed/simple;
	bh=r57tuEH53mhmrhpfYee0ZxXLCwxqHOmYPUjCN0P2ixA=;
	h=To:Subject:From:Message-Id:Date; b=ued1C4RfntpPlpY57WQkI16PEpJlr9xIb9SXvXs4s02sMEk7h/sEBvqkspssbPwBhwkjJ7atrlcRZd0F4fiFBfCj+PMcnhvIPSYLyHJO30zR1w9v0PHuTeDPcORvFeE8m2rtqfCePZLuy5iTlI3Msk2bUTXd+gM4+3KMdUmP5BU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bC1jZjtV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bC1jZjtV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6BA7C2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 02:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781319393;
	bh=r57tuEH53mhmrhpfYee0ZxXLCwxqHOmYPUjCN0P2ixA=;
	h=To:Subject:From:Date:From;
	b=bC1jZjtVobt57M88/09YbDN+kjD2B3tkkLYjMjF98FCdkpMbUh9rS+vAJMcw8oc4B
	 kqI8mWtvvIMHl5fRrhNEDCphuPtCpR7Bbp0frIPen7bw1K8QtyqL6gQsXU0iO64ZDv
	 W63BUZ1AXVUQCBJ7AtV/Schyc02VpYIbPmo6W3VGAlRNxLdS3GXUSQhnjRBjqpkTcG
	 FMAS1Kv9vu9YtyqwuqbnpdPua7PmB3p2W10TfmCBqMv+IR+9XnhnklP665tk8utsq/
	 3CRDeCci0FMu6Ok7HUGMtt5/KZwnJ02kdba1SM+2ABbOjeOV/2h4zqsHGhgNwxKJtR
	 oNSR/bSAy8bog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6C7CD98CE
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 02:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178131939370.13523.10368424359755025652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fc5441bbe6bc4035c481befa8b611d045effbf0fbb44e73a7e15a14af9a6380
Date: Sat, 13 Jun 2026 02:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781319393
