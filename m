Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3972D8398
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 18:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765823574; cv=none; b=hC5yCqeLqwJxX+hahMpkGcV6pU7i+KKE7P624vtqEzgJCYormI4OKVEaeOEFJ9Ex+ObdXsm2j8VXzZmBaxEBH+RiVU2OBgwhFFZyNWkUVmTlP24YTPT5dbFB1Ob9XY0i+tk3qXjw2sCodZEiqhc9ETVtieURM9YYCCyvrnXAFrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765823574; c=relaxed/simple;
	bh=ela2GqnJzmn70QFF5Z15KA7HZs4DH6nXfGiM6aj4+P0=;
	h=To:Subject:From:Message-Id:Date; b=Gl+mcllFNvg/3bu4mZV/DSumkV4KmYVmIRRicsWYFuUarJ5PlHOL8rMhrucRAnOwEmaNP8L9q1hLc+MTfW8XSoibucLVs4Df0ngRcBXlFtmmkQgJlew7a6kKqjZ4wBQKFQc8xSFjZAlqOQ7kLbroIcpoNJHNBN0xgNV7zhpY9Y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLdMjUcq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLdMjUcq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A501DC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 18:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765823573;
	bh=ela2GqnJzmn70QFF5Z15KA7HZs4DH6nXfGiM6aj4+P0=;
	h=To:Subject:From:Date:From;
	b=uLdMjUcq2cluMCyU02JEbqAxmM8IKndp8Z0sJW//KnpibJJfZGaqsEHE2Ssp10TC3
	 +6xGtv3uWvEXwPZqXv8aamn58suywhnbHBR9v0YLijx4X1JN0CebFRw7QXcqINaUqn
	 qoTqgLCOAMBcS8yyZ/AS37U32IZ1J7cmgd/X9jR+MLwjcFAjJfvY93QnwsikcLLA7N
	 Oz92Ii4DvVAefJIgQZZhk8xphuSxtqyrhSTpsUMQT9DIUNU0iniWLaSVPyODQagS7/
	 hkHAnPbrOQRR7VPBfzEsepChHv1Fa4B+NaVwqZOawOK4D6VD3z6oMnLtq5d5598JoO
	 ebpnNn1Ax4f+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92298D5B862
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 18:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176582357358.28775.9982603480476050665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 707a1c655047e41b891602827ee7ea98d8ac65a509e0bdaacc526a33f415fb57
Date: Mon, 15 Dec 2025 18:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765823573
