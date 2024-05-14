Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42705225D0
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 08:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715676743; cv=none; b=SdS5SmRzHkPUs46iRruynygAlQnysRKcfIGJZ/xlfQBjn9NCKMol+sdKtG9T5pED8orPVrbF3AG+ZsS/Pi86nZTKmZx7gmny9GewRbSWdQ5C3JegDDVodLvwTQhvkgBiPRWo8kZa+O8rMVOJ5n2VnJhX1i0/lngMQZ1nuosYo8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715676743; c=relaxed/simple;
	bh=pKoVg+XtRQ0IPXb4DuE4bX5RTu73ijc6LyfizE9elYs=;
	h=To:Subject:From:Message-Id:Date; b=VoyNm0a5dWFrItX/YBxilL20QKIHo8r2oRgrAXoRPAE+vLVzSA+DbhWWj00Zy7AE4TMMI5bmSjI1TOmpigT1xFxFeGMdpG5d/YONO2YCgtEkue2jKDwWv3thvDXBdBxcqwJ5NG13C7el/BKIn0KyCivk4D2II5WY5xCKn6LaFjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QybTGc3h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QybTGc3h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D546CC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 08:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715676742;
	bh=pKoVg+XtRQ0IPXb4DuE4bX5RTu73ijc6LyfizE9elYs=;
	h=To:Subject:From:Date:From;
	b=QybTGc3htdqm3eHSST19upR6yQI9K9wI5Y9WRvkXJrfAUmsnL7ij0wEVu35Kpc6o1
	 ee/E3h6CSsqeP8SKLtO27cDyBG4kKwtHE2u1vafLVLvioPvf4TsmEydLMbzYAdNd1D
	 GHtjjnbPsjT36mV3qk605YbnQEAv9zrjlIg7FBzdRaOBzgC0vCAtNWX1jVC8RGW1Iq
	 GOFQFDC9rljd3BmeCFINLRLVT5mdjASoiygABUcJ/Q+FJ5GGyHKB3aAnhHf3NCMb4f
	 xMhl8GB2R2bEbNepd1+hvfQ0LUNl4JtjSddSGoVA0HFS0ebf+qVm7J7n7A4/v4pDOg
	 KDCZetVYmeT/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C36F9C25B75
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 08:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171567674278.15887.5162038174539875782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12d18ce9db4c14f0c9a006ab61f667b22a5e48695b7bb17bebe05f01e54c0186
Date: Tue, 14 May 2024 08:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715676742
