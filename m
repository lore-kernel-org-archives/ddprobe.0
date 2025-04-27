Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A39617C91
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745717394; cv=none; b=Knj59YKMx7+VtcSbFBwfIO103hal+cP7w7YQ6WD9bCKINsD71izJYWiTwCVp0gZnHXpzWEev6wVLXT2Oe/r9pdSL7xFv542VM5uJKmFXw6q/mLohKsdNc3R7xIdxwS845OVT87Tyz9L6BQ8NyAEIY0Kc7lRK2F0y2BRyC6DN9Gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745717394; c=relaxed/simple;
	bh=qXqCsQcxsg/rnbtEK5F7HSubbymto0kVcjsoaGvJPdM=;
	h=To:Subject:From:Message-Id:Date; b=kQIj6hQWLoYD8LTae/t/veevHHu0rsbtseVrLpQi+iMOpeqOZ9d6HkhSc/M36/gk4+3OWYAF1y3Lvc1yt4S+rsBLZdrTUyzwAcgSzJjJC6WJ5M4zmn8BifpuYqhCj6v9mkuQhseWku/g//hrspRzRdqEAt/iU0uFnt0EJU1mG68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U7cZBB36; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U7cZBB36"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DF5C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745717393;
	bh=qXqCsQcxsg/rnbtEK5F7HSubbymto0kVcjsoaGvJPdM=;
	h=To:Subject:From:Date:From;
	b=U7cZBB36QOAFITNblwAWQ4Qo/X2oYJU3GN1ejJmlhi5Gq09/IcxOtXBAcuPXFSRr4
	 /qvrmM3HKUcOV8jAHa6SXOAaJCBgjGgm4ksxaIc1Ma0n5/jdruyc027uHNnUsmgqzT
	 nKjHZjTmgy7d50ExuoUpdvgHp7pfkYP409RjAAwCEwuhLud1mIc4GmsghngVxFDyz4
	 BB8CTc7H/SZsRIrprbQaevnlIsp3+5SzQMAc67oqXwzlVZPO5Hw8Xum/wg5kYCHB04
	 NUp/q9NrXtf6rQ6rj6/RpSE4ek8uZAXjn7+U7CQc/Qt/WxZzvRejt2vXNtz4isIYGb
	 T9ccazEdWJxEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922A4C369CB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174571739357.2062.14849219848322041743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 846fdfeecb928c7074729e22c0e9f49b0fe6dd88389283dbcfef72c57a891601
Date: Sun, 27 Apr 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745717393
