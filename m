Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E4AB13AE9
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707242297; cv=none; b=a1ayD4FDz+AogXJazILAmdLHxwYYGiiW1vojVIlaViqhhSW5Lu25GG7Krfxxlbk2o1RhzouPB4Q5nL2rKgkQK4D6PbnYVQKMSIAsGXlDCt3PJiWfCP6V1YcvhJ95Oala/YEyHXnb+oROJOUsEvYXgFFm+JqVank+L/eP25Qogpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707242297; c=relaxed/simple;
	bh=z8sueCOktDTE+ihwQStXb3vP7Pz57EgAejBggXSjU8k=;
	h=To:Subject:From:Message-Id:Date; b=JmKsgn2bGBNng5Qmw9meEhqfI6jxoAfrJCUSe9CtdRNlWI1zyleLmafad9/5cFYsZP/4etIcb/rtAkB/tBjs23aCvzSxo4rTTg1ZCf/1WIIHGRfGiUA02XzoqF3TvVlNHsbLoJ143yLelkRKz7CCMlSLLQU7OfYI3+t5a47TCIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kbVqJOex; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kbVqJOex"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FDFBC433C7
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707242296;
	bh=z8sueCOktDTE+ihwQStXb3vP7Pz57EgAejBggXSjU8k=;
	h=To:Subject:From:Date:From;
	b=kbVqJOexLMhNB3MmKsEI5zAccApHVzXKc1/IjvIc69iMcG9ce8M3PA1UyW1FQt/Lb
	 WDDC8BMoRQEwdo7tsW/e5TnGqVa0TC4ZOHqyc4HGeIzpEaOm0I9dmYDkiYYL+Rffrw
	 Gy7CUd1moRXrVy8wpZ4logv/MlRfDMro7yTVIJvM/SoAeKPtrqQPO0nBw697ilhhJX
	 9YvDqbPZ5UWJMYoxbdOwCSXH9lrWwGQWShYCuPZ2WHHiG2y1FsHjDeJVYa4VleIluY
	 oeK65mFQuCrKEnUcX8QI/DHx2Y/g2IeYEJ2kW0u16SeuimP560Osm1ba3b8vgLxh3h
	 YRzIFIFt0G5GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69A86C48297
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170724229642.7772.5934061874717130982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5dfe000c846423815562ea6fbf64db059bca874d82ac16916410ec898035a54
Date: Tue, 06 Feb 2024 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707242296
