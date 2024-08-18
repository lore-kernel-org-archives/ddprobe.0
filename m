Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488B977F10
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723989954; cv=none; b=CwZ2LgoE6wUTBL4RgCeRZVfukXI4zgoI7/Hpd2TXjSBt9C8egNCT7Vx4F/sNen7Lr5+J9LRl4x/i67j36VvV+wvE3lEyxkPpoJMdDIYJDsQYqd1qCa2l3rZOT3VtuDJW0q1ECfbYAnqcrK1uN4Tb+TdAsr+8iJkNxEr03C7bLq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723989954; c=relaxed/simple;
	bh=X0+4Z5iwq7rTxIEzGmykzKhlensQcRjyaaxrhvW0D+I=;
	h=To:Subject:From:Message-Id:Date; b=tArPcdxJbe2rL1etYHGKGmgrIXWYXeAMm4nbh1ZlpYw5+KWUvFfdQ4jact6/My8XvBf4JMZ+HGSgFT8d0XIwbeMQrKYHF8gfZff/cIamypSWCrc2SFurhLIahsEWuvS/Jguaa36vsXp9Ug9eghjAlm4sS87BiqPVAOxO/gQyuDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AG5JCfl5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AG5JCfl5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B80F1C32786
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723989953;
	bh=X0+4Z5iwq7rTxIEzGmykzKhlensQcRjyaaxrhvW0D+I=;
	h=To:Subject:From:Date:From;
	b=AG5JCfl5Iq6exmoe7+tb1gyUWVtjxIk0zl038YDIVjt0FRKRz/x7b1dOeX/QOCqH8
	 cCMDXQipQ59jwIgSVwNWmFB1VJE5dearFwQbJlL48O41R8ERNyiqi5ZDzuiInW3fOn
	 KwhM0KAJ8CybjZniYQvQkSAWRVflit5rywaLrOvdiWLOAc4DbfGkHoO6OvokxgKGEc
	 l9vdT9uR+uVMgXF2gb0GcMrX0Ql3RE/i9fcD7AJ9Ao0P+saNUAOLF+D5IenqMJHyWe
	 jv9MGgA7XSpcZkETqCiwNlJhEX2DHXVaErnTnUL2nhmCVu8AhS9kub/kko80caFfcY
	 q2kWenkNNgMgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97722C52D7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172398995359.5514.7679412251682090641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 767c6165daaf648fd7775ec1480769fa247d48dad0e2b85a39982a57fdffcee9
Date: Sun, 18 Aug 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723989953
