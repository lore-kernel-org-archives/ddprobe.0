Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B16248F47
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 21:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765747974; cv=none; b=JG5jwLYKN6RdP2yl58I1DjESvQf8ha09OvCrc3+NpXuQII5r3VN4vYJ9IsmghvL4aN7pxL5bYqa0EwRbYhbSEmQbrGXSqFA1RQ8OjxzqB3Rt5b1tRuc2VZqtqFLc0MgGCKii1x2GjcK/wFXC8OLJoi+Sl1v8bUXijYjFe+GJk78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765747974; c=relaxed/simple;
	bh=y/600n4hZD6niv+FMYXY8RTWljxX41LoBT/1VO7FhD0=;
	h=To:Subject:From:Message-Id:Date; b=Eoif6tXRA6mb4GXOfQe0qHtlduslO60KJ55D8OvM75qgKdu5krKb1KDOtEGJeU83dYiStd9UsK91Tqud1lcu457TmJcRO+qTd4tCn4sUGJ0bIOV1gi3va2ZOOlMoQqnRXLYtyedvrJfYoIy+rKDKJsB82Zb6g7eSHFFeZiOGj5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CN9owNL7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CN9owNL7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD2CC19421
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 21:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765747973;
	bh=y/600n4hZD6niv+FMYXY8RTWljxX41LoBT/1VO7FhD0=;
	h=To:Subject:From:Date:From;
	b=CN9owNL7Iwj65cEa/Re9uoovw4Q/bWKm30PyfOxk06MwuYMAf56EkbaO8+ozV1lRm
	 E6v+ETV6beYCbbg8e5ndI3+z6v4z2RvyLQmAphJvkdfga0ZrGfDtB+zJKqTexRfzfb
	 Yxp/+FwgZzfmOtZp0YtJ5sdm9x68aOZNtPBxmGFKekwSV9gLeA+7RtFsRYBsnLPMEo
	 MGWST4W2EvV0aZi6HyGwPa0ipsJn0qx9dfAKhCDRNKAjDkDisK98V4b5Q+IpSdB+JB
	 IKq8Qj/8+wQIiNc/CJCMojaSDeSNHBG0yM8fFGrh6aOzqZ8+R85rKw77GtBTPwPyny
	 5q3XRueW2LGRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99404D5B16C
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 21:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176574797360.488.10575741102118487029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42d77763ec6199ebdf26844ab7b4266c9aed3b3c70ba9b5ee6347ca018e7de47
Date: Sun, 14 Dec 2025 21:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765747973
