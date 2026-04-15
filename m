Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A69928BAB9
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 04:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776227254; cv=none; b=mY8xo8V1xPhl4qOmQpuiHoJX20m/xgigtjwrUG3UrRn0mdsUxLc9hCIWm/UYyDJ9bCM/AGFJ96Nite90C3XZNJ81A5XxQvD7840q6yeQaI738kyxVl0JW79cOjgSlVN+0/m8eLSiZeJl4XWobESkSa83HY5+oTy6GnMcxnzBd9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776227254; c=relaxed/simple;
	bh=YbgN+B7/w3dj5qN8XPz2U5cUKPeK0pQrT6QkJAZn2hk=;
	h=To:Subject:From:Message-Id:Date; b=MNsb+01X5qBi0QzRcrOw3YnddKDKHm3+EX7c6lksq2FWpcRYAkHsbqNkO+ghqZScx4euMpW2CEj0Tcg++yLfzC94l8kHGSkgUhDAvPJfSj6q2pmFrljZ7aricrmJGH1XPu2N0HYTIQE3EVEw4LgZI1oVzU4z/VdXzCiDXG+j7co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OX8j0o4n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OX8j0o4n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE0BCC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 04:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776227253;
	bh=YbgN+B7/w3dj5qN8XPz2U5cUKPeK0pQrT6QkJAZn2hk=;
	h=To:Subject:From:Date:From;
	b=OX8j0o4nPMR9dVX+yj6Or2t8u/CsB1bJJfKuHpVB9h9drWsmyTy3LIpBA76t93HJB
	 bR4GUGD3zPT8gChO/x93PZ8lWB4NOUuKetG5V3aBhI8IO6zqXr6dCEs9/puguSj235
	 poFxpABM0AnF8n0ZIeMUYC0l9X4yQUuQ3MxWtbHDgHn+3hKZ9KxDk6jNLwZ8Q/k6my
	 ebgB6KP8TJ61OvuMdllIXrWH1eKxdABWcpY+Ep77U+Wh0j/wEr8ycHWHG473VTwu1T
	 4XEywR0pqrZvZZs7BqdqKntODQIcujH9f659+r4SJ9G2TfztpEfW3xiqIDZLhD9v5Q
	 NZBc5t1qe5Ofg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6B8FA0C22
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 04:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177622725369.27768.9604201171164499739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df8afc85c4ef209715f730fe9fc77d832e94f70b38409bd6af5725928a480ef3
Date: Wed, 15 Apr 2026 04:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776227253
