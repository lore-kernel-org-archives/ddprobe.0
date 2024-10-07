Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8B9E6AAD
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728264353; cv=none; b=KF92gwsxJc4kv1HQV+CJnuvAoOeMalHzdbMVPsSPMeDtJdRlPsYwacRLVdbBMcK41mdfaCgINHV5JtdjCPV+k4x9TMkun3x9/J7f9MpjSI91su7jnJeY/kQCD2ibOGCS6DJwvY3cQWPe3XdbhbbvV3vrebYjx/Y7XyLOm+BPNoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728264353; c=relaxed/simple;
	bh=59D+GGCTq4p4zGWx3j167jOqPJSRquxgN4L7qTukVVk=;
	h=To:Subject:From:Message-Id:Date; b=gPaQ6MLldOdAPCuBfHWgskftdCrcOhDA40T6QBLkKVTG0VbjZw5MiGkcm552u2zHYz6zs+o5l+ubWS499aR7slk3l5ODC7ORpJPF/SWi9U9Pn8RJIJv11IDTNjlotLa6nwznbrBkIdZWx+zfN6bwy/U5wF80QkzlBhcM8ines4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQrr5skt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQrr5skt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA234C4CEC5
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728264353;
	bh=59D+GGCTq4p4zGWx3j167jOqPJSRquxgN4L7qTukVVk=;
	h=To:Subject:From:Date:From;
	b=iQrr5sktjiB9HFP5hMLkVv7m6EMbJ23JaSBu6MCqsp9HksH+bxDaIW0yFYrz6Qafb
	 R10haIGJhNC/NgCnRJJ/NUAJJD7EoJz6FPamBiRE3NC2cgSkSWrVDxNkwMLUNUa8i/
	 9KqTedR4mE5WoGXWNeOERL4tJNVnDixoP3WIFiCKKX0WbouJGK9W/D5UTWIlMe9tZC
	 /URLSM5/TWLnPvC2eVY0OH3jYaMCvV5uyjttd/c+OPBIaxcVJ/xR/rC0udA6CFxfml
	 AYchCBdAlwz3p73bZrTWbM9ZBM5W+GVyUrqRp0wDr3Eh6oIM9q9hoejPsG/p9CMe8w
	 hagr9VfQJSRWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981C5CFB424
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172826435360.20022.15177143931463928215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd061c1411c11c0c8cff48a7a43f52874f19a5101310b1c32a985ce48438ab27
Date: Mon, 07 Oct 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728264353
