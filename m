Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A2672877DE
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787343634; cv=none; b=nFBfxgQtKdqebbImBp/5+dcFCOnitkK9dVgYhiD445qO0nYWNdDYtHaw8rRLoyULcKSZ8ePaS758X+6ks9wwbvhWyuzxXJLnhsFxUOjagUzxdXk+MVRv9Mk7JQbeqtqpJ/73FcP4hVE2fqUB76j0jwZOJMoWBvLvf6jdsss2//c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787343634; c=relaxed/simple;
	bh=fnm1mNTgFdRSDxFctX93NFp21nEKZhWEqHBeYr5YcmA=;
	h=To:Subject:From:Message-Id:Date; b=rZahQB23aiPj4ORjrBLOKu/dc+DcocoTqFQB//R1sb7LLufgwv9bKidx5S8A4oa4vQD084BAUk/rB3H3YMZMiwGjx8j71rO1RFOWkFW9nMrqJgA4LAI1glaBZeoTxxqlOKu1isD2OwUXgnd0wgNBzmOAtU0Jv7nw+G3SZyhat3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9cv1etL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9cv1etL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6159C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787343633;
	bh=fnm1mNTgFdRSDxFctX93NFp21nEKZhWEqHBeYr5YcmA=;
	h=To:Subject:From:Date:From;
	b=e9cv1etL4tTH9h5yt2R49ki5hL1F8aak82zG5QS6yWIz8IA+shFcBhyOI/sI2fQ3L
	 6JUklm4AWpjuiDavfDe7WikuzG2/0kbwmlHUNzL4m7OsH+/uLp9xHXdcmFTQrstzoc
	 93EH4rlQRANTn+fJIDTGIhQyhvR84lLOqyCjkIvNxrQUvHye/QCjMHj9vuIMuW60H7
	 9QnHJYfyfHrfmMNZe4DxHPN4W1y0fIlDGsWXEZZQYmE95g5ljm6sqM+GweXQaBzW4w
	 ZMotil0Qat66S7WEKTAgi6Ala45CEB55hxywWnv6dUMZ9HuZeYZt51zwU4sX1TO6AE
	 9YMcCBZrqmgZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09CCC5DF8C
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178734363370.26934.2839212564797568718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5dae0ec150508e1d71de3ea04baf957a624be8197734475f06a96ef47ae2b74
Date: Fri, 21 Aug 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787343633
