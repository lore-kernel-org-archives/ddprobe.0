Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A63C246BC6
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767649434; cv=none; b=unDo9EC/pHzoBHmmoCTkjwras/hBxVwMSnV1GFDBZQqN2HdoPLNVHLsHyAUm3lKeKUxQ86O4TIc/nqi46Vo4ezX4N3C3NJ9bPgggWjc1LH1VNOGhO++yJeDOTcGzbkeZXrTsC1K1E8OcpTD34t4dq0eSf49Dci7CnTdh06K31Yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767649434; c=relaxed/simple;
	bh=tQrxFuzdNynP+UCuk4rRNw1fZd7OFJcutd3wsuAdvBw=;
	h=To:Subject:From:Message-Id:Date; b=giyjSKYxqFRerVO1J0qbZd3L44+cGqn6SO+rEwohVr0ju02kXX4OT/qksoag2wrmytHF0mGzkU6t4u0ENf/C1xrfYk14/FKpbrcWtxlXliyByxt+rd3VMusrYxw3tWVi7nJDWZArgTg2BAg+Sig+l3T7wFAHg69SwiTXqD0YaXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kKx2ZDuS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kKx2ZDuS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A163DC116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767649433;
	bh=tQrxFuzdNynP+UCuk4rRNw1fZd7OFJcutd3wsuAdvBw=;
	h=To:Subject:From:Date:From;
	b=kKx2ZDuS87BLYSqRUAVV1Flab0lZqyFmy6dO+hZq1cWCqYdZh2FOta4G2Suwe4tYo
	 nOi3hd7DKKRzfNNfT2Mp5vH7/VdsYCJvnyKZXB40HvxExkfmzjHnXQ6N6IXfvqf6yX
	 YA2w73vE68f4AVFKgDfWBlGeIfwJKCKSyyuepNknySyQrA24N8tb4N1Wc6XnARCWvJ
	 mM+RfHml0jfGEKc1dlgVEBxuOfAs7RM/a2TkoIwXb0ChfVGjAYJ8rNELhCPIyP+q88
	 4vLaBi2Rzu4AEzCS5A+Zs0Ln9M5B80GOspUEeYiNJGPi+RuoJSyhTk819XjjWdT6dm
	 OMFr7hQ4K6CgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916F8CD040E
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176764943357.12850.9935968119973399289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f34df782182ed645f40ef28a47a0c1d55f23fd101a613319cb865c05fdba68e4
Date: Mon, 05 Jan 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767649433
