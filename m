Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382A615747E
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 09:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718703563; cv=none; b=Nma6L2lF3uAyQFxCOkjSnQ/NnZgFPA11AXwKl/HOgGbSexSQRMTy/HnWlKIQ0pKYPwJkG46idhPyJByeku1Jhq2TxocF/fRohk7CgrlYHibXnYMI6waMAkt7uEjTJsccAyIt/Oo8Ff3QdEY9lC0i9WJ1Crfsqr1V2RNK8s00Ca4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718703563; c=relaxed/simple;
	bh=mrDk7QkpeRhZmZPLRHJ2VLhmeDQssQeZBGvWop3PbjU=;
	h=To:Subject:From:Message-Id:Date; b=QyZkzCPORLJs3E34FDWaAeeEs+TLaR3lF/YPZv8ez8KQQeVtrWvbK/iz6QAQGzEmVbfwrVv1faLLcBQ/gCbqO+bHImzRsZE1jXGL6FE8Ow8nSm5B7StIqLqw4Lwme7vDlEbi9SECQGpBrj/HzvzWpE5VZ+R6hfGBSoBYnjd92qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LB+5hLP+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LB+5hLP+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7AB4C4AF1A
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 09:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718703562;
	bh=mrDk7QkpeRhZmZPLRHJ2VLhmeDQssQeZBGvWop3PbjU=;
	h=To:Subject:From:Date:From;
	b=LB+5hLP+u5JZNutNE+Kb4ZVp7HAh9utqoOir2XHneSCAVjps8Bkc5bkGOqzfWPfPb
	 X4w/kyp1wmpJNq9UAhreEAkBGco/4Xv7P5+ED1KemIJDVnAOvVs82YJC1ZrM5W775i
	 +xVkHWdPJ47289lkJ6i21a6/f5u3D83PN5th7KbfaqxYgBil8ZRHYEmmGNbielVilx
	 o00+VhRZDrG2epaaP7S8vN9R9MCW+lKd8xGjjpctjTXNS0d8SesjgIo+C/tW+EgCP4
	 P8XKKkX8V3R35pElR1mnA3iNajh99ZZCDXcWKY/ZlBGp62WKHQj98AEEebprmX0Aka
	 31SRrGUH2pMtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0767C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 09:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171870356277.30421.6556028565866163421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fc0120b88c2f610944af511f1991d34c7a6e218bf511cf22664a1902bccd91d
Date: Tue, 18 Jun 2024 09:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718703562
