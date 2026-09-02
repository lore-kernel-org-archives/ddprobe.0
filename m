Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5748824DFF9
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 04:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788324034; cv=none; b=Fne+pmu+h4Rrw5E671NOiqvZ7yEebpOm0v8QvpMN9Rw8Paaf+ebx+gNGpgmKUCpQkHczn3o0DNECS4Ecipw8aDdSW4UFcOzBQoZaWSEZ6hgOrR3OygkbvVLCLb9PAaM9sI2oXaRtDyxC0ffAHRnQirp23WPdnvTP+L1kacx4Hpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788324034; c=relaxed/simple;
	bh=gkRQ0h+DLLBWfD8pj+vJUjZn6XqQectFo3YgctalKYo=;
	h=To:Subject:From:Message-Id:Date; b=TDP6bbM3C5o9dx+5RR4vBYt433aZFwO8jVVtxkhfNBoKGbkKFBfw8dXci6niPZV8r91x3VNy7KqvyOEMREYSRhV9v5Y8lcN9xKGchwJ2aARUcvwyo+o4pXZC7Xb0ccsguXRV1s4STfbXUbgRjGGqLKPXViNRNqHtKhvJGYoQRg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nDmBKmvW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nDmBKmvW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE2E0C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788324033;
	bh=gkRQ0h+DLLBWfD8pj+vJUjZn6XqQectFo3YgctalKYo=;
	h=To:Subject:From:Date:From;
	b=nDmBKmvWEtR7vuuWVhL4fAPTDwITGhLmKb/uKZmwShmMB53Aoxq7Ikl85CWRv7/Ir
	 +VcaIzwGNk48x2NxEIqMLpCbACHRKBzE0E3c+hUBOjKeuK6u6zst+S98p2M6E5xQAb
	 Kp6IJQ0EYP2kclzvy87CbvVp5pfI5jdh5hpQiLLIQ++KS2QBnKvbPq4nIcfbyI6jpt
	 6TpmV/RwB4d9ylUhzCB7LRdJrUfydfViJiEg8b3afgXQux+p3l3cb1R0JioAqEjRsj
	 70uX/H6taJMdXxMIwYs4vDwKzHlLB8g10KZynQoFEF/7HDKvY5K72ywMdzE84oBZAs
	 RLNIWwDOBeELw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDE3C624D0
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178832403369.15778.12958888975332872804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3fc79565b72782c79a3989b0d3492c4038f043163cea9a36341b6ce5d093f43
Date: Wed, 02 Sep 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788324033
