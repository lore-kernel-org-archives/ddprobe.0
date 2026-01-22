Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A5E035958
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 07:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769065434; cv=none; b=rt61+LmVxA6jjfjesjAePMirdV98zdT0q5p64ksq1Ee7e3hvXsQET2GnMaMXAt3nQxqxDppvZM5r1NShJtnvedQd3e0nX5OVTxVkcIQ0G7NKhqtYdtpiSnd5T/6mBHhcWMYz1CGjEuIIzw/yJsMs9/x5TjyxSGIWBjDS4nAWNmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769065434; c=relaxed/simple;
	bh=VTd+bxcR/zp7KnCiEYF3LY7OxxGRmOneJArDixOYK0k=;
	h=To:Subject:From:Message-Id:Date; b=WmwnyY37PaERRSToXWfQs/6AKHiuOMAZk8mEPpmw1zXmXL2iLREllsDBMPXVA/asCjkmLgb0UGFSUHUsUWcnZRBLr38tt28eFJNg2vtfNXViFrERVRIUnubbqFcMudr+3OlnjEqD/pAIaCjSVb6MMaEYDnZQo5G8rflq/Dqpzk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZqpe0SJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZqpe0SJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD156C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769065433;
	bh=VTd+bxcR/zp7KnCiEYF3LY7OxxGRmOneJArDixOYK0k=;
	h=To:Subject:From:Date:From;
	b=aZqpe0SJi24H84Q2jxOKmjIfMWlchQMNyBIIACYTYwtOch/ChVyBqHTY6ftGmQV5P
	 tmwDB3dVg1xChyNmuFVHjkJXONQ4RY6EZW8IMdtu8XDasJ14MKwqRBk2TPL6I4iDDh
	 gds1qImf+yZhZPzDnYT4ckd+OzuYf+KJX4haUBCR7hwzjBI3X9FNb0AR9RNxrTqWhK
	 JOBLZSp0FIvM/qz1tHF80/dnt4Y5ojNQY7UH5ms/HN5DD8Co8PAJjirv8LnD2ap6V/
	 u42DTogJZ8y48CRqU7ivGVrzTlDeBoZsPs88tbnna6joSoC5U0ndlK3KYkqfPjWAea
	 iQf/cYh7Q9arg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CEE5C44500
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176906543363.8642.9730954808173792656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce02412b6d383e0c3b1148631c2453d7c67954901e88215aaba7bbc01cc533f4
Date: Thu, 22 Jan 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769065433
