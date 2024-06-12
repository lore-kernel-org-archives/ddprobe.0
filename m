Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E1371DFF0
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 22:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718231303; cv=none; b=paFdaXKGkoR81dqdJ98gFsmWqGhPMuoa8kubQ/3UWjXDqlUuGTzRe69+0C2RIjnjN3IrPZV5b43BdEQiplBocnSZOOjFcLA1lqfdPLMBMk6EtVkjEpml6mWjRVY2Di4KxqpaLYEXIk9kOfzKC95+cTx75nJVocPy4RzZ53/qrME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718231303; c=relaxed/simple;
	bh=/9S5HnpA9q6PwfVZAwT7NEoXm/kL2LaHpVTbrpB4K0I=;
	h=To:Subject:From:Message-Id:Date; b=kEJbBSlaDf88nSLRZlTzRVTu6wwiy23CgR3q3gVzoJFUSOM+f7N58nPjhb3iyv583lcSCcA0fBIwFQ+bEWNzTA+g3oQj/gWeADS0hg9/MGD7RjaDzEAuZytYuhgrSyZil9oK4nx28AwiJsXabaF3RA/my0sU7R8G0PgwATydbJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCy1EoUC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCy1EoUC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F421BC116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 22:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718231303;
	bh=/9S5HnpA9q6PwfVZAwT7NEoXm/kL2LaHpVTbrpB4K0I=;
	h=To:Subject:From:Date:From;
	b=aCy1EoUCgjB1QEGk/hDHULeLR4GQ8lMEbfOpJSlD+/ysYecA7HorAXUXJFB7uHche
	 I40yAo8Y3Rl9QXEPfFWIKEJP4xfSx4uPEDXbY7KI0nPfxWLF/PwDxxwEpbmzAYM54f
	 qYvwsjs5M/+E4u/Nv7Tg5IiwLowan3q69aoyYuNB4h9P1tva6wc7GpXr6MBGfOkxF1
	 bV2RRu6Xc0Kb+nECk5QYiaffwxfgrdjO4vhGxs1v2w2KX8uTHvW86LUfnvn+czTK7r
	 pMbwrmQ8u/Bo1VQNgObMHRZB3vS6324M6f1982MOATPre+9ujxVaOGmajtIDo8ZyBY
	 DvdUXw9LPZFJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9375C27C77
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 22:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171823130286.32358.11065932417948660354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69b671cebceca2f4d8cd699797fe90380f61eaffa59121fa89923bf16d46bbd3
Date: Wed, 12 Jun 2024 22:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718231302
