Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE68433A4
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738613754; cv=none; b=IhoMdv/g5hO+BWfZ3zMZTht7eS14U+v9IH1oPAh6Ouo7SGPDYjFGCc4E7Cfdbu+FtEY4VxwK65Ei5hOXDW1eL81hURxsYPK9t8vSu2/5Tn++T7nW7jz7B3jeVbnHH4qmml7Qmy/bCosh3zxyByL0C4291jxYg07tzJZvT7BLgLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738613754; c=relaxed/simple;
	bh=4ncb9/wToJOdRo8RmLY0MJJzBgt6L7fI4S6aykhOHRA=;
	h=To:Subject:From:Message-Id:Date; b=ADBeH0QCxBxJ3vq+TyhMpm7qVLtPCcgPc5pvEjMTS1BXltK4WFpNTOhhrDEazVtqHQsuish0XE3OHL9HLEY/Lrk6zPcxhZd1fHtThTK0cafORVe4dKzaQsBe6Oy0Pn7LRlw5XANlgfCeUZsGK2RSeb2iC4mkLO8Qbj5rySM84fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OIV8ps6B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OIV8ps6B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC67FC4CEE2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738613753;
	bh=4ncb9/wToJOdRo8RmLY0MJJzBgt6L7fI4S6aykhOHRA=;
	h=To:Subject:From:Date:From;
	b=OIV8ps6BKj0crmYqCjdYvZBTG5yBKvYHUM+/zUZwUQWsQN/VMSmCatePXogGTd1ql
	 rU529GSHJwmZ8f61NFquFO9kwKvA9MmXnyEoUi5dsC7MJbPx6IAWwCjqmO14GxbfY/
	 DOnwoP1Be0vj9/TT2fvU38lmgF268Knen1fvET7ErgXGw1j/Kr32EkIMk3SMKEURUi
	 pgNRwqGwK4K2D22QcADI/P3B7WabLTpIUvvNCeGdE3NPQo28R99ba+9cn6XdQMDt3i
	 t2N7rXatvxTvOEXWm56ANzO2i/WvymiZNfHLSdKVTAJkGnEo96zNUNiqeQoJ+BmpKE
	 3/CzLt8BoDqzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F72C02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173861375359.12663.4632206185748810028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63e85eb1074f9961b1756e8cd81a2667a62b9d32ed1bcf9213d8861e3a42a09d
Date: Mon, 03 Feb 2025 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738613753
