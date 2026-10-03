Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E0984562AF
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 16:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791043235; cv=none; b=dkmMweGHiC+3Fc15MWO4OqNytC8G/7NjHFyafTsPsSkJsuTU09+QvX2YF+WNhvk06ZgyY5CQLkWiqssruO5nEs956uwFU0gSz0+hgILpHu8bv0dItH0H6+hwe+PqI4jdcR3X48UMeC9I8sUZGbxJJCEdSPWqEjxpq8/RaaWRG7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791043235; c=relaxed/simple;
	bh=eHAC5FZ7bfT0gzjga/CCdPgCJ/gyRXb35PHHCbdBCnk=;
	h=To:Subject:From:Message-Id:Date; b=aShkoQTUFJ9EyvlxJjyIYrxmkXWB3WuIPgPjkqGBdZIMSfnSbRqfNdKVR43AeDrJL/c9SK/h4gVgZaSrdalA+BZRApGTdzHFJbDlGR2SMZRHTlUlxNwzRJpstvIXo1xRueUUPK+FJykMJxWu3hBpX/Q9bwdYjiXkS9BIQW96p7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c7THN11j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c7THN11j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D03A3C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791043233;
	bh=eHAC5FZ7bfT0gzjga/CCdPgCJ/gyRXb35PHHCbdBCnk=;
	h=To:Subject:From:Date:From;
	b=c7THN11j5YjODz+xfqPtzt58+nPjiO7wq8aIjQCkT7H2XudYm5KGJrO5hFU5KbVit
	 vcKwCmLJFu7Oa1KzShhE7WAFncIdS7Hh+LsB+uF7WU3p8wy/17L1OgnSfJqeTlQLNf
	 +zhukvLKF31Ku6ugUByd3CAPcTtMw3MBa6OalG0w04hG52an+ktd6Vny0aSm92rQZH
	 OVCK1Kc7AodpHov6idYu2LyLxgJfqbEyvXJag5AqTah2meDu5eqVn6i7RqgIw7ZLJc
	 wH9DvwOVwCEBqTD42TCtt4zzec1roxnMeNE0TdnIOONWd51RRPJmirLxPW4IDhA70B
	 J6d0B3kz5pn5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD075CA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179104323369.16662.2960306467050098767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0693508518cd529ec48c18ff503fdbdc50efca69037a5a9bf1fe0497a7c2f55e
Date: Sat, 03 Oct 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791043233
