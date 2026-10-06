Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4D419B3CB
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791277834; cv=none; b=ECfjH8PLleaCaisxfdwu2PAxyfJVgVaXPKzZ10BORJ+ydEiXmwuRw1xR5j22G9Uk8h52gR1gULQmZCBIeXC67VDgyiDH9hmU23inWpqtL8/UH/F+53JKUxznopbtO5rqP5TzcucewDO2OT+r0uLovV0EdqCz+FpZPR1h3qunO/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791277834; c=relaxed/simple;
	bh=xphpcgjtxrC8KxO9Fq0eCZ7HaSMWP1QV+otPMwklZZQ=;
	h=To:Subject:From:Message-Id:Date; b=oMiXAwk0YHhNgXDXk+uQ77fBVU3jyN3FqLnVY4EalrquEyqNFn6k8fPhR2XCMUE7Q0NjE2v2AMOgFkVcGEjl7W6uPc8XFq2p9b05xA27b8bsZeXU6f3oW/ckRYZfNWnicCD9z47yxuohlpCt2kzo55hOZN6dYjJUQMU+BF6mM7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JbQQeBX0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JbQQeBX0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA8F0C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791277833;
	bh=xphpcgjtxrC8KxO9Fq0eCZ7HaSMWP1QV+otPMwklZZQ=;
	h=To:Subject:From:Date:From;
	b=JbQQeBX0qXPM1HKYou9Wu+1s0cyacHmcxyuSC39zkPYrd1ytQ/w9MDESYtggG1lCz
	 IeLFmMcbdjaGRxhe23nCKaMbA2nkBNjkvAb0kk+2wFWJ07BxoSR5EiXnHdOOx7iO7J
	 FJBcmqTCwGNqNUdZvSSAfj02PvMZNbrrM/b4ctkqg0MMfReNCrodhweZ6KpqFCoFbB
	 AC8tAcEuMHxaOYU2SEi5NN23sWv0UK9iMNLtgIfFyQI2/p/jtoKaFm+Scnh7N2HBqg
	 fFA0WO0FAIVlFTTnXIUf7RxZ2eO0/J7woO6hX1ghvMgyLERhNv7WBARHMWAEeD8Nrz
	 2iZl4o854KWxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F57CA5FF0
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179127783370.32479.17502946130749835199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a9eb6ae51b1c4d94bce47ac6ba84ff9c33b5f0ad16e5a7dd25ded31869a42cf
Date: Tue, 06 Oct 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791277833
