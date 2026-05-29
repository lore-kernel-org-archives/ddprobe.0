Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C3131618C
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 08:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780044154; cv=none; b=FlSwffTlMuWotExvuZ6zv7Ey4X4VpdchQJN2OSc0BnG6FbLUknamwKmasnqBIHp97S4UUshCq85TZfHTzq3g63OZS6/JooAEf4/0NEILSmg417n+QiN1oW4tMXia+ZX/WR62a7+i1Q5eLVuUJAPCr6vjQZ7aJjnvMxTtwzq9cMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780044154; c=relaxed/simple;
	bh=qTUsZgou0QKre9mgzHgL+t19LS/0ze7a2TlZM1SUgss=;
	h=To:Subject:From:Message-Id:Date; b=p4SexktzR6Y6yMvRfqVpzeFR8WbveV6RJod0yCT8NhBkImywGoTV/VEr88uw7//W8YmX+cpZykoZmMbvrcBNAzbtE5d/gMUQF9W1XSGpb2IEp26a4FMQcBZi+cdFHxsqKupCw5KCYpwxLRcSzGA0TBFRZrlwLtf4AqIKnF5KW5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2aVRg9h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2aVRg9h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF3D5C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 08:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780044153;
	bh=qTUsZgou0QKre9mgzHgL+t19LS/0ze7a2TlZM1SUgss=;
	h=To:Subject:From:Date:From;
	b=J2aVRg9h9UBV0KkVlAdSnfZmzwi/rxJioDoyA1qn4+Ac4SZV3+7lgJSWyLJMsotlp
	 Ca5nFYv2XaoTXtgCcgrP0SaUGBO2SW49VGhnliMdPrNzBff4tRfU63Fl5zSi6p5BLV
	 lQt4LFw2IapQ9WnYbwNjr7vhm7CXlBU7TkxM56BtIcf1VQAJhIfKr1SK64lZ9XPCFa
	 +Bymd0f3tSxXlxS6jbFv3cBVGbSakFcrcw2a323HVVRotQo7g8qz2yzFj/vXs56P7S
	 bA8xare6SNSBU2bicc5gkY0zxvqWt6HcJyIrdmXmLZeOXqIbeeaH00kx8jeWL2J1JJ
	 F5m1HqoylQoPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A86CD6E45
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 08:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178004415368.7049.7485501748238600232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 759d6ca0818bdde041021aae37e156f41afd53a80e8159b2e6aae41f63894379
Date: Fri, 29 May 2026 08:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780044153
