Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5740523535E
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 15:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783093714; cv=none; b=SkzlP5EiWuY1fcN3SwrjBahyL+BqmDJUVa8FMBDOfczxM6PbLrq1EYSabTe/B52ul2bAPr7coIy6HxHvqbEpSlO03ZUg+UeHmTifvEb0k8ZVrj/WmglcVzNfbpoKIqcY2F5GS4qmZ6+Yj/0tAeM9bRuu80nQ0GaqCKeJcdFx7sU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783093714; c=relaxed/simple;
	bh=p7WiOyPbt0SdlnpIUfKuuLgRRNI/PsxFfe81PXvJjYA=;
	h=To:Subject:From:Message-Id:Date; b=XwT66wicFBLk18UfQ6rx8lMRxaSoDzdWSrcm0j/Y943Nvkp48eGrFoCs639PeXeNXGJqzo2YZu6attNtEAbBzwssRqnUAY2sYjisluJerMHzQgd3C5/eI+c6rt9v2RL7i60O95Qs1hCS6Dh6GbwH8XjB0Hi3w6QKCoQIIdadtPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FidDuN3m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FidDuN3m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2AB0C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 15:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783093713;
	bh=p7WiOyPbt0SdlnpIUfKuuLgRRNI/PsxFfe81PXvJjYA=;
	h=To:Subject:From:Date:From;
	b=FidDuN3m9/p4mceMZoJw/mnYvyzng2zR6JZLyLF9tyEzNoOeHcDyNdo3tgZbkf+hS
	 S9o41NSGfFp5XFhF2IIPR+jAPxTgt8otsqlvKoM5Q+9MVg85I8oHVwBIMCaaG16CFr
	 FU4ZqD0JK8EEjKNwQwWwir84u/9wXKY2BNA7E18TbAqYKHixcfJlWaq6V/7AyrtbV/
	 u6MKSN2lJc5V5YG4EETh3utS2DkdHg8ipqqzLNtL22juAEUtfEEde4tWusemvU9eAB
	 2r2meve5kae7K9pxkWq8oxIeLHfBTxzh6ToRnbvkjSeMjYmkBsGwjJcLimA1mRPEo9
	 T9/Iav/BC2uVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4EEC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 15:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178309371368.5096.8250033946578055224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66ff32a51de9591246eb93231a9225062150f5991c039287dda5f25abd8a6e62
Date: Fri, 03 Jul 2026 15:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783093713
