Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF911547C8
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724923554; cv=none; b=mTz0dbMDeOcY74mOSCO8WSn4p34f+3iZ/QRmTx0FDwGvJe7zKzPUdfQMWzxRXUzBRC0KPEgj2W3m0rtf/KVxxNimr9OjuvgtHdBV6JqEd+QUGmGWQeGqQ+Ci+D/el++wv7mGABetF1mR9GbuzXAzvVcrxAPlnhmmooU+l3LrQ0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724923554; c=relaxed/simple;
	bh=BvI1E2k72qOCeJsGwCKk2/YOQRpJ28u/XkbnuQrTHGA=;
	h=To:Subject:From:Message-Id:Date; b=fosDzZWqoPxUDShSJRzZiPANRlzD7QvUh8ENoshMxrmRuHhHk8hATbcqZqVCYbeyXVdqcjnu/qoDT4yKUNVfQSPu+MQJHbEn/YRZp8xn0S/slo9IWbjKWc9tBu9XYK7ZFTtE4ykDA3cYJgQ5bfwgKojdJOOd+rrePRwpayujCzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z4nawq9v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z4nawq9v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82ABC4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724923553;
	bh=BvI1E2k72qOCeJsGwCKk2/YOQRpJ28u/XkbnuQrTHGA=;
	h=To:Subject:From:Date:From;
	b=Z4nawq9vvUAHEGQ1YexCAmwu6rgq7f91q84mzD7wuKJah2r8fW76MYnxnXl4WsRBs
	 65PgqOqZRgFdw80qE4nUSNrrDAM42DsJZ7FJ0N0Y2V/NPodk697fy+PpfyUBmGC6OF
	 9dpngApW7PPd8PIClyS0/tK+AHNz10BB8ljShB5okakXV1+f8JyMl7WHMIDGjKmdYk
	 8RFSquGPUSM7h9uHnskjm7RhRnUwKbmjQRFRNTzQQ+kG4hPVJTrMD02RtJNj2fclvs
	 DkGZDed9vLL92AnCFips98jISsAEKabga1qYwuTDjG6VuLwanUB7gk4qDcnSOACjn4
	 s84EX0UTrM0hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BFDC83013
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172492355361.6761.16687910601493257482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7d66cf28b862671c78f0c98ca44b722d0d3f584a1f788f10e78f193e70f65c9
Date: Thu, 29 Aug 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724923553
