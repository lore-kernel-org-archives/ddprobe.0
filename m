Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80C931DFC7
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 16:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718469503; cv=none; b=sZio+hK598JwSHPJP25x1vQyHFsQ2HWuGKbBzOUmsHkAydhHBSqfLmxl0QQC2PNtPPMGNhr7LCNwk2IOEGHFFAt41kbE8axoLu5B+uhI95Sk/405MChwC7Tc0wB3P4K7nJXSfhbzidVPgQrmx9bqe899hqM/QH+nHwHmzj4Fx9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718469503; c=relaxed/simple;
	bh=kJbuqAdhbd+qYKxZ8glTsb27c+EYCfzCyhjpilOYIZE=;
	h=To:Subject:From:Message-Id:Date; b=raHxioZGSc76a2zhX7oKV/Ny05V1uUxR0KVOU9Rg+H3cQ3GCeKE/DLgARVV1j7LmK6JB96eVIFtUJqQhDIKDICGr97h8rn2KYo7YE1egvgCzsscz0JaLGO2zxIy65bXLh43LPJHIdY7zwB76mNl0qH8zSWzgXM6WEWrTH7zOYM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ej2+CErY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ej2+CErY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02C65C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 16:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718469503;
	bh=kJbuqAdhbd+qYKxZ8glTsb27c+EYCfzCyhjpilOYIZE=;
	h=To:Subject:From:Date:From;
	b=Ej2+CErYTTwglEEv094pfexlfNaC9/qUI/sl1TPnNdVfX54Vu3DBUsgk+s5Wo8HHN
	 UYDbXgwYWGsR+skVbuiz7gQSUOS4ZmvWLw7RJAY4QuFITqSDUSVEd13yug7SHTyZno
	 gdcn7wDDznL1IFd8Dd+jhM6eXEHuVb1wIhDG089VsftpCb65gb3UDSKKCzsSbeJKeS
	 lBfgBGSgwn3Oz5x4DyVfC3bTSWOio7p39C440FS60WQ+0/82BQW0kkByNQiiOLMn20
	 CZUIK0+wbPnvchInhU9RwKA+9qkWr7LEy12EpbicEQLJEsLTLXzWz8FFkV5S6+88oA
	 v/UYFnzqav13Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D139BC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 16:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171846950281.11592.15263179893210826696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e2b47433bf63339b9cdb933c5d75abb7e2c4b6c8c7c527a990c144a92608692
Date: Sat, 15 Jun 2024 16:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718469502
