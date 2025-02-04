Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A87D18991E
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738658754; cv=none; b=j4vdJ6jPJ6pI7peyHTJn4oy/UaWjEhLTrcdvGq8DBnrc47dd3RVNowiRQoxYnAhTCKuwzHW2Gq+VMsJFuXh0zymfO9i6AJBMh9g6mwSLWHFBNV5qUEpX6AR39TuvWy2AatI26+cjd6z3aXpLHkkW/pYSqUkOIPfjI1nBvP+mVI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738658754; c=relaxed/simple;
	bh=iM2Rht50qGuyDsijN7bPYElnocklypa7IzWcDl0BAKQ=;
	h=To:Subject:From:Message-Id:Date; b=iRLN86wB9/hxDIma2+8byPJ/blYpjhUt6ez2wBpaf3wDd8Nc+wkJvxr7Wekg8022C3JJklkn4AhMI2Lbxxcn3zULK6cjiDawJ8f5Ao41+A/bFlz76YkhWPLyzo3WRmNVL5JBnV+wYi0MqVah8N5Y332dHFR25udVMId8BCcLXfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TYFqqEpu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TYFqqEpu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDBDC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738658753;
	bh=iM2Rht50qGuyDsijN7bPYElnocklypa7IzWcDl0BAKQ=;
	h=To:Subject:From:Date:From;
	b=TYFqqEpumQi5DY2cEo1BQqxXYW5u2QQScGJ5WvAZ6wWLZ8UrEX0xgYisUwtm4eYSo
	 4i2/7Hw0LkviLJLIPxq+XOCfveqE/Q7pFcmy1Ko1bHPTafc0tah/UFxzSm4h2gBwzk
	 uUydmS/MBnNCZcvq6KKitL7qnZz82ZER5KfiyNdxLjBcaoluDINzCBNe41WIjKhi5L
	 UxtvUkzeynP3i68wr2/STJ5isw//84VjHHnFnN7RSx/aS3Qx+IlC72v5ShjwbWK4qC
	 BVNcgmNqtBwjGBoIl/KtuPRWafqrsnVTFztGDH/YKo2MjgfGCPMwKow/tLCOem8i+N
	 RJk8pAZ87HIxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964E0C02193
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173865875359.12350.17079854321088672678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db78a3743184c872f5d7c2d14c85592b634e0ec558a16005efaa0216490e567f
Date: Tue, 04 Feb 2025 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738658753
