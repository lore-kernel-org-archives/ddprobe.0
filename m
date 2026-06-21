Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A764F5E0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 11:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782040594; cv=none; b=h4GH8ms+PWLNB0EudRh4EpOS6hYJjVidXBph14HcyjUVjgjFMsd8clcttDYqK9PWrMiJcppRF07VzYvYT7ptamJGpqTDJBXTApfLJi/qXQEb1QxglZvQgYvO4VuWfYJjgFRQa/1kfbFKg9pfxBE4ddD8YBRpaoJPLxJLHSdzP5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782040594; c=relaxed/simple;
	bh=6FsUq9IwBZxMFw+QDDxnNnn3ISNJaNKNeVZS0KgNJhw=;
	h=To:Subject:From:Message-Id:Date; b=pIy80YzIxGloo91ciNwEtSTC0RrPdUTxNoOIOVHfJE16zeK8zI9rdNEGcRw7wu5d7gtzE3sa4U6QZg4y2L2nhJSDQBr9t8uAvS6oB1Um0oa1ZY1UbX1As0rTm41w+9t42iSiP+T28mpXakkr7mgkv/TJ00doJgSIDKFNaQjfGcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJwpkkGQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJwpkkGQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D24E7C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 11:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782040593;
	bh=6FsUq9IwBZxMFw+QDDxnNnn3ISNJaNKNeVZS0KgNJhw=;
	h=To:Subject:From:Date:From;
	b=IJwpkkGQTwN/6uRDnX4HDgCWSQIzkS9ifrkoc/7IzspYS4NDI6iiRwFi1GeQP2n2W
	 rZu+jLHSxtm7avi26I/PvUpHUH30ZkiVmgRiRxAjxo50BprqdRkBJx+r4/3rAhXVWo
	 B7eHO0H/sQMuyIHzQy5H/wifUIb+Z10x92SdtWBTcWf5pmd4b13BYE2qsdJcsL/y/j
	 4MEBnkGDxSsA9c9s1CQogEsqAmOobZHwFRNkHBGaCjt9Wm3ROJe7aCpLzPiv04B9Td
	 c8UGFKIxG+7aWuH2N3mgu/f0fuxq5C1/9KvhZGBaaL9D6BY8DSvIlXKufKrKNWhM1P
	 HcMtIniHm90Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4110CD98F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 11:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178204059369.22934.6601892058061101551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd4c3c6737fe091a08973a47f6108351ddf3cfb27ccedb942f35a00d4670419a
Date: Sun, 21 Jun 2026 11:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782040593
