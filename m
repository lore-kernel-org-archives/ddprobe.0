Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCAE33B97B
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769027634; cv=none; b=GqnXIVX4D3S8PjTCON7A9PuRnf4Vq9rHnhd/CFcX6luOwJeHkWx5hQK67xCIKOTmEZYnQD4oLkTnnhbobg2o/+fmhPhnJl8seX9WO9gfy6i3RYAQJJ8ZJcE9+qdzdedCSoQlgcTHRMOPloUgcsP1ckxcMYNEneqRGdZPODmWLVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769027634; c=relaxed/simple;
	bh=q7rVp+ikG8hEV7OLCzxu/eDiXNI7oMpmvvFEZbrdbbI=;
	h=To:Subject:From:Message-Id:Date; b=Yh4170l6QTB9+GvBX6biMWXK9jZYCttPCoPmAWwz8niovYBBH+A4GePGr7NQcq6N1123Ou+0KX06LJUFyyNSd7K1gWQm/JPDFH8uwEXhZ+6435npmnHEuw1j80PwbBYmp/kkfu6Rf6pNIVMoYB/TJKmYqQjFxJ+lLlaAonLnmPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gvMd7ki6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gvMd7ki6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C72C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769027633;
	bh=q7rVp+ikG8hEV7OLCzxu/eDiXNI7oMpmvvFEZbrdbbI=;
	h=To:Subject:From:Date:From;
	b=gvMd7ki6kpo6Oo63dnQ+sw9V9K5pMJ3r3/37hJjbh+cgKiQibcUSfNuT6ZQI6wtU2
	 E9MaUZTftT9R2nGSkbHEIFbGnadXhraOSOGtq1shuHvBhbuVj4pyOYdgQ7b34jCAmH
	 yNgA6UVzCjLhlW7NlJUotgUNenoIZxZ05/YCTVDAHw+o8JvxBkQVZ/5C00O9aHWPEx
	 OJG4yaqs/R7c3+vL2OdAzM9/wI4xztVdxO1pp3HSVfUBw2RATkImAHTb4Q0R1XGAkv
	 vn9HJoAyKD9oSfdUnm6TkKVktW5kn8jy7ljd6sJSNIK/ete25l8b54yHkQY5BWRDPH
	 PYswXHlA9Fx8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90698C44506
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176902763358.7919.8372072738380078289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 010e123d101a9ff8ce61d0dce4071aed36262269eb31f233825c6f58bccb43c8
Date: Wed, 21 Jan 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769027633
