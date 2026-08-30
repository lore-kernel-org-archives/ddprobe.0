Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CA003CB576
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788114034; cv=none; b=Trx5zgi+fwAhuCjOQkiS0OfTan9H6g7Pq5cNNLnyrNsbcrUFlD3mfb6LbWGx78RQD9jQ3KZ9khDMIbAS+kJ2nwCxqxcgsHQCyb3DJuWNzYGbYI1Ys7hGeyNcmg5VdQ1fHT2wLRW+cd2qlkB6IlaMmmJlivVdyxXlPCOAMZAoBuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788114034; c=relaxed/simple;
	bh=J13Ip90jYnx6b24DsuW9liGRyDW+M41QcQbZswQ9Y+U=;
	h=To:Subject:From:Message-Id:Date; b=E5MOUBz/h2eZ5BNIuR9tiFaO7s8V62yZjDq/WU7fRwVXSJTDNJFJqXhk5eCYhtmKUU79DVBGIYgDSyXVO1ZVCXTa0ORIh30kFj8f5ZCd/WCWg1m/dpOyr0S58eJk8hkMaSN6BsVe5WR1kl2NO79Pq7vN7OCCllKOIW56CFP380M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BeIahgrD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BeIahgrD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3FAC2BCFA
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788114033;
	bh=J13Ip90jYnx6b24DsuW9liGRyDW+M41QcQbZswQ9Y+U=;
	h=To:Subject:From:Date:From;
	b=BeIahgrDxl/+rh/P3nkYbEKqxDlvXcmwst5wdQV/V+xoBWbNlvIIek/hk+cefKkbp
	 5E+UKQERjc/FO9aEAol2EGpFDdDNlaNTPlCcDZEkeGnwClvjxAgl00Rr9649aK5rmR
	 xcwv00x8pBUfvgofLrQ2YhOnIFwAIvOtOnZVbAwIMwLiFO+gnB7JZnFxjF6ZJ/IxKe
	 9st9S3vQLjGu9TCUy/JeHpZZt+6uH+p3E//rOaNtk9A6PXoTrmoMHpTgPwSOjtLYfs
	 RwsVPm7FaoxeYbuszpMi1icHxz+aODmzalNlAUYt8gZt1PHUywGnpTITF3Il1pqmaL
	 vX4iEc2ppe2rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA4DC61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178811403369.12532.15662018773784947817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 033d80c86e46697af072468e83c47b37778d15b47c1b350b967b8d404443dace
Date: Sun, 30 Aug 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788114033
