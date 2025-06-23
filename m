Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7CB721B9E5
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750666193; cv=none; b=GFyu3NMN1d8MsYq4j3M+o4CMqNvzScjNXmwsKYqXkWRjMqiVz6MzzdlKIMsopDbndzs7rHRuJdwqXb7PUALUrbNiyneTJUDY2rkPqPkThqkfpUtRzvmP+byEl7tCAdqMetG4Q/q/Fd04wfuo3iWp3ch8pGJSttiQ03JcxX+T3Vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750666193; c=relaxed/simple;
	bh=1bGTdcXcSxuJRPu2W8VqERt++JK8fEL9dsGomzljSOs=;
	h=To:Subject:From:Message-Id:Date; b=X/jZALX8wWWfUvddRaZvE/ZqKYVu2aOf9uDObZDlzJcAB41TYyS7EQDe+4rPATq98UuqxqZk9YdKRHhCo/6L9vtKd156Ls/WyKqhysvAqDur9CraW73MgkXod/23wQ/NIzR1LLefwuV7+TSP1i8gJUynsTE6tAvjyiuKCVN6rHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rbvSQSIQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rbvSQSIQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4891C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750666193;
	bh=1bGTdcXcSxuJRPu2W8VqERt++JK8fEL9dsGomzljSOs=;
	h=To:Subject:From:Date:From;
	b=rbvSQSIQc45i+U0thW2oV2RIGn2nz9JzMxng+KdwpcKOom65eDehCOjkLe0LZA6zz
	 I1RwWmQnmNAZix/zHzlj7d218NFkuaz0I1yHCfeChWtquNHvd2F+6fyEpWMTj/ubXY
	 /VKFmDZC4JL5Sa3z1btF3y+s5u/4mQdkm0QnZYAfTOrD9DelgaFV4sx9D1cbDXriul
	 Y33Q9d2Rn9QwtqpURKMzw30AdmUOlQ6XXnGB8XHyP0Tr2WbvNFLWhsBgB0j76oGut/
	 tTxHL5z7+z+IlivZv+/WInMfE6h8Hf6w8GPZrIRuWt3/6R3sVwRZnlkeM2T7zj9trd
	 SDb9HIfQB/nEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93251C77B7F
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175066619359.23614.5522876550226921673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0238887eaa5c013ab71638aefb74aefa9df6ec81a5251ff665e7bbce2a35ca26
Date: Mon, 23 Jun 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750666193
