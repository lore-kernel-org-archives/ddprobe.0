Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E9783E49E
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 03:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719287603; cv=none; b=Ga4him60ZW8T+wkJRoRL4HIGbvLqNvL8VnNe+I1Hbk14l9IriZQvVRhV5MIgDVgAaDkUByf8hzBfYR5kneXkmNScNL2Mm1csATNKsXQ5WppfZ15qbEcZ/D4cbubmahNbTmcb6OeJiYjIAXCDn9JW6Nn8x+dHzhyk8t5Oui0sX88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719287603; c=relaxed/simple;
	bh=HiUSGi5gs/Y57e5rRDr49xGb9HScac940nfNtdk4PDs=;
	h=To:Subject:From:Message-Id:Date; b=ll+62/WZQh1g6YZ+CoYGeQMrUj5foPVTP3yjsg6iwwWhaXluE0CH6TGC51CBOc2qpRWB4OmZ3KYx7ScSQhjDwBGdGfF2xcoYAf/WghlFVxNr9igbvft3nbFp6Blu86//FP3ywDgB+ZheNvaEjMFzMGIZZRqCEgxfgREeEzUah2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o4hChhFa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o4hChhFa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D449AC32782
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 03:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719287602;
	bh=HiUSGi5gs/Y57e5rRDr49xGb9HScac940nfNtdk4PDs=;
	h=To:Subject:From:Date:From;
	b=o4hChhFakNIpD4MWukWnKyMb7CqwtE7ZYlS5GFQuPdyCxtGPJ/27zXSL4LqEeKgg5
	 k5Q0m9AmFH6evaCnqxJVqWb6ZJe5cYpV6H8E34SN0HipXqQK8zmHPlmG1Dw5ymmwok
	 RFUo59eaQUDkWMKoSVJ3qbIDUFNBV5cAbjISoIu/GtAWcGpREJO8SMt7eSNWdJeaPv
	 85ZVSv5mhq2MADCeBHzuIec7rjj6rZPpJ8RM7ELyU6LUFf09QB7yDZHziU5fSUDv+Y
	 KVzFQ4XELtn830SxXpJcTnfwVFzvtc0NAb78bKbZieQoLcZT4aqWyKRagndbYel32M
	 FufRvBcTMQjGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4FC5C2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 03:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171928760279.17830.14506946680547447579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7901fb6bc643a540fa97743a78e9daae4a51d4fbae5777be0c30fecad3654097
Date: Tue, 25 Jun 2024 03:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719287602
