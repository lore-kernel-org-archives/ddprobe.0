Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77AE7E545
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743194994; cv=none; b=CVrC493vm5WJ8Kr77eadhavlDGVtDroL1TLh+Kal5agqIUw+BZXkkdqOzieCMD/hv3b+EkyQMa5QEMi/ir23+HAf6o1X4ELYj+e8DLSqZ2muQ5hcDwc/kYHUmYb+wBmyBqPioMzG5RDjwL/+LwAOM9lFINNC3tMsw8GWLhhDnwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743194994; c=relaxed/simple;
	bh=dH0/mUrLqVoqWtw1261Q20KMI7jshgx4zHHA4kVUeSU=;
	h=To:Subject:From:Message-Id:Date; b=o2dcFLdOUKsrvbdLzaYJq2xIyyrz620xJ3AS88+Zz90nX3evQHmJre8LQJVyd+s88vb2YEBzt9B/z3GQasBmponY8xV+QiHiTFu1A1sX9awjqhWssavD5PTAsqASrBTV/AKBzvV81yMt0tLM7hOEBfGrgf2b33C+Rmc11VYjLJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U2xYbEC7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U2xYbEC7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8AF9C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743194993;
	bh=dH0/mUrLqVoqWtw1261Q20KMI7jshgx4zHHA4kVUeSU=;
	h=To:Subject:From:Date:From;
	b=U2xYbEC7XRhWGMjWUhfwdvJQlLnpGSHrthSniLYmNI40hkx1scYdEaYjGES6byBxb
	 q1m+kVjhlxBR66tjlK0LDbdHNeWTXPavOzgMHkPo9qlNCe++VA8cqIEBFYBNbypjoD
	 Vsadlxv34pGoxDchmmA5sM2XUj9A8yiVXm8UXZFlx0nwHlJjrnaOfR9ga96AuT9rum
	 IA79tFwqHWKq+dqb+1qAn1l0qKQcuVzaNY5wmRvQGAmm9rlUFp2gW+zQMbrFwhCRYT
	 lgM3YzRLbpYVS6EaQyob/cdSt+Se260YLw4dwUFk99PJwc2wgluwNL2RKdwWgOedbE
	 ieGUA0msnxOPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B421FC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174319499369.7685.14092001290564178234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78438000edbb08d467c17d48feaea252400a45e9f14ff77dca75ccf1eb0b0e75
Date: Fri, 28 Mar 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743194993
