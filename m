Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3B4369988
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768587234; cv=none; b=ohNKZSqtjKy9bW+qleLdHs7fnwtQituCFqF24ph28cfXfp0x+Zaw4GrdJV979qZAbLrhmxfuZQAoUxta0y4FsrJtemBZczah7P630m9++TGNW+Gl8QoC0hT3sba0+O7p6niUhfMTFNotaTSu8ZoRZeGKdX+vc/5RSPJzDOb0Y1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768587234; c=relaxed/simple;
	bh=xeWdhXmb2+rbxzs4/CKDcwxXt6hsHloMpkbhcte786k=;
	h=To:Subject:From:Message-Id:Date; b=N9itt6lOWeQHIrjMk7l2IMRu2pVXZGdKWVQVp3IyLAaA1jDAAEetWJQu93E8TrFuYtGH1iPijvtJp6BIAXBDb20Mn8ZOnyW3yjJlsgSV4q0DfnEZ1mjWF8SpS6RxcmVXw80gn1R4ODFXlD+4GwlaEQmA606Su2byfZrqaUbWvPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ecwv1EFL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ecwv1EFL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42E4C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768587233;
	bh=xeWdhXmb2+rbxzs4/CKDcwxXt6hsHloMpkbhcte786k=;
	h=To:Subject:From:Date:From;
	b=Ecwv1EFL0hAO8t1+NARAfMZHTKvmESr8w59ygoBbQ6Xb9CaBKp27xFI/VXltWfgU6
	 94YjqrP8ozRk8IRPFJHb1fbvIV4bCDKWgqaH+sKYib6LpjQ/biRjH3TIgtX3gag6j6
	 hrN1RR8Oupq9hXObuUtxBw6xaE6lqP4TGRLPrLariyup1ILoc6SUS7sQ1Jw1mUIARc
	 wDqVz34lH+7XA+EIlpuS5I44f5KvXi9BuciuxfdjiicqVFKfXspQr3iQ2xU5XKxBqj
	 1yK3vz8Ip8agw1brKcbhGHBP+pHNxnqfDx66MnGhMrcFqEJCF1MOW4oDXA6n3d0TkU
	 FFr4e3tIBnNoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9218BC982E8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176858723358.22647.10697261532720510438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8787660372ab4246866ad00598fe298740d8ca669ce3aef0b5e0c12ec603f3c9
Date: Fri, 16 Jan 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768587233
