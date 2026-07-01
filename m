Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 091962222CC
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 06:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782888514; cv=none; b=oeO5q7WFDBuYN71KikCja0mFW8qMNrGtH3tLqy4JmQCRY6q5KrFbNJawEB3MTj0VhmEQo23cX9o1VZOzPU2SnhfXz47e90upRXV+fwQ2yie4avM5ZYYZwZjTIN24YrMPW80FmEBQs9Cu+wyqkAHy864CYYXoIH0hjEipBtS61fI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782888514; c=relaxed/simple;
	bh=eaAFrLdm/NvqaaBK7Wz8W8P44Xy7vKjgY8bYsR0aknc=;
	h=To:Subject:From:Message-Id:Date; b=kAsKHcW/UP3a4FS46ECfpd/7kMf2Z2TLzU25lFdeCydh6A91GynPXtLWd+zKtL3t2fWHn+V9HNKFof3P+KgWfUvwDFV5PGvptYYhGk0Z4CPIqxQyw+R+c8pLYlpLcjDisdwzOFY4t+E4amsS2s5ta0Qm1aY74pDRStaCc9g2WW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S0ejaxgE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S0ejaxgE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0726C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 06:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782888513;
	bh=eaAFrLdm/NvqaaBK7Wz8W8P44Xy7vKjgY8bYsR0aknc=;
	h=To:Subject:From:Date:From;
	b=S0ejaxgESloQG0LCUn3lHU6Oisps6ZgzCmHjQbX9s+QeGcMdkFLJbOp/4xHwwn7DV
	 wMQjG7SMXoDew0D996AB98fhOL3fGqMOCyAyy1PM9dDDEIJmJrw1nGqjnehFXoxnzx
	 /dqO9ac/Yhzj+ow7oMkDVZt7N67I9h51GyWBN3iub49ZF9UHY/uutCn0mUZ3REO2fr
	 UBPckvhvYvyder80ketCzP0qJhKzdlpYmSzto/499GGrDxyn9rOqOp1uHk5F9R6v9Q
	 Xk3c29gMN5HmzARAty8xZWWbc8/UJjR6c7e05zCfJYWJKL0EeOMSAc7KBxgFNwSeEr
	 m7LTdqQbj9Ktw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA181C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 06:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178288851368.15776.14058023821885702734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a51e49590f91ec3f8749367ed45ab10b8f366c4c77b6352bedc4c981f034133
Date: Wed, 01 Jul 2026 06:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782888513
