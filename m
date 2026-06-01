Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C122264D3
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 04:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780289074; cv=none; b=gXLBNH8pdTXQma9tQ3xnEEsnnbmYvQUtKwtxXN3EW8118qbAvg2uWEntFTiMxxNr+9EtBX0MmGqIruieFPzQSDhP0s64X0D6YJhwehmNbMvcH+1/sqL4Z+hk+GwdS5mTeT1SK+jDdjoLtXedg9iyZClrGvhekqp3YrE/iwQVu/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780289074; c=relaxed/simple;
	bh=qdOy5FAk5QRrGY1hrN1JoMENcRjf850UlKf017oHSc0=;
	h=To:Subject:From:Message-Id:Date; b=DLJkRf6WK/oXtU7FilNaIbAmzfKtJM9YO2RcQG6TLkLoBeUJXdJq/9sh6599H6ildBNLMfO5tr0eMIqiKMK2qtcuSL+2hLZn9G19vNxXd4XDpHZzajzhB2M7rI1eRw5W29ViUU7VSiOKMHDsek7PtSextEMFsBrMWJNLxHXYl4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X0qvyhz+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X0qvyhz+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5295C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 04:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780289073;
	bh=qdOy5FAk5QRrGY1hrN1JoMENcRjf850UlKf017oHSc0=;
	h=To:Subject:From:Date:From;
	b=X0qvyhz+yN261bf5Q8isdqYY+4CvcNMUkA7XZrlGIhvVDjEHbsYFdswOmdBSrRv58
	 fl4oZfNL98Tmuekl67mkRlMb6gXyQklXxt/GZBIDWFuIAxf28/IDS+ZOI1uAj3nTYi
	 Fi++MvMVukA5v2TpN5Ee2+J3vlvti+sM4bSoDrV2qpWuc6oCE+hlFPEHP9/hunTU/U
	 8SpJWpkIXoTNtQRnn8CLPrF4aWGuY34E/f6SbEoFru0YSZLhxwNxDCkCPN0ikZpFTN
	 4G+3AA2LS0YXB0hbOcfr45lCeJvaW7rbSkmS6Ik94lW6drKK01UEjCp3rheVttbE7v
	 SF63Maas/Eq7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6981CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 04:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178028907372.1437.4339511536530612921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48c0de303fb7fe4aa68eadd7ef68de2c28df41812ccfe3a43041ebc33fc8ab55
Date: Mon, 01 Jun 2026 04:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780289073
