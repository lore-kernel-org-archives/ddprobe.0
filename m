Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B3A1FCCE4
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733136954; cv=none; b=S1I66bcAss1jlKcJKhdws3bXzEOd4oZHv4FcfJTBT5xj2XqfgcHPSBfBWWS/Qv2a8Dj8+wn38y5eGpaoy/6FglOTN2x3L01MAvCkOF8J42oD7WXTBQLPWi680byybT51WEqnM2XSIjIARCxQj6ZEEzwX8y4j+Ghhl5tanfLfBIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733136954; c=relaxed/simple;
	bh=IYEfM7vb2JeKrWv0QPUWXK8cuU1wEkjWduIb5Wu2SZs=;
	h=To:Subject:From:Message-Id:Date; b=s8/zXTlEPFGqFtY/6lXswLvTgUh9pEAKur16w38BD++TMeXKDAk1PQBDvtBEbwXnDOIVTXCf+aXCtH/m6U2IQTDw6R6CRmtl99e21zQl1Zj7UesJyJrqKqIajqW5YaOIbtaSsmCz76krs/1rx8p61SMy7GM0OJh4Oyl+5gRsL0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQ87/fpT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQ87/fpT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7753C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733136953;
	bh=IYEfM7vb2JeKrWv0QPUWXK8cuU1wEkjWduIb5Wu2SZs=;
	h=To:Subject:From:Date:From;
	b=oQ87/fpT3KMIl0bCWgEnZFS8/yz0+PUJHtdwn2KUzU5GbZX4FQJMVoW+U311jAR8h
	 maKW1E1Lby84gTXjxkwB3UqPKROWL9vUJ4dCdcXpeCqido4nY8tqF1rcCqWRoUjVwC
	 aO+GnNDeQ+jJcxIuGNNbsLQJOAxvJVbma7UkOkrovSqUOvhe/8RTh+9qwEDlG3aJvD
	 k+06xq566AKpr6arcL7V07Km9w4TJ33Vh+gzEs4p8DlkVuendOw+SARRtabiCOezD3
	 7fOPgcNkfOs1kgA3x7teoMNDhDyY1gqtRUBnz6pJ4/iehyHp7SU9/IBDDVc0mnx9qG
	 U5X/C7bjAacnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A422FD78308
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173313695365.21605.3396842748291561860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6f71b52f73e87f90154ac0d14240ced849116b6a5d5564ad72bed8b79b570e4
Date: Mon, 02 Dec 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733136953
