Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3784965C
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 08:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717576583; cv=none; b=h23AgtjMsdlrlaTaYmAOYbsf0pO2oMn9I3hcW3/l1nRoX2/+bmA3zpvY6KCsJCe7aGO4qtkwWxOgslYriDvpgGemk8JHeSWaiaTetBKKEgtNh/gKjPEeUuoZHKkTV9Qmi4NZ/vI0b8a0WqjLrRSYCQKRJqgLZfh5yGsv3P9+3eE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717576583; c=relaxed/simple;
	bh=BN9Rd26vdtYtCko+J5LJXdYUG2mYqvJVxnsr6JuJHo4=;
	h=To:Subject:From:Message-Id:Date; b=M8HGCAz93GWBhsVvke4WXhHTg/G/nhaZG0/Fj4dgEEdhnFt7QhUEcs/P+FOVZVDeb34vc9sE3p/APsSHzUMyofRSJHHrZSTvabOCFRew0WCY9WAb3gpyq89Vb5FRthftNEVKKWQPu7nTg2oAYAnuQZJeJ9lVv7nci7GCHaOM27I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ge+0uCV1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ge+0uCV1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC26C4AF07
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 08:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717576582;
	bh=BN9Rd26vdtYtCko+J5LJXdYUG2mYqvJVxnsr6JuJHo4=;
	h=To:Subject:From:Date:From;
	b=ge+0uCV1AAhuCANo/VuMYSDAwMBRZaG1ED+KzYe0waKwBYZzDJSe0hQ2XgZHT+1TU
	 RLWdXrNeAo/uWyB3oQyATsOB5/scAZ3RzgI+HtgY3vSttFM7fGsl6oevUKFog37QPO
	 u6cixaALVxOGL8DDKPKCPbcQmHo/oAtf//fQgAvpqz99JPy+9BM6S44hdJKvU7fHFW
	 +v0+mwJnzZTc+aScgnWRpeLaceXn76daqV8kPvl46XMy3m2Ycj/asHIhPP4DwUVqr5
	 PabrwLQJheVZofu4EjE0lNRwxULmnMlDU9Kd7xX1rvJUO1h1hmHQdh0KAQ1/6kPlq9
	 yPuq8iWrP+JrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC895C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 08:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171757658276.13168.13073332730054034905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c7ffd348111fb712b7faedd651a193f9097b5cfc40ef08506e1db65ba2331c6
Date: Wed, 05 Jun 2024 08:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717576582
