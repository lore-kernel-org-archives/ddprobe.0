Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67F313AE1A2
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788765634; cv=none; b=OlJHTIzea7CRDf7pgUa7xWBV1h91kMEJ9WiaDA5ZC2+qv8ZhNg0GOHfoeEthYJ8GNE3IGEJMtPLk3VkcCzqQYmHAbeTQwD25i4CJNjs3FkiackQlvUIF6KqjLqaviq4mgy5ymurhIiDNxPNf4qjnu1vT9mTpybMl0hfyP8LsHQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788765634; c=relaxed/simple;
	bh=ej+QHDnt3ruSzJqXhMj8PXWtNKxVOCbWdP0YiHTWIBU=;
	h=To:Subject:From:Message-Id:Date; b=l6kyknTigR0T4IytN2DhcCrqwizUTd+xaB4GNLu/Yaonxf9llfpVaMOSthz90LwT2Isdcmlr8CjeathaGrY3I+AmxfBuyq0a0NYDZgjQnT7qSVOMe5URq/bDIlsoXljaLtZE1kOrj18+UY269L5P1eMB0OpRJFddC0A897rEEa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQG7MiyX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQG7MiyX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD955C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788765633;
	bh=ej+QHDnt3ruSzJqXhMj8PXWtNKxVOCbWdP0YiHTWIBU=;
	h=To:Subject:From:Date:From;
	b=eQG7MiyX40kLHzSEEL+gifOdCFQIPVbE6nDdI/4X9A/A5wRV0POKXnjAz9x7b6hEB
	 pgKWojJIxWLzgznm06AqSup6mRGA3GAsprofG/gJ7SDc1mzd6hu7y8RryGvyjyECCF
	 OzOetCBpBjBehbPKxXNnzzjRFgWavt2NRZijWck1s7LgIJnyCKCL6muQyA/EJP7lf5
	 US55xifgj1qLAv+l2e0lTnjfOZE0CyvlK4NGZoxANe/N1yhWUqNdZ860D3mabcQyC8
	 ijxrw1jSN6ygrp8E/MKhhQErToXct+lGTkpDP1atEIHrFMfRr54JdAtnTvR6bUG+Tn
	 HnfDXx9R5trMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9940C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178876563375.22121.8245752266500191948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7672455cd84aecdfacf2634faad9a3b416f4a42bd13f7ac6ed7963642a25a787
Date: Mon, 07 Sep 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788765633
