Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132392773E3
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771386294; cv=none; b=p9d1bQGrqL+zHu3GZoJUR/6BWtZt61yw+t+RZJ9rHzBnexedFBTvN+21KvlUL1+WeJtOspUPCKm4+1Qr0vNy2w41iOwx8NQ9Cv+AlJDSVQowssuqwjx4SHmlpUu/FwKU0/CKaXRDxqgc+SEsEjIULnwVJ6hbm4mbIitryJMuxkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771386294; c=relaxed/simple;
	bh=yhHu5SOTz/RocH0RjVLi/FfG+wOb7qxKqTJB52ov6H0=;
	h=To:Subject:From:Message-Id:Date; b=S1HHnMABTuxTwGNWKtm0tzYfo1ReSzW8JM5Zl5RAyeMqDxfUYr9T3pDtYu8HSD9caxSmYunRZkyQRzNznJW65rSCaQizluT4kiWJFAI5sTcX6A7QaLboMioBHu1OlKhclbofKrNhpjpz/SixKvWCcV/6SbrkG+/uk1qY0HvZp18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o3JwS4jX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o3JwS4jX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9DDC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771386293;
	bh=yhHu5SOTz/RocH0RjVLi/FfG+wOb7qxKqTJB52ov6H0=;
	h=To:Subject:From:Date:From;
	b=o3JwS4jXQsGqiLdIN0nwi3SeOgOet/eSMNWDe4OShMC78pnw5xVsb0Lvp3trECXKq
	 EDWnp+j7WHPlZQuvarsuOJLip8qU0fUFFa+9e1i+j4ZQAQm/atYPtX+xkHGnit9R+W
	 tdV1O/jqrl04L4g7RQ9UkvjgvH1NfXZdfrICzd4CDtrOb3c5DHH+cNoDXQYtl0U2mA
	 mw0uPeynTTfAgtMkEq5HLRUsD9elKGy1GVbKBzxFKH0H6femv1BDupT/ZmRkev0QVo
	 Pv+JgiU+bwhIFuB46DbjpP16VghYky/25A36QePdkSFpUuOXMjze39j5gawja/E69X
	 zVxjmIBe2oYZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B59E9A04A
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177138629361.10372.1474837859499185194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ea091cd08d77de0eb0dc2769ffef61aa8843c3bcfd20e3775f58ef0d8cc2565
Date: Wed, 18 Feb 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771386293
