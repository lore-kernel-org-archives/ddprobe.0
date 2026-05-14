Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF3721A7264
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 00:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778718633; cv=none; b=qr26Cr5QiSEkFfe8Z0U69cYnvdoW2Ni7jeDA1z7gq/FIYG5qb9JOcCpXt8ZPn76/IWC8OQvT8WnbBnwCExrmaArCbcbocDcqJturp0OjLjqxVwFEX8PI3TIP5+ycbk6ELl4MIohC/zXvkL23N1YeF52SRZrIlmmVv/k115Xb28s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778718633; c=relaxed/simple;
	bh=n7ZhYqNQnH1MD59c3zNA4AlQt09Uw/7X04wnT/wbY4Q=;
	h=To:Subject:From:Message-Id:Date; b=UAHQTJpUd1qSon0wUkSfAf7faqdka2oLpPfvANCXjxdJFs/cxIBXyuFnSER1daQF8NQT9wLVm9zOUDjsuktJD9JisNoeYKZ+znquWdpljZ/EbbIsz43n5utvrxS7RIOGVTf/tGkkDBNpP1t97NrJ6smIuNedNLJ8ORxSkVvw22M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d5x6s3bN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d5x6s3bN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C28D1C19425
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778718633;
	bh=n7ZhYqNQnH1MD59c3zNA4AlQt09Uw/7X04wnT/wbY4Q=;
	h=To:Subject:From:Date:From;
	b=d5x6s3bNdfmjh7LaO9LhAQSGh3ROkBtEEJEOMjIDPWZ5W69ypqtJ5UHitRacOD8eW
	 WuV98XWmhulVJHg/O9zWOIbh6O76+NpLT40InPErnVSrvQy6vjSKfDjBruwz6LomDD
	 pIbQ/ixv4UKkjO5WJ/9qSipJCvlypUXS3N/tr7YThYdO6hL955Hc1BQWv4Bz+ZyZtE
	 aWShTP84+JCni8p5qGTir1tkLicBHUm7cXNRKuPdYRTqtCzbOZQWuYxFKlHSRlcY1i
	 On3/DgPpN7wTgP/WYvFriOeeRhsgPb27q9Vvu5Hkm4/fF5o6vLEZvODzrycViloMYq
	 IzszC/ibM+fjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A5DCD4F21
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177871863369.9822.9234744052887009061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc988e37bb0c2ab81b4cf2e36cbc5f2bc7706057ed3ad268c174388025e5d096
Date: Thu, 14 May 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778718633
