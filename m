Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DCF27735
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721514954; cv=none; b=pdWn1rKRpPH6u19l3XnQZdWLHlTWXHcDJvDa+89WtUu/BJ3TQQfhSYb6G+A3NoS+nU+HbgLb1xtRQ/VE/GICxRy5VFqCnTjW5wz4FKEA7qQdJEHf9MZcaz/OTqWjzJtZFDiVcBO9o5VTt09wBiBxY3HxolIIxtzCn8T1G7UuEBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721514954; c=relaxed/simple;
	bh=4yOhlUGHoDFCHeKEt6W0lHAlP4DtDQhAb8Kcy4cMZC4=;
	h=To:Subject:From:Message-Id:Date; b=r6G8XVcGuDGEzSbz4vsSM5uxSUykfKtjcSfBY2sOtMgeOntiCSK4xFJi+7CrPCRFZ5uzye7ZyM5MyZoFzzakTPQxxSg1aSOn7aHpms/u7NGCdf8E6A2ddMc9A+Wt81orGSGsTfGOT+ngApdvxjT6SVmtyMFb9mZ5dBxmKPj7tzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=baI4u+Zz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="baI4u+Zz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B83A8C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721514953;
	bh=4yOhlUGHoDFCHeKEt6W0lHAlP4DtDQhAb8Kcy4cMZC4=;
	h=To:Subject:From:Date:From;
	b=baI4u+Zz/gh3CVSGX5oPET4xzecG5tYgxfvciIBwKb0eH2VcVmcNT8OFHJ5j4fpvB
	 x9qbWLcb1L9WF+eV9zJfxsRAVKji5PkGJuw6c8Vc+1EUL0pwXIu5tUtDUepOxiQ5NR
	 NVSpQlPq4xjkd5DwVOxuIeUS/F3BrYFJNh0PJjkdRNna3KjV7uwxjflCuxg6FHWwqI
	 E5CoOM0+7xEpIbWXiNWiwm8f63SvLeJ28HAZyNgG61wwCqVR6DwcL088IaKPHP+dAS
	 7CkI9Ps9ZHYiY+2FgrI3Xjtx4n+XWby5/XiHc7lIkfbt0TWA4r3z8S2N2qHkwEH51u
	 h+wdeX5kIX5qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1E31C3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172151495359.18595.11800288974142433038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39f030893549f03150a9f3773176376ccd6008ab2d73e1ccdc4c4a8a5c4c6daf
Date: Sat, 20 Jul 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721514953
