Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D22C1F9EAC
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733132154; cv=none; b=ZkLJ/i+PhRfGjf4hkKQ60wK20jilDQGJSZxmzugYptOvbuG0lBeBPYPHvsSqX//6QLOAMSPGOdaFJ//aQC6oRO3hSu/HLbIstInliSGmDymBvXE5+d64GuvbTC+v/a7qth3T2VXBfW3GHVdn0PcLlU0Uyy3lbuIkY+UxMNI3rj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733132154; c=relaxed/simple;
	bh=T84Y1lKeZI+GNyI/jd7vHKyxFEuYJJC38nf8IZggeVE=;
	h=To:Subject:From:Message-Id:Date; b=KugTujtCHL1XoJ0q/q7+n3NBjLtrGy6SljJQxhcrLK5q0+Vvfs5KWJ8WXk60YB9E3XTk77oNgcHsZCG7xEl7kMbZ7mrqI6dbb6GO8DWr4cZbevnJKGnsRELBrp2kUs1OHUTi9T1lxhxge2iSKyL7onxk63NmnDZtUwWU3Gl+jW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JE0z6BeG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JE0z6BeG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF87AC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733132153;
	bh=T84Y1lKeZI+GNyI/jd7vHKyxFEuYJJC38nf8IZggeVE=;
	h=To:Subject:From:Date:From;
	b=JE0z6BeGdzsoFJULpuGXTxv59UCBMavBwMe74eHaaLEvq90QgRHxVz/c6eSC5Z9Ba
	 KQeuKSo8AyIQqnm7Di0Kfo06g2KPwK9enNDBaxcZJuKk9HjCrY9zWu2TO27IcU8rNx
	 UEdyr4WQsUojMccPFKkXslXM8Lcktee5qOjZTT9BhRhzHJUtq1HWh64MjxUAEBhF1T
	 J2zyvM21DnRhfC+mjdRFcrHrX293o5MMq+tfAwynz6J4OXn3jwChKZcUqunmYWCF/u
	 xFGuZGBxwd6WT8OUZabUmw/f7R/1gc131L1W7OiDO0FVvHnkQzo9wPR8rYHCRKKGbI
	 fI/hEFUqWtJxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B373D10DCF
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173313215361.13712.1453088406786169574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddf7380b4d9b5f61bf0ef19ff1128f371b1f65b74c23e268b8b6eadb5871de94
Date: Mon, 02 Dec 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733132153
