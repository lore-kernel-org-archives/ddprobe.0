Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F105288AD
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 23:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777160254; cv=none; b=TYbbp87PFKnSCisAby21PXnUA6Ly+IvJuyV5ibzYpI0KcKOzXd7KvsbmBle5skNnGMgwS3gEzA3559aK0AsW6NMQt0icpd4z0lRcnF4C2owitT14pdqApYkmplBzOLXZIZb9J0lhNIkLSYBkd33tkWfLWkpcncWlacjzdNG9HgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777160254; c=relaxed/simple;
	bh=milNcvXhL8CdU7qbyV2u/wrvf++Rq7Ywk4R5eHknCkc=;
	h=To:Subject:From:Message-Id:Date; b=e4xmwkzbPNQYQXlT7FsYtkTzyJbHzJeubP9enpSS9Wo3zFMa5BfGj+3189gv9q/Z0V7tw8GETuY/QlDDnr2bj1/7Qz89/15Das9JADsHUuoQKmo8SwOZH7dMXMzLQ7hnS1iOfD3957vyuVb8GI4w7guEa6BDlEI/jzCRxesXWDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=By5+Tq0R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="By5+Tq0R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C410AC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 23:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777160253;
	bh=milNcvXhL8CdU7qbyV2u/wrvf++Rq7Ywk4R5eHknCkc=;
	h=To:Subject:From:Date:From;
	b=By5+Tq0RoCAeYDtzpS0vI96bzRkPC3M1iI67S+74h5oxfxByjnaic9TTqiNJ0p172
	 BmXsGjDslt3LRWs1cD9MRmuf7NNPBnG/p4mS7/h+tbjH2m6uTjPmwc5LxwZ3QLl/Bs
	 mFzEaZVPfQ5EGDCxhqf3Z48/aMFsvZs+fd/+nrt9XpLW78/qcSS+keQyGOBg0UovrW
	 JXcgx2vTJ857u8BqIwg3Jsa+KYojAJylcZgAVq3VbpD1UKaCIU6TpJMdLQrSPeNvZ5
	 GeJyfbackEwjdYVXIqfw2E/fvAbhdX3mKw5OZkWeSgeXsHnOfIa9i+7qTMVNZCjCKc
	 e7+skmCJN5pmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC487FF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 23:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177716025368.1166.8407964098374580004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f413c61f0c12fec2f9bd8f92f07e6500c92eb03c8d817971cfe0706355c5a676
Date: Sat, 25 Apr 2026 23:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777160253
