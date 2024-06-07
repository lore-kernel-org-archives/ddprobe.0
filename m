Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01BFF13DDC5
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 21:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717795043; cv=none; b=Eem4evr1GKMRknHlBmVAbqP/UhhJGWVz7TwX7pqZFdWRrEWzhIKuaaOoBtHdC9c9r3cFlg7WqoeK2IxFM+E/g/Qpc0sS+2nIC7p5y0fMPpHY1KWQGkiur4RQcaw/ke8JEin77pvm+u2FP7g1/n0YYr+kWtgisLXDR9a8B9hU9IM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717795043; c=relaxed/simple;
	bh=VNCQdT0k8LR8q7nOlpvB93Du33vUEvfbCdfffaiIHJ4=;
	h=To:Subject:From:Message-Id:Date; b=glCh4tUqaIkbJw8xC2Fy+QIlvnJhtU680hgWJZhSwyAjbU5viXLrKA8X3kL4xCdxWpHeTrhIFpT0CjttDlo5fLCigHOi4RwUU9+MUcZM4B0IJz0ATgdu6GHHVjUWVYqp1pLFmL9LJejuM72qYHd4/7H648pOc/5I4ZQiCJ4PJ5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Th7eurVg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Th7eurVg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9987C32781
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 21:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717795042;
	bh=VNCQdT0k8LR8q7nOlpvB93Du33vUEvfbCdfffaiIHJ4=;
	h=To:Subject:From:Date:From;
	b=Th7eurVgZQXnev577zrOa66UaQiLEAWgkJbGges6XR556d7MUgZpOMv4rv0ceGpVv
	 AH9wdYPTw1ep4wHwaVFBDTL9DfaFEE/8mZHjgLVzAhypv9VL/uWFOx+DLuFk9bCHTn
	 jxZ8Y2vYaH+fm/5cDCWu2gJuZ4YnamC3y8J+Te3qrSkrZVH5HXpbIsCwORzDovgbaC
	 DOYT7u2jLpwgSyZkchUuafJI6zMRwKezg69+MX5gtLnW+AAEEBPXu/3fCAOd/2kiKl
	 jcXmsE9K1eLE/3ePEOdxeC8oW5tU210wmnUcW30h60liqpvT1ya1YMQqPz03DFCXHF
	 iqwE8iwq1QvVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5602C27C55
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 21:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171779504279.17389.16762334617480110273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0033f2e902f7dfd657de46ce1beff4dfcfdecbcb59e9f5eccafcd45eede1eae0
Date: Fri, 07 Jun 2024 21:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717795042
