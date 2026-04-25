Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C12B29CE9
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 07:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777103254; cv=none; b=deQc+ziTV2EyfXqDWuRUF25DpKs9r8LPHYvKz/g/RRliP5l1g0cphouIM73lhQ5yjzYnkdmnJPcaKuumzCxMHtQ6AyBwlhj1b0P6rYcW/ruPvPZyhHPnPjS68+P2f9i/B4SdZ3t2hXMYoJn32ASPxcPFwNcY04qy2NqIUpMvxn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777103254; c=relaxed/simple;
	bh=+dBhXMj3VwzMApC5TInIuz21bEqUtMaHvhCkaUaS95M=;
	h=To:Subject:From:Message-Id:Date; b=h4KBlGH+4d6MS7rmHHciyThxN7pnneW3FY6xMm6140hJpYHJFN4pIkw4xfwVmjg+RQeXtM089eIlb4BkR/r3YR2eRnVpCOhUpEnh9eOsSuCkkHGbAN4IKSqxmmJDQbPslQpJ+tD3MwlTJp3YSzxdVhKd2PU2uCPTfZui7UGFXsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eefF1/Au; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eefF1/Au"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0971C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 07:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777103253;
	bh=+dBhXMj3VwzMApC5TInIuz21bEqUtMaHvhCkaUaS95M=;
	h=To:Subject:From:Date:From;
	b=eefF1/AukbajYintWIiWWchzhnnkW/tugDWzds6EvH2GIjUzoSpmsY1OHJV6ALtAR
	 v93QFY0tFh/dxRBIk/+L6q1HWVNUh4Za6TBp/FpQlT6DvfMzYcHOQoP+AwsjkX5flH
	 g+/j8pEmntT8G2fPQ5OjY9Gy7ovgFpE78aFgXJOL5dJIiSVpKfmt6LPoXF6JT+aH6f
	 UfWlOMqIRu/eQ6JtBhOqqQzuNqnPn/3wNvtEJklRZtWkvVdiWWBpIbGXKIY23U5FZ2
	 H0uKHxRLNUb4+AFM5RkFCn2guwjgocC2uTHCsAPrb18hIwUUFbDKkKExvPE3lyNzvu
	 wPD6bg465impw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB778FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 07:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177710325368.8128.1842889137801658879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59c17730eab7a7ea4ae186c072c78d97bb4c363beae1dbd9afb4c18da749fb2e
Date: Sat, 25 Apr 2026 07:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777103253
