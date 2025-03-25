Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C95CA6B
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742870394; cv=none; b=YihDFskVeCrSk1tqASna/CU3HeAeuveCJ2oE8YjJz76iLpWTy5HpHl27Bx2bxbvjgnWMajGT5mh9ElOTZkCZttOwp1OFDEE0W/gTqAM7ZJZJ/PeeivwfbL0RTLwJs4Xk4Cax8aUJdugu9CL18yYt8QOfrEihIpmd/8xztLZu5NI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742870394; c=relaxed/simple;
	bh=K7Acxlg9wb5Fl8FDl/WtAWeZsbxZfjTLaO6/eNY1YMI=;
	h=To:Subject:From:Message-Id:Date; b=EsA2WDG86WcAtgEB8h5SSzD7ebfNV6jAyv0JA90bcomo/0dgZsaxsTGooz8Ui0YiTSaZOdFPyV+CDKVPDQodwZqCAetiax7OFVoluhnBAzlotjBphafw2ofd3bje5csi4VBxA5yHLe8CKlSu0qcBZQhxLjkWJBbWXEYJY2emoPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VD4Rfbnn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VD4Rfbnn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C71C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742870393;
	bh=K7Acxlg9wb5Fl8FDl/WtAWeZsbxZfjTLaO6/eNY1YMI=;
	h=To:Subject:From:Date:From;
	b=VD4RfbnnZINK+6Xy76Z9FEe4nk0QW/cdrvLhQO0x4co900/vryBwGCvU1JSHxZpoO
	 j+eQfd0wdyVYUWi7/vqgIYQNhhcjMqvFFy1E8+wNQTpFL4TOH6Wqqjnm45tc9syILz
	 m7EDxvHdNXTe4x6wxKVB685DQ5vjvAC90RcYTLVQzaIjj08nhdoyY/zVWAQJDEKvzg
	 RhDzzVlr8Q10URpHlFM65tWF6U387hxnagIl7AJnI4FzI3numkWuhMCcjPSh/tyPnA
	 MEAk01e1PSbFi6ymzE804JzTElz5nmL2TE+gnsvW5ftfKuY7AJeo+nck0HUEvAZ5pN
	 8/Q7EtcbG4yhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9933FC36002
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174287039361.22049.13608435609964277507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 392680830bba03c32958d98ce1143fac65535a17b7da3bef329db8e3dd20de90
Date: Tue, 25 Mar 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742870393
