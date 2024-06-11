Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87211282E2
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 04:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718081303; cv=none; b=lfaikKthYhzvGLqplwuyR/Bs0depCkYnkD3gLL/92RppV4M4w7+haO7cbATlCaOvPQf3678KHbWuhYKjK6daNXcGhOW39Ya4MbnZZpKOh3GMQ7ijn7086FGZ5VKHOWINHO0eIkjkbl/15zQ6M3irFmRIACOgGcDfYCxhu4cSrzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718081303; c=relaxed/simple;
	bh=3vpgvLGCD3sdQS1F3UuRDm6HSF0dsSQkSlDPL4COTuo=;
	h=To:Subject:From:Message-Id:Date; b=A9oSG2dDFnha/cPDwh/9306rM7lLqIcyqUlO/bpdLdqyq62PHM/j5/KIKaeinjNd65NMglrcKfrdZjvY2YlhKAa2KY/a4hVNtjDe+qxJECJhOkR0nQHCCoCE5nqAy01pzpAqNU1Yt2I16cUwLIKPUlTBIeGqisfmAS4bYUbpctc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ws+md1Xq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ws+md1Xq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F30CEC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 04:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718081303;
	bh=3vpgvLGCD3sdQS1F3UuRDm6HSF0dsSQkSlDPL4COTuo=;
	h=To:Subject:From:Date:From;
	b=Ws+md1XqG/bdsGW9Kg6NXOPdkUz0tG/iM6Mr7hhcs41DyPi+uiFzvbDeC/LjWTPe/
	 belt8hEmJQxny+PTbIbkK1IeCAf9dIiBqot7QtTsrbIIscRlouzyuw/JjazaubOFFw
	 pe/L8Q93Gy+ktT1qTq4v73opw0qD7u/BDh9P7Z0IRB2ZcWdBxAvM+Rq7d2kFoA+zBQ
	 FWKO075St8u1NcNDY790Nq7sDh2uf3LI15hYhy5JMrfsXwpjwoxUZMcqugnBhqix/z
	 A2Ws5aOg5lDF3igGjdFQV7oINKdRFVZjZtIFtd8Wzc49+jz9UQBwhGFWOEB1HxOwsd
	 qvitDBarMvpxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4881C25B76
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 04:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171808130283.8800.12382606739612215640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0859736ddac4a9a850a280b5cac0ce0a5865dc60ab6675de6388321261d0789a
Date: Tue, 11 Jun 2024 04:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718081302
