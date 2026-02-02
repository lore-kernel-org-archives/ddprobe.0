Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2250A2FCC0E
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770059634; cv=none; b=nu1Ny5sNm8m26udQDM2CwJHaDtNI9UNqOwIbKun38zLgyQ1WerITN/5yLZSeWxjX947DnP0ZREnxs+2IyQ6A1b1Rnkdf79C4wFeydpQHia2Dor5M/MjxJX/OBD+UWHwTufYvtbu4Q1r9Seplzt8QRZC3HAVLePriCy8LdSyxGgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770059634; c=relaxed/simple;
	bh=kUA7bT4n3MQZreHLlnkIWFt7uN00ZzNajkL90Bt/NtU=;
	h=To:Subject:From:Message-Id:Date; b=qx5Vd/hx4AQ/mti2T0teXWOonNGcHM2GwzmQdr3+HbDR7klGszXZAOmHn9pHW1NzSW3lu+mGWY79gGepKUsCHORDdpYfYht0iHQIdvbbHiEMnyuXbqpirXwMAOwQZfZOJ5emlOQ/OaWorvl+zD2VSE99e4melNWqG6ets6txgPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2H27is0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2H27is0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B67DEC116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770059633;
	bh=kUA7bT4n3MQZreHLlnkIWFt7uN00ZzNajkL90Bt/NtU=;
	h=To:Subject:From:Date:From;
	b=k2H27is0krmw1kUsVxYQDaymBDilzQ9xDlAMM3LsF0OcFp2QyNrVjChCL1EcVaJR0
	 6yecHTrNfVuKCyfH31IbzWBcm1U2sq+85kxmtYKu4qtlfbj63RfAskOAMhi/z9MUge
	 6nIVvL3vrd9c6jW9UipIs+H4GDAaR8dOnhKN1CrHJsej5uTMxaidITt8OP91T3pCBK
	 s2zC/l9lTSWeZCX1498LeVjwDSUjbASFvJnVFWZpdBXQuYdlxrxWtTuPZwCEzox6PF
	 TmwVsdlcAgbiyngJPvJmCqG+lZuZKt/dPkVSRjDJbsIkJNQYFTS/a2zbB9sDs1IjlA
	 E9zvpTejWSotA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7D5E63C8C
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177005963362.11931.6736669360553477178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5ae167bc86bf6b096005743177d577443111d1ecdb3a105f67f6577c4a55739
Date: Mon, 02 Feb 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770059633
