Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E081EF09C
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745132995; cv=none; b=ZaZnbSAEl0f9vQyHhF8l7xkpS/3wf5+cPT8KrWK63jnuo00tU5CkRAHm1sElo/KdeaI5ZYTGI6YgSECIV2KCdOclVgqUBEULE0a9kmXlQzCM6yE/ruKBuRNFk55Gi74JXVSRTijQQxfnOIE/9C+bmWwWjzUvD81iJOsnxJvyoGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745132995; c=relaxed/simple;
	bh=Kmre9sjs1xSjIcFwbzQUniayUGJ/vwqGl0JeeAvcb8o=;
	h=To:Subject:From:Message-Id:Date; b=KaUbhD01agJ1L21QGcYddubgHTatTO5sXeYUIxjMysbAAFLgw+ReUsMc267NulqKYWjisEAjnaKh3fC0DEt7BR6RmxZDym5Rc0b426S7RA+SR4jGPyVsLntEtU1LPLIMbYFezK/bgDF8uTGjpceHRZdmCMn88fWyl2a8AZQH9bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=be+MNyPN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="be+MNyPN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B02C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745132993;
	bh=Kmre9sjs1xSjIcFwbzQUniayUGJ/vwqGl0JeeAvcb8o=;
	h=To:Subject:From:Date:From;
	b=be+MNyPN+xpmM/UaufFVgdX8M3lkz15TOstCYO1qQNnirWT88OPRZHbd4qJT8OXJ/
	 muZJUmJmdoAqb/4BfMxfY++MeTp0iH2ookUgWOUPjZh+S8YWd/l+3hR5uJKyQ0Mfvx
	 IEFsz8gTgyckjmhv7jcWkeo+fTCXP4UYQC0ymffmN4WMwP+i+bQgMbzYE7XgXE3RmG
	 4OGcVV/7IqblG6RNWX6eiEGCL6cPtvNLDZIZ/qT2AMDyZjjZFZ9bS5+y1zcbQm0TJJ
	 aSA3NJSysbgNV9D460WSBU1BX3WNQNNTWlTzOTcjfX2Ijj4qzRabxkM27/IOmS4nLs
	 bPz+VvOBKGOzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FF2C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174513299360.17802.3891332515182416115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9796a1002f8a2b3936b7e76f3c4f03d593d37e23e1c9d77f389f9fd4a22de333
Date: Sun, 20 Apr 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745132993
