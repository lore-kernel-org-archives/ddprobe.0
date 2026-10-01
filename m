Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD3D1FE44A
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790893234; cv=none; b=rQIVHHmY7aKiHIg3BhLPH0Qgz13BVIPAV/o/vJY3ZZ1JaiPYoYLEI7VdTqUbNTpWSN8YsPVvCnqOutObkI8pgweZ3RF2OBjFfRuttmkJYh4uYhznEF5TekHihl1tD63UnqEOYH6lTEXoyCNxmubUcPLt84trXvH4yYUGOFHhc1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790893234; c=relaxed/simple;
	bh=ZTgDb2TnxvI43NYzPrTIQ4S99/U8VXZfKYQnROfCu5s=;
	h=To:Subject:From:Message-Id:Date; b=SnT4c8lcpu9j1EFLUo92f9UHJ3dQVd7uR53hIgr4BVFMgIUsLvzhhO6SUbEHucjcjHEL0phzr21dSkzAhQ7kf8HbB9ZmWvoUgzhAophw7241xSZbkzRA1DHK13Hy8837mnpZIRL1jwLdEtZq38L/sgvDDUK4B6hv3AqqsH1uPko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tQAnf5cF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tQAnf5cF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D88B7C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790893233;
	bh=ZTgDb2TnxvI43NYzPrTIQ4S99/U8VXZfKYQnROfCu5s=;
	h=To:Subject:From:Date:From;
	b=tQAnf5cFVhOZ2SAumfK12UcdBbcgyVYba6D/NjxPGUtcOh1ZPJAZEfo5x539z6WS0
	 62TpDnufLiZ9rSHQZl/V0cZwzlsotbvniq7+44vTI9fkjAOP/eaXY6vQX3gwd+1P8p
	 zoCbZWwUmyX1G62gC713z0Ymlr86AVqFxxJNY0bstYdtlSdwJKhQo9VYKQeSZKrs3s
	 Lzl4vIVz5BY/44W8ormbjO+EWNWNudR3XWpD6wmGZoODzbYlNFpTHQHnaNPFXaF+NN
	 Xht0vkLa0BZA3bWSL+5QMUix9OCDbj2X8dw8lvEK8o082PU/sbI950+HDUey9zAVXN
	 TODI8i0D19uzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE251CA5FD2
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179089323370.23845.3932714995528800964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca49106340ad5c01fbb612c39daafd485001e39e33344c63791c76c20bd558b6
Date: Thu, 01 Oct 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790893233
