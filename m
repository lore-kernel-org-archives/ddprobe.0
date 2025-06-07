Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BB71373
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749293994; cv=none; b=HszBEEP+t/Bxi7qY5xUjwHIKo2Stz1TWE5aygETDyBF8SybR1+V2mOncZ1XXAsZ58c1OMs2GiXJtmPI7sdJ2SzyXI7rBoJUAbFvurhK+9HaRoQU8m5pYpgXmltNyOBqfGrBp4UakqkOZH7lBcC6YcGQcXpOu8NzJtkbLVQ7fyzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749293994; c=relaxed/simple;
	bh=gk/dmbqQqeEtCKa//zcuYCUbfV7eeoRM03grOSeVUD8=;
	h=To:Subject:From:Message-Id:Date; b=ZBZpbHIl2qFfH7Wu+I5yrFtkXh5VZmk1QzlylD6JgNVxkymPM9KmbmL/Wtdy+RFfjXA/ph2Hq2shnwR06EB8J7Fjk+m9h/wzIFSlcExkKge59BJrPzvw+83mWKFXUuDX+iC07n0VcD63JqOMQKh2JvRI7XTkPFeu872O3ZeLQks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYpUtKd8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYpUtKd8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA592C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749293993;
	bh=gk/dmbqQqeEtCKa//zcuYCUbfV7eeoRM03grOSeVUD8=;
	h=To:Subject:From:Date:From;
	b=AYpUtKd8trd8yme7CS/mlA3YGpmCTGMnLURequXFkpVhcIkVWddMcSab9Jtf+0fu3
	 cXl3dJC764JxFOTfVv2V/K+amQglbx6wE9mzsdn+rwOKQb8rD4Uz+K4pYfZMsrSFSM
	 e99Lx8brCMcYbRMYbt/9NncvRn40biumYBXQyQP3NdFH05Docmf9LXnzl6W2Li73aM
	 RgV9rSWaCmLIaliavNk43/MtiLFppmvAhYMw+NOpC/cLKHQjXzNCcMcQUQpzVUT9xi
	 yZplYQLYPyDU4WS8qfvu3j0j1KasrX4a8u+sMq1mor4UsPmKwfpaERXM36k367Iy6S
	 Art5VGfIsPanw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82E8C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174929399357.18901.7844371446618586680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 319c4e6e6e7d3ee38ef61a20c57bebd8a66b7f4571324e5622b9f7b0f22cc1c3
Date: Sat, 07 Jun 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749293993
