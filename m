Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D37FDE55A
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771742693; cv=none; b=e4kICg17VrcDyiQEZGHxLm9dc1p/4PQrWkmUZYBorrZ9wUEi40iIcAUG8YK4QohYj6zH77phmdfbx/vNZgVRrKP72S+8T1BDchwvAXAHUgLtB5cSczCjcAlCcWlqWnzEa2HmlNZSukC2XiJUhKd6rtz8hyTZnPHaeCBv2Dd9Xd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771742693; c=relaxed/simple;
	bh=4M3k5EwS+hMRsAij21p+JqnbEHg3z8rxVI+FIAwoC4Q=;
	h=To:Subject:From:Message-Id:Date; b=GT/znkalsmvE23TixBIC65qhUhIInV2RgyJ77NOInq6jtJsD6Z6pFWR/jLAdZ6+gkyKXZtUS6//tCS+M7Oszt8eDn+wSzO0+U0WuUMnkrC9Q8LnzQvug5WTvv1QyXCsuwTwX4ptwA+J1qUPOzurBLe0AHgWdiEN1BZiZv86lbiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VODTip16; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VODTip16"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABEFCC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771742693;
	bh=4M3k5EwS+hMRsAij21p+JqnbEHg3z8rxVI+FIAwoC4Q=;
	h=To:Subject:From:Date:From;
	b=VODTip16REq2lSrweB0SqPEK5H2vmO8l3n8LeGW2ussOCOJIPSnHKlfvdRj6sJ2KX
	 z0/loEnGJBlHYbStMgGY3+QWhwyDxSrW6Y9RhOPA7NOfG1St36IyJgYHxNJd3biF1S
	 IoSaM31Ji25GG7T0k84rjhPvPUHVIzG9wjvYysPt3exOMaOncj1PafJ1kVG+BpNu+G
	 54DmkWOPjtuUYuDSmhiWS7vQF20Sgd+WlWl3lzLsLLVOiC+LKG6jLqvV2KFRz6Ps/w
	 5YrQ2aLxtBU/xQruxUBSuRiAbZ8Z3o/RrnJrQ9IbgzQKlqeAx2wApZUTyoWzPfmX6E
	 UEPnwkHDTfeiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B7CC624A5
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177174269358.18252.7066323838426450326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b945ef60739227f4cf101c4d0b9b76748e1f63d18f91c0ec310c1ebf17e936e
Date: Sun, 22 Feb 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771742693
