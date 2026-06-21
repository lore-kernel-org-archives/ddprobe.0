Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C64F226CFE
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 00:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782003394; cv=none; b=uITDjPdTYXLNQKJ0Z3KyxiFjE2efpZj6sFQuxsHfy7rMTktmIMsbnVFFcN+4TvTqjSCCPWErD2/nH8G20OMlf9OU+23SXjDJxQyureobXDshc7CFQfYubOqb3evcnWFxvj5r6Rz6jpQ2anp9dR7YyJEX22AAdSGrpyrbMkTYA1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782003394; c=relaxed/simple;
	bh=5ZjqoNIb85C8Gj67NYcv0wirwYHMP1bC//ThUq0Fz84=;
	h=To:Subject:From:Message-Id:Date; b=NtEHySOpojUsjcGDGhcCWFhR498nHlMuay7eM2qtjiygW0/NS4fCoKjEnwHx3jTrrT8RUTqLi2pzInTXyqTjmPzYcjrYjq8svtMDoW660wXjEjbk8gBeklfez3aNfdsQwkVhPWZ66A4LIODqcQy5pEqBRVwor9AVA8MOp5Me3HM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I7rbrqwf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I7rbrqwf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D19C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 00:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782003393;
	bh=5ZjqoNIb85C8Gj67NYcv0wirwYHMP1bC//ThUq0Fz84=;
	h=To:Subject:From:Date:From;
	b=I7rbrqwfuDtdwViKhUQfM3Cb4EOfLnrqw4koyX8maGmBqwLxxwX3XMiMXf9PVAajM
	 +39FOI+CyonMm43J6AWxxNBZA8L/nSRDgBafcCwIpn4m4L5p4pKqKxYynwdOFLCHFg
	 L9JJ9TTtWr4Vo/hxd5BQABcEiQVDzCTehrKCoQ64+DupNNdPJhQ8qD+eyTAugiBgh4
	 v9M+Pchmey0AEW05efwZiTkn/ZgQXn8uC7vN2u5kKXtgDr2WdpMDOK0KAeyDUhwQYz
	 sTC1KC9OVHTFBqt4C6/pmiueLXLGekWfvwj+zufhHMIsUe0eeXK8TfU0KQlkiQ4Uow
	 J5Vwz6Xkuv0GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4E7CCD4F26
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 00:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178200339369.18426.780620300102759273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab2a6b14fb2853ead64208fc2d44bcfd72fc3b706dc47334faa094cee2b2729c
Date: Sun, 21 Jun 2026 00:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782003393
