Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50442305664
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 07:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788160234; cv=none; b=KNSHhSRc7ZdgQhLn1AU/hEuz7F4ejx9FX7OXuuXeEgjTE2eFZiwB83t/n7+n6BJ/US2OSA5p1Hhd7fDxcLfba+I15GAVOFf5gB/XL1Z+dj/FPuYE2bCTUiJLzveIAAqOp/6xccAvj2IKZCL15DaNrK9GHr7UOGtjLodvKa8CP/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788160234; c=relaxed/simple;
	bh=kzcSewexg2gZCtgBp2Uh92ehFsFoMCN4nxe0nU0KWyc=;
	h=To:Subject:From:Message-Id:Date; b=Z6ASsLgGWPa3KAtPH+57JsTuaRnOj2yq7nFBxFs77RvQISXa3dN89ytqvuJqg1mDfkT5CrLxGKlLjFDlZhN0km7UpEhH38PuINpd9coDsDMHbkJeMbq7xKQYuQte6DQlWO/4KzRPjglepNBJyQYuwzQZf1oZUXJ8vowG3yGkMQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aagplyEC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aagplyEC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C547FC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788160233;
	bh=kzcSewexg2gZCtgBp2Uh92ehFsFoMCN4nxe0nU0KWyc=;
	h=To:Subject:From:Date:From;
	b=aagplyECvPXtXYndqOivolrN0OtY6Vb+AV3QNwGX370K6PAU/QM0TDflKYdHnztc8
	 lObh9niwfuJhAZ89w3kH2gNZZRsFXFhlF3DsBHSH7HWuUdwQyQQTf8YGk5eKliSvx/
	 uAAMTELQKhg9mZ5v6OkVMLn3jL/xnx9k/NV1b5wUXkjXH43lLUvp+4Dqz0Ofau8FdD
	 stClXUbqr4SWy4u+IF2Eeti/ceKiuNGyRZu2MD/aySS6g4NCypmWChKBkAT3LitNDM
	 poqSJzRbAXvuCampdWZoCnoKp8s/ZE4Cq3jvyLSs5vwtAD7KdPqSNQHw6gEjvQcGub
	 yCw+Z4uhFqAEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8EFC61DE2
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178816023368.25886.3138515011326910619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ece57dc309bab3667d67ebd5d2e0bc7c7fe5e2edcd4d9039e03de9b1db434f28
Date: Mon, 31 Aug 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788160233
