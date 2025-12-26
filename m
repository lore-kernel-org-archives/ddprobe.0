Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163DD2A1B2
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766739834; cv=none; b=JwoekWmXNqqAz/5DNNZPZsXJZAxDtADdndNrvc36VCGqT8Xq3OmJzEWiuhgDQmq23xXy+B1HzOZwKPAf92cBa2zqu1i3JfGHj/WF5Nx322Vg5AnzSaHX1BdMvW6W9qbFQOutD76UgjHg0U4bwRVwsXPVlu3H0ObidPnRkFUrR0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766739834; c=relaxed/simple;
	bh=1+OXVnvEWKTF7+BHe8H7dKD8/q5uACrzkjYMS9ClI3I=;
	h=To:Subject:From:Message-Id:Date; b=UYal4b2pK9I1GMS4zWpQqMzPQ8y4VJOOGl6AmktFY8zOu1bXn79Q9px9JuuDJW/p75itELENQmzOeKFIC+Bcy7SeGjXIoxCltSnNBoygOB4MNmy5AgiUAf5dAj85NHazjLbC0WupEIfxCjsZH9pmLHaLGexe9WBYVwh57iH76uU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rQHIV7fr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rQHIV7fr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A742BC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766739833;
	bh=1+OXVnvEWKTF7+BHe8H7dKD8/q5uACrzkjYMS9ClI3I=;
	h=To:Subject:From:Date:From;
	b=rQHIV7frNbVUcxZwuymjW3raYKs8jTuBoftANpZDoJXxOVWhUwMJl42ppdKlreo32
	 lHBWcJUj70kfptmTY5YJnl4Mq6fgKzpXmLIWyIW8ElNC1Kr1Zicr8BeBCq9n7pAZO7
	 SbjqWjtJnnwptZt4l/kZYXJK/RrJz9xWmmrpEaBwoKUDAsRHILTcIyo5Y+ImHeoVPR
	 OWGaR87eownv324aJvYSou6WsLa9XgtfTa41lcpvraL2mqvtICuD31r49nKi4Hrk7B
	 5vU6PMnsoU6AzkbyiDcGelDIC6KCYPshnxI8WfoEMIuwui/hJ3RX41DGl6q5ErcIgK
	 iifcIDBCMM7rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CA5E8FDA5
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176673983358.25791.14630689844486634984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b68acfaf59d25d73852ff414bf693a4a5c219e6f42c8e10937943b7e3bbb7390
Date: Fri, 26 Dec 2025 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766739833
