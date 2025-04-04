Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F1B79F5
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743730794; cv=none; b=RDr91PluH+15hjJHhJIh4RTeLQtgZUg3PtZtX5eQb75U+CpUOlur8PkJoWpotDdYmQIohLFXUvXsVkACpQs/YMHA7CHEYGJBTs/gTHXg3B7e2FhIlTQbkcAUt8tE4Fop9Iggyo3mehYhkN/QgFIBkQKCso0LpxtB8sdAQaaC820=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743730794; c=relaxed/simple;
	bh=bwI/T3YGCRg5oovfMFEkrr1R5YE5ann041fJt7xUxF8=;
	h=To:Subject:From:Message-Id:Date; b=VYLEd7ax+3H6xXyhrNcdX8SbOWa+dZynUtxWP/QCmksl7kO6mRIMpPCokxWWRMvMV1XM4ApTbhZHp2HNvvAsVUBeqqtGxLt+/Z3W7kbKzboIUlUGtEn7d8mZOf/hv8PiQ2hjaJ8/1Kp93m1ye7I8n0Ll3SiLBsGeNwCTPuIcyKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c7pnELnJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c7pnELnJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B99E6C4CEE9
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743730793;
	bh=bwI/T3YGCRg5oovfMFEkrr1R5YE5ann041fJt7xUxF8=;
	h=To:Subject:From:Date:From;
	b=c7pnELnJtMcQ5XtzfCdIx76gR6aG5n6pvg7tN/tyZMVut3okAZ0N1WLLwpKs3T5YW
	 DcqVFjK3vgqAF7eCHu+jzpUp9rdDwgCh5a2F1AQJVLEWZQdugXQZRKF5eydtayRv4v
	 dyGoAzMwf0c4AW4MOFflAMjE2zH6uADwobLQrvc0sHSE/MX6QKlIDbyra9XP/S7c9F
	 dck1K/UvyZZcvcuhKRlgDfgzBV9+3uBGFUJDI1U6yiNbS9mzrFxSkeldX+1L3JmWqq
	 pA9MyyhO/0tnm2W4v5FuQOvdekxZtt2y+P0aIo4Kv2vFBhIaIKrrL4I2WU5x+KhQ+K
	 +htba3ckGnqPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FCBDC3601A
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174373079364.681.5485035508703165740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdbac1dee63cf23ef0ea6a396e3d332464276e0b68ce9e0f27c46803b39aa193
Date: Fri, 04 Apr 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743730793
