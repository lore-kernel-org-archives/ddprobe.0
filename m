Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A29294A10
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758029995; cv=none; b=Gq5ryxb/l2RsKsW2ZNAnmiHestNsf3WilBqK85A/ZOg5f+J2f7CS2uHjxcowZ+CTAhduNHCs1tHI0Eoq8AFtTSF4CZXISyQcllj5Gqg3OIHbHzy/qpG/y+Y98n0LcsCW+R7qkcf8vB3//TFbgCLgmYTIoNKOntRB+OdP7Z6VQMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758029995; c=relaxed/simple;
	bh=s4GDp1RzQav8bimZwXribTtOcwdqGRv7iDb440KTteE=;
	h=To:Subject:From:Message-Id:Date; b=qV83rB6iZAxeLtRC7KWrJ5NuML3kbvQOST8eGv/LRF3QCWYhPdHhSVTFDOSmROk5ivdaTfnmfclxpvIgLCwnL3MNp6in4XQcthsRr/LxBeW44rqBRuY2jWxFOU5XZfZzC7oyVqa5ykL2GZwpgXRvwImiY+pDRXwm39Bp6CXXq8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e+pDgmH/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e+pDgmH/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B1EC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758029993;
	bh=s4GDp1RzQav8bimZwXribTtOcwdqGRv7iDb440KTteE=;
	h=To:Subject:From:Date:From;
	b=e+pDgmH/1h60SRNlpzuNXKtwu/BKRiSJX9Njw5L9/sh+lHFaR4QrmKFz6xatHAHFD
	 6iPBQ9UOZIGlN1LjkhZA9/LRy9ebTTPEk3FMF5EROlVGJrw1iKO0IoCGrK53ZFWk5H
	 /Ae0d7NGwqA6q2xH6LPIMMrXo173If0PdmYSEkceG3MJFJBVWKXnMNO9+fSholfzxV
	 O17WjWkExBcRx+780J2NpgFCC01cYwK5/BnLHqJeoe1lCKioR/ntVevbdXiWCUJ3YE
	 PmHFuKomNV2qPOA1HX5hHpfbrN488SO66GzmPgN60B3CPw/Md7UQhyigCq+P4Q2jT6
	 XfsPoy4lFjj2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBC2CAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175802999357.8697.5987562037750682984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f110b5e14120042384cb0f9eb441cc4bb1dd64a53e11e4a57e63803fe938c9f
Date: Tue, 16 Sep 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758029993
