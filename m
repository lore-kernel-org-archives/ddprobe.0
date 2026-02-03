Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37028395D9A
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770108834; cv=none; b=bubwTDw8dWxAr3FaRXNU9+UJWKpoGhpjGKXwCdjCthN+z+KCmjo5LKO1lZVHT5ajuS6dii3Api2LBZkMJipldWP/BYSKanLA2DaSvJtTKbKh/O1xkwZlwTSmO6GV+n1heoviVGlz66Z9xNX6M4F0w4PJt7nMHqzAQxQoChbgg/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770108834; c=relaxed/simple;
	bh=eDANhUVhHkHzlkzUhhtIF/obhTqE8eehA7fLQRiX1uU=;
	h=To:Subject:From:Message-Id:Date; b=C3U2vrbGzCgzj8jAXErKvx+VXfOGn6vNuM1lCKkWsmMNvAH08JsL/eOxwVWC0eOXPu5Tj2RZriuvXvBznGjZ156tdPMFNIM0cu60j+EHBkzK3jUEIkrA5CvU2G2PiJ8S91eizQXkPxqnBMa4O3mi2af4Y0w4KqBnp4xLUIj/Bqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aum5dhdI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aum5dhdI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFC1C19422
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770108833;
	bh=eDANhUVhHkHzlkzUhhtIF/obhTqE8eehA7fLQRiX1uU=;
	h=To:Subject:From:Date:From;
	b=aum5dhdInuGV5ppPE8lmOh5LOWwPcL2Yg+V/mjR4lxZj1wW6hyZQ4bSF3MqySXiNk
	 oJZekuzuQ353zZRruD+EvMGWod+owbENGYb8y7MWZYsFZTOjDUiJnUkOcLBjEKu8ZR
	 tob9VdlCJVwQ1230Lx9faPw8LynCupQqTuvNIH2eQfeceDlrYRD2tIRQBRGrYgCKLT
	 iiyG+GHVpv6CqpQapKpC276VvayLJuomoTXMHL9/aB+G8PebZ81KNfFjzKKUnLkIo4
	 oW5oXOA7YBm7Sxbu5AJMyb2yD156b0q/n6wMBk/9dIm9galarRqqlklODP8gMczfad
	 T/X2++8QYzJXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2323E83062
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177010883371.3957.7565448130413188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 131cd56b71fd8cb016b526fcab8771edba9b31040ea6fa736510bc8e43d1e0ca
Date: Tue, 03 Feb 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770108833
