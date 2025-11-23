Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2847836D502
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 06:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763877714; cv=none; b=ELqSqhn25fuqa0HKjpfh/FLsMuNtGWrst/fmZfk7OrG+/ngasNWlLZHVQd9U1vT+B7ZuuYkZHG0QAqG1jsdq0+L2KYHHhufB3AaroQq4OQGxGk0EI5jNXg/JeDGD6HdeFI4XUu8o+0WQtaovPiiWepWJNtYkdPH4kKQXHAXGopU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763877714; c=relaxed/simple;
	bh=F+RCRC8bDpspIvAqnu/1GGryPiOBfmjgh2kb+1M9MZE=;
	h=To:Subject:From:Message-Id:Date; b=GTsXdz+ND/lBxldeCsz18/dtoUVDXZoxY9xWw/hKkGmsuNRh3/eHNg1RsakqtrUxbKP/YKpgwd9JzgpLv2iAfyBp+tfWoVEWKPF6qpabUdiPA/9rXhN8Ya8gloIkceJpmVrtwn/mXXwNUcl0QFzj2U0TdUcv6ueY7TwMSWPRMWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GYHkWGy7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GYHkWGy7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B09A8C116B1
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 06:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763877713;
	bh=F+RCRC8bDpspIvAqnu/1GGryPiOBfmjgh2kb+1M9MZE=;
	h=To:Subject:From:Date:From;
	b=GYHkWGy7yHq1xmzBoBhCG9asyqEyf57NY5lJa/TUalKlY0e1ni70mfOWlIHZOKr9b
	 9+J34/6wKwFih6KOxaemGhnz3g83VoozSVD7/JXvqiCDkFbuTk4leDfKej5hc5qk7V
	 Ul2XR78HaF+712w7Yj+8LOQxHlzqX1FaPcbpK7mKYEAy8QjTkW7kBU2XZiUlBxJp2N
	 yGT+TkRC++bZoRBLs0IK+0G4utLZ4veOmA2dNBJXfZJU8Ow9yiZI3TByfLYnnQsnIZ
	 KaXx6OKtC3EHpm07GNZ1GrywZwo9WBbFZZad7vW+dSbrJLTIgGgBxqDplDrBuHgx7S
	 eLnZhjQy5ks1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99635CFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 06:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176387771358.29117.9903040056390136447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d42add213a7408c3549ffbe07cc3130886a8d55eabd8e5b2f03ae53451a6798
Date: Sun, 23 Nov 2025 06:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763877713
