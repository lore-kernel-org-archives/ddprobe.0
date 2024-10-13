Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06ED51DFFC
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728833754; cv=none; b=Xah2VzxSixzR2IhjUrkA/OVKTHwuc8ZLFKxhMSRO5hSQukMHVaACJ3r2Zr3ZKZm7fWz+9qzCzzdJYaXCyHyVRHLAgxqV7niyTfDqJAFlkRPz4TeqZEF3ktBqAxJqJIx/8mnlCEB2gL/q3f2g58xMRNGBINnYJGO4ea2La12AWUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728833754; c=relaxed/simple;
	bh=CT9ET9MCtaNY12iNc7CcfQ4QLB5qcW6rPwka+byobaM=;
	h=To:Subject:From:Message-Id:Date; b=s6BszWU6Fl0lO7dkLtxBFVNIdagNbh9D0hJ7rM+XbUxY25ZFlC7yXiYARirnyOU/JoM78XTUV2ZMZ5fBlyJX7W9Nytp0Tx5TxZ9t9zQTbSqDkiW7ATNSno0XneN0K3XF5YMyQfI7sqUAcKx58tN8rAfqF6XapQTncGvffgz7mPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qB9nO3gi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qB9nO3gi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BC8C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728833753;
	bh=CT9ET9MCtaNY12iNc7CcfQ4QLB5qcW6rPwka+byobaM=;
	h=To:Subject:From:Date:From;
	b=qB9nO3gi+tXRiRuz68rHCNuh2enR/AL5DviXsCIGxeE/Odf0ho0RVc66W8qHrkABk
	 1KpQJzQTPNbAalxJ6y8nw0UGiyb19iWbDL+DVpgJwkcxzWjJUWvArpczNRUUmXZWUI
	 FU0+r2Qw1QpMa8xH+GuR4AiaDThK3d04L/RLKeWSJV29P1pSQnVXzCXEO76qtQWPqK
	 vBtwNuIHFCP9YQEOeV4g8dNuBTf+g+HODl5G3+5PCk7fLKmFlpJq2u0jHekCcwmyg2
	 JRVq8y2bk7sDaf+rAiPFeI/tIgRxe8xzXKWw/kXdN1jI3c6w9oOXlFpyLXo7/UZG4b
	 oaVVwcOyrDVkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BF3CF2579
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172883375358.8943.12361171555190056576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40eb0d9dc90eb6fe994e670516bcba04575ac9786b49fdc6009f397ab60548cb
Date: Sun, 13 Oct 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728833753
