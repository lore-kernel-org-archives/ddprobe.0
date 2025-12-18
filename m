Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151713D561
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766016834; cv=none; b=d4rdIiEnC2jmg5pQhQhfGuSll3gDJCZS9NGGZthtNTBmnMxojAJbodJjFDRkJ+oY9CxrJWKouxsPGrR7nDU6S1JZkii4uNF6Jtz1Ri/UBuNvg37vIaj7qd047KJTeFOsaKkv5l1J7cVg8ebjIcrvUrQRg+GybdtfPtgWvhpzvHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766016834; c=relaxed/simple;
	bh=nWxaNKVM+tdV6J4/1CwV/ADJ8QTMQmonaAqW+OxHf/I=;
	h=To:Subject:From:Message-Id:Date; b=k1Gsfmobqirqmi+r51xB6UqbvwWfI8KkdSCdV2Xj8cmneB6GACGBhQpwtOkAXUQjBMurP4qJPS+Ba13In1UEJrQ7seAS0BE5VF7u+vlXrhvCKjA/Vy1GzB/LkjF+hwa+nz4KfbYGM8dETkHCji1ScVJceizmgDza+OlZ6i+7c8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JuqpD5Gp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JuqpD5Gp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC041C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766016833;
	bh=nWxaNKVM+tdV6J4/1CwV/ADJ8QTMQmonaAqW+OxHf/I=;
	h=To:Subject:From:Date:From;
	b=JuqpD5Gp2KCMbTII8IGxBDOB6Y4TNgMx2yqjaKVjzl+dvr6FSXY9G+HaDxCCSzMOk
	 K0EWydLc3YvQdb8mzDpdp+dhXVG6Dv7loZn3nQEAHekYh/a+Khh2i5/yJEVFK4TXd/
	 WnykP0Xaqycw4TuTXKoOTGppctVQFrImjIhlGdIrc3me9jynHKB2Tq3W1Um65N37Dy
	 3/mCk35nDQs6KKnRxF9hrA9z6N4dPteSi335eBJFPGVp0wy/acSh4V6F4NXIYvoxwC
	 MsfMFYKyBaxdq3ScuQ/Nsqh8OofR78thojQSL8P28o26bP2ExI+QqG4xonpP21Zbrd
	 pc/ErHm/e1S0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A014D68BC9
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176601683360.29061.3171096223236418042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fce2521172240c65bf0d078c83a572984ec4a1621385dff4b2afb7e64708504a
Date: Thu, 18 Dec 2025 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766016833
