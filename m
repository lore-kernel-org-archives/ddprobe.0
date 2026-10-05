Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E2AA4C226C
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791214834; cv=none; b=FyOxdHL0vtJOQMivU3G+iR1pS8dC6gkM0ng7IRZy+3nw76b74jLoON0gUujk2tnffM8yWvLHySkSql2rzQ0bs2a+URSZaw7oVjR4MOpinufSzG2JJNlUvwhXGVWp9O56HzIbORqaz3dPZE3Sh8RTdzr5CdQ6W8mwfbmo51AAVio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791214834; c=relaxed/simple;
	bh=SZVZTeHgUlThxy/yZgF9Dq4DGmnZQE0tzUfjw03/gTk=;
	h=To:Subject:From:Message-Id:Date; b=tvuzSU80mF50eIqCE8blFH85OfxCBmkhlADc/HCxACgGc9p7q/nRde8s6C+7E3ibYPktQn8EvI72NuGi1geDcj7WDUHURWFMveKwpEHr+KuYZk+tFlsqsQwKn0e97ephV+RHMcBAl7GCpG4GzZfjs46n+t52SKr952YjkH9KhrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oC3KaPjG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oC3KaPjG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7A8C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791214833;
	bh=SZVZTeHgUlThxy/yZgF9Dq4DGmnZQE0tzUfjw03/gTk=;
	h=To:Subject:From:Date:From;
	b=oC3KaPjGak7BADBV31Aa+UkhofnIBkG3/TKfhOCyEsJw0aDR0pymgthR/i5+LixmL
	 uy928hXUss8bhYrLuIMEnCJik3a9EBryD5KbOjq2HktSRXeu0KvalU79k53IQCnX6k
	 tyUSSqHOm+Nc7yvaOxAtLn1PPxUt7C9uytQRbZDHTPuM43MWQTXsYxUBFvzg0h76f5
	 0ExXhK43nGDfkaVh4oS6OBWNl+Qg/m38NyvnrDMBiF1TDpMm2iWe0MVgRRPYuSyqsG
	 0jt0Ag9Iqu5J016yrMisMIzbI+nZFJgA10ydhszJf6LPixMRO6IxLuDPdJa5+tWn0M
	 9xmAFkK2HYI9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2AACA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179121483368.7194.6472655154400131102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 420aadfb8c952477d2c1f870543516f673e56355b84a7d28a154311fcd301d68
Date: Mon, 05 Oct 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791214833
