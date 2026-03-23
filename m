Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0528B3644C7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774296294; cv=none; b=aIFeGuw62pgU5fMfK0p0alWNkYRfqmKLksuy/HUTdVBc8qHeen0cWF3jec/ler9rGayELEcg1Dgoz9HwvCnbAqYvrk9+1OkfXx2acKRIExvYJOK3EtKFV4SttvhElh7aAThaVjHNZh1TOeOnUK5X1BlVZH9XzDn86nRezwJfCL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774296294; c=relaxed/simple;
	bh=FW0/b47Wg3HuL2bY67LiSBvPlgQOEK5erDG9iilrxPA=;
	h=To:Subject:From:Message-Id:Date; b=Hz+PjX9iiHD9cufZ1a5k3lTv2Pru8aqh35oDw2YvXDeOwtzEwzheN7vFnmc6ZXASPhKqeSIhtwxkaIfaA3xiZ/bATaH/lpZJcIlHrztZeMr1uAzJ6N3HyyPN78QusXQagKtOB3n3xlByNpksw5yghGGvdgqOL9P7PKpcW7j8C0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qv9ocrqE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qv9ocrqE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DC1C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774296293;
	bh=FW0/b47Wg3HuL2bY67LiSBvPlgQOEK5erDG9iilrxPA=;
	h=To:Subject:From:Date:From;
	b=qv9ocrqEW+2b4Qiw4dLmHTiCGCvjnEvwKyxOiEpNYJYg840Myjv4+Co28aknXyhmF
	 JyTFpAgHORGEPp0XrE0diSBs2KFCxSfAaKpbB7scCkJRkDR2cxj0u09UQxrCmGQe5q
	 ldytcXd9MSGdTOS/yyq8u/MHw84xoRhUJZGiqp5VBr3xAXOsgoNDWNTaZfbiukGlyu
	 WsNf9RFm+rN6zDWWbhIq56+dXyU6dbORJh0ewie3Q5MZTGujVkPbrmeoukqyZyUclh
	 5TNw9zE0LK945BPGHrMWxpXcQxsUUZbdfhaRIy9JpdudGLY0yUP5WC+CHIOxqWuBqD
	 BGYEpRNnAAtsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926ABF483ED
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177429629359.17570.5257149003286853652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01b551224407d7ee0e73f5f545fe12ecb1aa1cb41bb96bae160d8de2fdba5437
Date: Mon, 23 Mar 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774296293
