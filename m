Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27CC327735
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735726554; cv=none; b=LE1q3t2SuPuJM7OIZnJYjmwiZOeyJVmrZRRwtv/UKa0OaHxrLSGnbH6bM9SCH21Pt85nWyGELo8x0/RmMwh7RCGbJxCdg2yQREdVgPE1hheYmhhO/chZuiu7IfPjGbkRTV1xWAPEYxiutPYMp3i4X9nimbA1vnYLk3Xf0fejM5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735726554; c=relaxed/simple;
	bh=jK5w3C4SClXm3Axs/2oXVxQQ3pp1OgplTENe43fh/Js=;
	h=To:Subject:From:Message-Id:Date; b=h0RPDqtl41BYvl0w0dEJ6m4ITx3M9Xi5gEFHnBe7c+jbjnNllX0Mk2gZwn2y77HA50vzvD8sktifYMfTBmp6C4okyXV5XNpluaAVDpIk5J6RQ9rpHE0v8pi/p4ia/7f14kYynEMzXSaE3ZD2nHqw1F9Ae/voHi8IEfld5of/U+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yy5qHGNE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yy5qHGNE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEED0C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735726553;
	bh=jK5w3C4SClXm3Axs/2oXVxQQ3pp1OgplTENe43fh/Js=;
	h=To:Subject:From:Date:From;
	b=Yy5qHGNEF5FBhp5qTkmAqE8qvGHtXNCvrFIpWbG9iSJJW28kOZIVeHCaSRyE5XuiQ
	 XvtF7TMyA9mEyTBV4aIM1SaAFEbytdjFkUIHRYDonzU3neR7RgiTVhJUC6lKLUeGE2
	 dk6S8j6o7vMvHlqhji0jsG17gED8DFE7VMElHQFD6AYeAOV+J1yHmHwcyDUlDj6fKC
	 QzFVuMiM2xxAtMV/ZTcPFd+o3ZoM6GWU8HLxg9KI2qKvohayvrouNdQbGl/C/pken/
	 QjgPMcCvqjI8CQ4tsp5Xsfn1f8urcQQ0uXVfDq9YaGRkNcv7SOgBZwxNJpekAfyZg0
	 /HFW2kfCxKIHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FE7E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173572655358.8772.14651095878396906691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51db99b70f9efd8420f30e9db79d9e02e1edb7525034218f54965e632b9ac8ae
Date: Wed, 01 Jan 2025 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735726553
