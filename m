Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED43381B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721738154; cv=none; b=eEGnjj9T+oxEgpiQS1+T5uFn8bAtkvQnSlW4P/SJGsE/vNWPwpmQQVmT/+14a/lw0CZe4bn6+a0476p4qXLVNxI8m/fscxhYxHNvUzcL1C1tnFzqKh/NSOVTBNohNQypTzZWeJAT7w3j6r/XNwgNGvmQYFc25SQCCwDMfxP//j4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721738154; c=relaxed/simple;
	bh=cq90Kms7vZk+fccVV7ZZi76jDk7dYwb0jZwGzvNRjmg=;
	h=To:Subject:From:Message-Id:Date; b=hVCoXjxpX4l1jrOr9hXfJeR+NcjQC8HjhxHXr59JXtJdpfrI9oDwwPkT0bYxftJZxK6dBla5bZDz6P+fJKrSFn8KDs2124N9q8NaOCzEDYcAN/A2jEjPehG9KB5UxuBOCZ7zlMyyAufYcp29Jj6CYRQ6vJ0oRPuX+CqMoQomG9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ErV0MvvX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ErV0MvvX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3987C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721738153;
	bh=cq90Kms7vZk+fccVV7ZZi76jDk7dYwb0jZwGzvNRjmg=;
	h=To:Subject:From:Date:From;
	b=ErV0MvvXP6t4erPP9BC6epR24NXVOAU5rF/U+H/U2cfR+pB4pzH6Wjrcl2aSrVzgy
	 DNlQPNjjiKuMVX1xhFaZZjaE0PbgrqJIZHL6w8XXOXFWih33DoftY09wDn9WXzOKh9
	 dUz9KIEYzJWWhL+zJnU6ZX3jOoJpmjdQnBk40JDmf2H2UsUpV1TcudWQz7/EofKM3c
	 KNVgS63Kg1RQVl7eUGJPxgodiNGniwYYjCB8/UqF3IYfoquvrbWSU9kA0GNo2mG0Qw
	 ZQiQ3hRQWtZWLL3mW6/T4hB8C7B6zHVTH1hknox4h0faCah+fpTw9UldcOnifl9xj6
	 Kl8eUqj+lQ9rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902E3C3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172173815358.27480.7938803937301473483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 012df2aa7667b0ba0f7cebf7fecd889dfa279a13fff3047e8f3172061a9d4912
Date: Tue, 23 Jul 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721738153
