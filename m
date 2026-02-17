Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BAF1F0E34
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771309494; cv=none; b=gY6CMtpYQrRHLvTGHPx+uPVC4b/Ow/5iN2fwkUxebJVIPdPkkfZU+riC1W78H/7GBF0j6fOaSmA7nAbAOOVU9ZRT+DQS3Q8B5Nn3kTT0zuIxSI0aYm14LigaVFkvFo9MA8uPwEddRzYR62xcHruvqG5pse1R+1GYe9/9tb169Ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771309494; c=relaxed/simple;
	bh=C0n8yhcGjPIoGZ6/8fZVhPdlQXvZW2njEnB0vWUY714=;
	h=To:Subject:From:Message-Id:Date; b=EBhIU6+xPmepgfPCouuKgAqq51ZTjfeFOMd4+NjEr8UWNqP667SvGI0Qv99PfR/8a9nNxztVGprdMWnOfHkuDfvHhLcL2pYnlnbN95jBmp+YPxzVjXIk3aMF2lIhOxzdSjaCSSTzUrbclYL5uDNMtioG1+hYQj9kx2Dytx+C7qE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vqz1aWvx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vqz1aWvx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9BBC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771309493;
	bh=C0n8yhcGjPIoGZ6/8fZVhPdlQXvZW2njEnB0vWUY714=;
	h=To:Subject:From:Date:From;
	b=Vqz1aWvxfPuiyqL0inVcfczu0SJzYQzj0EPX+v/fE5CkKseF9ZpDk6M6RlXGug12p
	 9o7ZKx7jn5jjMzaGy1sLquDtT1yBxiT0an0p2ogajkx1wVj8ta+F9RRhRvBUvFTBbF
	 gdE0UP/3mG8U29EmYoE6nU2yB1/H9KdXO8Tp1JK0X85FiYDMy22TSO/bAOOVIbsfNE
	 +DnBjft9zatuHiY93h7qnkKQZ7+DA89u8OPzC+zbuZatjOXXKYAaC+HIDqK031C8MT
	 t6aVkLULRZ7htpy6UXOlZ1NyBvtnRrX7Mjrm5suw6q80NySYPjS4IQ5dGk4mer1Idq
	 a6fV85OYnybcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D32E83849
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177130949359.26957.12406774413745366332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cfe599c435430d64925ccd7c2609526f8b8f368a670dd789409f8bc8aa09b28
Date: Tue, 17 Feb 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771309493
