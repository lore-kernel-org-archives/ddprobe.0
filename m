Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261161366
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721525754; cv=none; b=oNggy2aZecUSRRyUhO+zsdBmQeWZJDBf0fU3EvP4KdpsyhbbgnrquHpdPt3GpLRkRra+dLV6yqe2l5tqN1gXDUyIZxSN2MoUA5RAWsPlNpoWv/rbvPsGO8wxvWom3uoRCnkOsnKexbTPcbKx/xfPiqH5n41vM6KLbHX4DDaJPkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721525754; c=relaxed/simple;
	bh=4wjEQ8N35Hqg/AfDHQMSC81iud9dpjVdRb4SWmhI2FM=;
	h=To:Subject:From:Message-Id:Date; b=mIMMe4ICspDgft08+os2PTvZoH8NI1+iIH4ZSh975I+UZXDFoD7zK+IqG10027NhpmI2IMxmQICIcLGRVdICmk2wAVAPoLd2nu+jdHrKyzF1Z+fstGMdLjMPRx4wcE7DLia08eXJDXznxn0thLt+3TlHujqDmZy+7N7hgTQ/qxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TchoLi7h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TchoLi7h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B004DC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721525753;
	bh=4wjEQ8N35Hqg/AfDHQMSC81iud9dpjVdRb4SWmhI2FM=;
	h=To:Subject:From:Date:From;
	b=TchoLi7hmUD4yjkZMUPjpMj2vz3o2xNPQYbGtuIpCl6AizOXxJvvjCwHp5nM4ps0j
	 SzAA/0LgpfKcfWaxjBv1HJaIST86e90mmqS1raOnnUKbZxnY9+6yrDxYcq1bNtg2LJ
	 /5aBzccznl0afipaxnW8bOXXYYe3eGastHEb93NTcIpxNCJiKmUaZfn3SbHtEvV6DR
	 Gaay1SRWhZ0WDMBMJesMY5wX/1lfjNIrggatAMMTcM7OfDlI9fUwx6GgtiRlXN9j1T
	 oYwtiiNKScs42PnTmfAyIF8lKzK/VHRKTy34U9MHhineU2/HfbnpkKCK+5PTGmDCaT
	 Vt0P6hLVWvhpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB84C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172152575358.12802.2729138871665906277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f411189b48b4b3a9949b9ad73a47e6055140a6756e7951bee0dcea7bdfbbd42f
Date: Sun, 21 Jul 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721525753
