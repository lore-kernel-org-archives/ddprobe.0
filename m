Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69C0578F4C
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744553996; cv=none; b=SoxwaAh7RIRuyH955d39jWD8g0BcTp+7o+FJ5Rea2PrrjaBrpcT14P2nBl2dNAig3uMQb3RX1b3Mky3JlFi6HNc5amQ4KELM/NyiiU2dDeFqAip0BE3Omu3YrLqAHTmW5EuzQXrtAw0AYCobISOJoKs4+F2m7zw5dUBkqyRaRD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744553996; c=relaxed/simple;
	bh=Xf1c9uSBbqenG4L37mA3H0QmmMOQAq4OF2BRthhan5g=;
	h=To:Subject:From:Message-Id:Date; b=FcjvOzPLTD4f7mT9HuIDpmmiR62Lm201uvDdX5I835u2vH1E0fGz2M/JG47hN83G3yG9wUc8YwbGqw4sh+eeVLKKhcY1qLzS4ESCkwD48uT8bX8EwrRpeHI7rwcroUYoPsmTHmBwIi3fjL83Zje5dMwKfUxhfL19P0sWFOPWfEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aD3tBS2Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aD3tBS2Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3298C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744553993;
	bh=Xf1c9uSBbqenG4L37mA3H0QmmMOQAq4OF2BRthhan5g=;
	h=To:Subject:From:Date:From;
	b=aD3tBS2Q2qRcysDczD6LD8mZLprFv5IBmDLs+e0XgQ+jtQtQHH8fzzbzRESYm9hzi
	 WWOZ2Lzie9JetIdEJk/s3igvg5aSDDWk1KiWLR4G7VzWweaR+zDGBL9qjs8wEu52QT
	 bL+lLkwS95kAzaW/1ge87P+oTs0gE2Wj54TPGs4fdBYf0Qmx54gbgkjrtuPrIseFBk
	 EyXKpb9dlBxay7ftnvlx1qFl3ADq3MheTT85L7Ix9GAFiJqPfctIPCfWv0gRmIowba
	 NXTI0Glj5Y6ony8eaUa46t1KXUg1DIywQ6lyqv4U9Pv3HM1k8N/j6zdTnaZhtxmFEV
	 m+EcXIaKLDvIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7E1C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174455399366.27394.4296743688284249275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af013a950b6dcfee0e5133df6e86f8d0971befedda796ab2ae3996a7d780f2f0
Date: Sun, 13 Apr 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744553993
