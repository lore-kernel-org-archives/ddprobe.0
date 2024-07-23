Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BF34F615
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721778954; cv=none; b=sE7FmgqqnJ55m3nH8EHmP3sbh9hz2qIRXTMmPoRNX8ADWS3BTmQyMJKRCFv+LYpkW96skNrVAVZQq+un0W6JFG6887DQ74jpAND+ZrKgvQCzHm0fJp+SHwEljk06u3gWs/JRZ18zyTtCYA9RXt1ZqbRMiJlE8c7PuU4QDekHXCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721778954; c=relaxed/simple;
	bh=Wfew5qoDrgYKWn65xfwfddvrx7XJF6iF6uHjqan0lu8=;
	h=To:Subject:From:Message-Id:Date; b=nzunpTvGvwdjrRrhJU1/cvil88kaYiIFPtAR6FfMDliJqhN3D4LkRnFjPGOvO7HqaluUCEGX7Dw6Dl8f+CRIr4+a4HPKfDQZww0BYiBzkEkCEVE94ZDn6z5BXmEHXnCkYnGTPDYb/Gd4qC5WkcSH6Qs31WdCJ5atfAxVZHeI4ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HKnFkZ1q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HKnFkZ1q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB5D2C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721778953;
	bh=Wfew5qoDrgYKWn65xfwfddvrx7XJF6iF6uHjqan0lu8=;
	h=To:Subject:From:Date:From;
	b=HKnFkZ1qRrkvBN8/QlqO1Zceks6NWDr1xGXAqjHjDyUsWuExy23prPmIt6GQxygqt
	 OplWTb6cBmbzxfh0GnDbB7AZeI1ZlYX8mBa+ar40V4ihKERzYCEatcuRrXWhcGAnhL
	 7sPT3f5vjZsg1LbnTutkU2+hJzdP0WxdLjdnomoXb9XxEThiOqrKSWRPRIGiNFjNgd
	 JAF6ZbhZnNp0HwKqkiSD3uj7WnHPM/pVUYsKrcSlVChM1M0E9pbEvfZpdeEnbYXSLa
	 xlBJa5O31QmGvPYs8qGnz+BDC5msQp08UJjoEAlmZVdIKj8YcB8LZdt+ZV+zSwNi0B
	 9V8syh4wpFwfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A052DC3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172177895361.22105.4585912448104920147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 969b36d067b8ae9b8aa03fc39ab78f167c1f70b8346a65eaa1bf88521ebd2df5
Date: Tue, 23 Jul 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721778953
