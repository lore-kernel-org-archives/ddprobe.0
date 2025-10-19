Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9D28615A
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760865594; cv=none; b=EgjoZmqgoR+0ibd24mr1kfKiYh3oECpIGFwrKxpge48ZftX7vo+L7Kzf1ryG0uTcn5VxyT7GO7bMpO/17pfYM4PZ3S5G2IrW+i8EJNXnwY3pb+rmRh9Sw0EH8f3Xz1NMj1jwovDYpoX7YFEJkF82MEkzFL2kqDmN1qDx26Dgxwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760865594; c=relaxed/simple;
	bh=wU+N3taxw9xuJOAcwl7TngZy3qHBvzE5dhaYIRs4KG4=;
	h=To:Subject:From:Message-Id:Date; b=N23l4fU72ZY0BlJ3iyU/H06Ezc0qQYGtXnk+xkB89qTZ49c9P0IhkZHSUSir9o+hOuAWLv1ZiWj+H9oV1a5x4K39OFdoVfSiPvbtEqSDnbXvUHjEVOTWlevYmqBXjdbfJim+e6+uXONCQcIa7X+1fHCi8kHQq0Qfjq+mXNO4a7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ve9vIwLo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ve9vIwLo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CE4C116B1
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760865593;
	bh=wU+N3taxw9xuJOAcwl7TngZy3qHBvzE5dhaYIRs4KG4=;
	h=To:Subject:From:Date:From;
	b=Ve9vIwLomkyb9/WH4whSc9DkcsAv0W3kl9iZOm8ZTc6p++dhMSMpsmkaleB6Z0FVY
	 qoQSIjGaNi7wCGcnTtqm3iyqUfdvE8K8ery7lRdY3b/LGpo9LyE6dcYNHpQ+7iiqw8
	 xa1mhjHEXCTpQyDxMFtwuNbwUyFm00Qu2WGtjATwLIBoBQp9Xezf9k9jtioZeKS0Xk
	 oAsAmlpEzBEDzT+qhrqmUcv9kzK0qxKYah4Z0XxuVi6s4Oy8a1GAkqigcx+iyj4RhG
	 bqnk2gwA7RXxadu8BE6c+3ccqUT1gkfCpiUawE8G/MQf8B9wk2j0bdEEHtBTnMUpTp
	 Pp1qiv0p7xw9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970EBCCD183
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176086559358.28591.6903104611105852255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d702c5cec36064664f1c48fd7606023ddebe0efb4b0ad7f78be1c2fefdbc130
Date: Sun, 19 Oct 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760865593
