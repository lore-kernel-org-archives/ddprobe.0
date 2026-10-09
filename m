Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 736D04E5320
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791567034; cv=none; b=ANZKx9tOmi91dgkyqR7FcUEyDvKTJUff/zdlGw89xSD7V9xhODDD7FK6rnYSFhjEhY17TOuV52ztPGrRMJxbJ7qo2WnkcaywKJYGb+6ZQ+AZReE/G+9dicSArRPuRUh8ZVfJIBX8iYuhAWQHr0ySewzHzsO9WJELqEFcU2OXIks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791567034; c=relaxed/simple;
	bh=ERvL1O5gODlGx7oS5ybdgdst9GUcdr0PzWv/r25rfD0=;
	h=To:Subject:From:Message-Id:Date; b=QdIeE4zvGWLALkHnQwdWgmSpLUtficHuhxdKMUh6HsCxf+LvpW9+cFT+gVzSOy+bAuK/WmJ8lManBACbIxaF0VUwPodwazmSdUJBDA1LXo4HVlLo3TJtId7f7oDOTBc25ckX4Xau7Cw0QcFZ4mtNHwN9L2OhgeXsvnNn75rDr2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UzMAUsEg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UzMAUsEg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1010C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791567033;
	bh=ERvL1O5gODlGx7oS5ybdgdst9GUcdr0PzWv/r25rfD0=;
	h=To:Subject:From:Date:From;
	b=UzMAUsEgXgl7GxeK0tI8vss/qXTJwDebz+1KpFgANpJfrqh1eJOrAf3rGi/b8mjsF
	 jZeMboHRktfErrCxuJ81t8fSVA5Mjx8zXkZkdLPogQW96/p+ynQvbrrOkUG1OJTK8N
	 uXjfzuMi9iOuRIImv3/hj12YJoQqj5Fy3YriZpbYwU19D29zeC5TOKthleZGSR7/+J
	 U8Ax44wUQqLkNk6Pgl+m8Z4KLbVlHkzYHrAE6Z26XZ+aUfB7dhDk5GD3xerdEpppN1
	 i7k6YvY0J+COHRRqtdrLthOScKphbcfs1NQojXS1INhXGb0YHAs6xmyLtuAVQ4opYF
	 gc7/bO94qulcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB972CA601E
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179156703369.15481.13670102593215271831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a16c5fbf8041a5657d31889b49e03ac72cd91e14658000bc3c3eb746f497bb2
Date: Fri, 09 Oct 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791567033
