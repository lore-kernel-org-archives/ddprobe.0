Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323A91A0BD6
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771070094; cv=none; b=oaLRuJLsoWp8givZq2ZjRo7Q+TkQi7v7IiDfCKnTkJdd6ZJyo+a0GDTwxVnWowtli2f6FdXCiC+J4XS7v7z0DzV9pigw8NBzKTBrU9TIGol759onBkbXqD9lKLzNORn2k+miPRHVe7iCKiWx/gofuUbR5aNFMcByVoFgtQxmsTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771070094; c=relaxed/simple;
	bh=PzWpcdd0G3fbNgCSbvHgD7M+WlSf48RGqREP3WWdims=;
	h=To:Subject:From:Message-Id:Date; b=A3tldbLqjTxX3Euqdew6hsRrpLqogRIqTr6SAuxnmDbjIazZMxsSxToPsmxhELKxVX1K6clQXL1Vx1PZgsGyTyJkn6DuQQFA5OhWH8IjU7Yu1IAzoLqy12O3MoIoKSnRzJfox7d6Mzzohwzp5/X/b4fL32IqVqaN8s2+DCF/Ebo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QGUNnFR7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QGUNnFR7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B66A9C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771070093;
	bh=PzWpcdd0G3fbNgCSbvHgD7M+WlSf48RGqREP3WWdims=;
	h=To:Subject:From:Date:From;
	b=QGUNnFR74HBFHEL/s5q90NGsrA3PIQa3mUZAZIFdSSOf+xlUuW2z0hCLL2g1VgHVg
	 pPa2VMKX/VsgP7EBN6vGsj/wTXh1uCjdIFKrLxEcDzjWBuQKmP+fzeUPnFXVWHsx5y
	 uJG0Pm7+kguhafU1AAcMv0skH40Gst+Ec8YCpZmj3l+CN5RIswEx4+rTW3B1uNQDLO
	 bBOf2QqeSYROVbH17qzHZn99yMEi9ASKVgGKIt9mUWkWLNsw7AETAbs3ZRjNourGzD
	 5B9t4W9eDh11S91lg6Os4O7jS/2C2A0S3OtcE+fs2/haB6NQsFU4VM2j8btCn8ZBVd
	 o24xLiNrOqkiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9259AEF48C5
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177107009358.22708.16152282128029862767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0feeb2a21845d54cf4aa0fa9cc67224352ce79963e0d6ddda883738526d77204
Date: Sat, 14 Feb 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771070093
