Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B6C2E1EFC
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786533634; cv=none; b=Iua21rcdSmYayKKt5LJ7tmhz8GL2NvAZiRLcsAyGogiHhjuybetWtERgqofM/03UKjOasK54ppFP0JrHKUw+38R01dQ9QNayYKCoOdBjkhtsSEl+bflhrtS/mUYoF39i9NMLKb9nnb9Cu6rv5fzLGluz/W7Z0DpAopKo8KODsQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786533634; c=relaxed/simple;
	bh=IVZ3JF3NdZ/PmWUZu+0fmwXodTqLzcpi3lH8TljksKI=;
	h=To:Subject:From:Message-Id:Date; b=O/GEnboAF0v5OWipQjmFk8wz3I2zIm2m2XjGjyNDQCbsLq3vEnz7dmVT+597H/VEzXuC5dbHn53Z4ltjb3+SQ8Qe7PdEr/dsmO3R6f6nVt1xOy4x4pVv4jfJO6uYlPiXF3A3RTE46FO4bEt22hgLcEJgSMW57qega0J07IYKHzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iEf12zOT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iEf12zOT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC7B1C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786533633;
	bh=IVZ3JF3NdZ/PmWUZu+0fmwXodTqLzcpi3lH8TljksKI=;
	h=To:Subject:From:Date:From;
	b=iEf12zOT3UsXeu7b4m3ISJSVOobu1e5+xxFjAPOdZNed/5JiHc4n3HCmHfKsrPEEN
	 dX8gZo7VIg7cmr6X8F48+WW9/54jlq2Gucr+8J8ABAgQHxtv0WQGnn156V0jjY4OVV
	 h+uPaapGl9IlFIwrKHCW9690Ay5HzPA6dL+U+SThC275PP20uqKSjhqVjP7Db7yzUx
	 zfjhk30WiXaQnzhd+4tzF+N67MiOeK8WtgvZ58I7HJQLwJuqW5V/yyEZS9YZMKwJHd
	 FSr7t5TmUFiMJFehOcliEMDZwarZnvVYvsOuQkJxg6f/ljKxmaSMAjji7z2nF8Tni9
	 S2mLC76WA1hVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B53DBC5CFDB
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178653363373.2981.3096381368552316577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73b3174398547d890cb32b458c547f523e2879400ede3c0b11d98bab92adc39d
Date: Wed, 12 Aug 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786533633
