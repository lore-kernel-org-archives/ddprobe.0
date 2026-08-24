Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0210F3F3289
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787563235; cv=none; b=CMKO42wHiXVI/GA0GAJYnZq8toPYYdqYMgqKt1X+zHl+T6CO/aIztwsGDkeZeARTcZy/bKIFW6LCnUDstvO05Y+6d86+Wszg6Id4QKbDkzJWE1aQLlmsFzxyXuU705Ae92QDxh3maYYX4rARQiA3gHVWiIVlyJpgn1BOrZsJhD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787563235; c=relaxed/simple;
	bh=7WfShSW5tGaPul03ti5GbavgoOvnlSRUGYa2NFa1VOE=;
	h=To:Subject:From:Message-Id:Date; b=eTJ8P4d8j3wnrygurYaC4FPdrqeMbyy1xBM0TKiowMIY0rf7YIvcB8ulpy8Lr2wFwy3eOS7NYpnJKX2z1qiAzjoWygiFRS7fhiCfeHCoVU74zj+OEOY+TZoxyYSxUwm6MZrKNfaKbkpsQRj8mCi0CihUFifowbVgj83o6bsDpIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mvnA2NNL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mvnA2NNL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5A4C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787563233;
	bh=7WfShSW5tGaPul03ti5GbavgoOvnlSRUGYa2NFa1VOE=;
	h=To:Subject:From:Date:From;
	b=mvnA2NNLRXablCyU2Jc6d37BYCOrk9ZlcY67BLzmlvdQwulvsttQMoujUTZ/eFg1Q
	 MEjEc16pemoNWkCkFijvzZFOrTxx7SQJkUBvX9cDyEko26VYkDkBad/KzgLeW5ZNIa
	 pHIZ/zejEhtyHjj4AiR0R90tkyb4bkdaZuOyVeOM63nhXCQiISX/OYK4pkrsHfxkq0
	 vJn+YDvBJ6t9yc+5zL2GrMqCg15AO76SwxExh526bRNa0WOUPJ/ljurkUUSxm2Z2/D
	 5/psqfECIHtne4wHmfEmKXItURx/NJQW3wjo/je5z0x8WxIw1tnQwWuY9l3Ic8LUr9
	 yY/HrNdhbFmkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE0DC5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178756323369.14524.1503720572024016459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ef3d8799cd1bbe86dcaa58d798632f8d920fce3806c11c10e14dd2321e2e861
Date: Mon, 24 Aug 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787563233
