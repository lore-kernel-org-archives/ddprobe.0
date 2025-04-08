Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3712E26FA54
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744117194; cv=none; b=C7q1/iCo2u0XnHi0zQPai/2n4CPSZkdlENWFqzHriTnzNFpJMVHTOty0U2FyC1nttveJy75B7f3O3yCVCyRBC36aY4ii55QwY+VTzJTXzNfgfeTUtHwcii49skUWOFxmgLd/Hwer0l9NJm/toiREe/EwuJdnstmtxsTAGuOtw1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744117194; c=relaxed/simple;
	bh=IURrJLrHT/sxHdYZrui7teyuAGtwHbVg+OZPg9EuJkU=;
	h=To:Subject:From:Message-Id:Date; b=MgqSXhkHnBltt0/yDddni5dJ8WN5ku5TxW5gkRqPl9PWYjfMrCbch1M7lC6RraFoRkEpantsDfa8d8Zj6+3IJd0xCeHOXz3dOkOe4WwWy6tL6YRHxnc04pQWC6EW0G/QT9MF3jiMIRHq27suLMiZa3mWi57Edef/N4XiThDm1cY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l4jWQJHR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l4jWQJHR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A503EC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744117193;
	bh=IURrJLrHT/sxHdYZrui7teyuAGtwHbVg+OZPg9EuJkU=;
	h=To:Subject:From:Date:From;
	b=l4jWQJHReQR5sK0E5qRjFKOUMtNnVL1EM2ZGxnEDloSG4imF3LPn0ZPPIHnhttGyE
	 dGJ5N5N/RofBDS4D2YmF2hMvE1cAUvSJKURPXG6HQVK6CHRfaQh/QCWBLltvfSkSpc
	 gXYmFY8BEHci0JDbf+6IYPMts32DblO1mzHBr8cAptLIGA5EIGsRHNydm0EvwpZhzU
	 er030Lp9WgghWqIRyVbexmmeljBGE2lt56RLvtPKAe6h6J9gDdCVRczX3zB/PFFkrP
	 PMd7Undo2UXQJnWKFN8ABksjQNdVK51mvbaeqz9mVD0UlpCbNOboqQbzEpcFiScdyr
	 g8r3Bl3G93JiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937ADC369A2
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174411719359.20833.14622491502200481442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a75f7fe9b1be4faa20636341a9955173fd3a5a6c3ba470a07f6432c2aca40f08
Date: Tue, 08 Apr 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744117193
