Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 669F4316195
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 11:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770809694; cv=none; b=rGatux+LKpmVCKRSJm7V8i6EJY1KRGm1hrvYk9tliIz6+yVG5t6aL//n0ZGVDWQjz/jveDJ8JT9fZbSRbAaX4mnqpxI36D0wRXkklXQPTjkV0DdIxRbeQpBhN7Z+AV3/RuQhxw1XTalJdFMG6aI3y45GQx8xUptVq0Ud2bOTMfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770809694; c=relaxed/simple;
	bh=lB1+LYrtkDb6WynsVUGYiVltRFSb6qOJI96uND1W9S8=;
	h=To:Subject:From:Message-Id:Date; b=KIB0Zj2bwfsGyqKiytTxKPOOpvfz/X39t+s2W7x6Ci2Ltv4hVyoFQf5M5cB+4rOyozD8+fttfAXJCxPDMeXZKTX0QaEI7TQcki1quX8e76UnkFLJMKC/QtHZRm0/4Qj5YvGSQrzjk+GqCUjHr/h/VT1C0fu3eSzPvHoDCXDT7qQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QKdeymTV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QKdeymTV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A4BC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770809693;
	bh=lB1+LYrtkDb6WynsVUGYiVltRFSb6qOJI96uND1W9S8=;
	h=To:Subject:From:Date:From;
	b=QKdeymTV0iXv7EfBU41UmwgtWrJipRqeBDItAZ6p5QiIKn8rAGHELQ4E4YJOY4dNn
	 VGaM67+3pKQUpZQCdE3tKFZUNK0rgsu/3SMH+kTk4W0bQdzj5ZBR2I5AuXX7e+gWgP
	 TcP9WuUXlWqOJ5v+V9S5ttRlIqL8BX5x22TBMySPpV7UHnQq4TxvdAl8xuPCA5FWrC
	 Y8WyXdto4CbaFrjVuRV/kUQ1vxQ2DZWF57YG1PPCnpCn0qDj3YQ3a99e1LKTF8KR/A
	 ovRmtxiTZUYxv5ImrxrIb2fnt4TujZpXImmrr/8p64gc5alXlsLqnRJzV2AZDMnbwk
	 kfwqUvR0G1wTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDBECE9E2E7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177080969375.30537.11633375567047130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57204ea961859fee7fcb75640a5cc2815bd27ff1a614fbb8e961bda1feafd9af
Date: Wed, 11 Feb 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770809693
