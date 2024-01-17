Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE8ADBE49
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 07:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705475297; cv=none; b=it37aFJxTG51XL68Dzzb4w2yDqLAQ8LiXDNM5+GtL8fm6/Xiw3FICxxDlW2AteQ0usEZaopiNr32mtZzS615uJRThggn42xcqbdUX97aqw9lgrqTVSTxsNVMWFYPOff4i1V8l1wbPqSI9R+xmwRIdXdVQW3hMPA5bWNQTg9BF0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705475297; c=relaxed/simple;
	bh=31wHgRC+qmP9NNxQRsJeI3LWqCQk3ejgIVfiYre43Is=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=O9MTU6WgeE2tZbozDRq86K+pKh6Zh+chW0t9PhMcgNBfZ8S3FrGkHvXTN1UNaPyqUfIpvOYoijvh5XVwss37uQiJQ7uFvzJQiqIEzb9Wdoc8KvmNPuZc5wg66OwOHPoB1NaXG5Pksgyn7GC/Za4BKHPCT/MZdfS0dDbZmX6UfA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mKTkb0n5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mKTkb0n5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78089C433F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 07:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705475296;
	bh=31wHgRC+qmP9NNxQRsJeI3LWqCQk3ejgIVfiYre43Is=;
	h=To:Subject:From:Date:From;
	b=mKTkb0n54mF6hRUL0Oj5g6bcbAxpgLsify/7ilQDwI/wrZFU0JJ4/m8Z//gfTfN5E
	 uXOPAjGJ/n0LCssqclNS8bBJfveEsV9mVEDUuahhrdjS0tSTlV1fUDPbnXxFAO4nfj
	 QnmL1v0dDO//FFQxWBizcyJNJLRQxs95qjgkFvJN4z5wUmIhP70fuLnjQqC9CwEXRj
	 j4tqpNiqBftQZUDSGZibHVsWDrpnHDwAckHmIz71tQ9IUa/HMOZNiPtt6aB8+Tda3N
	 23pOctCx43bjhZPvPNdNcaB4G+kySfEsDj2539LYRmn1QKBszWXVKZdOLbaWmOJ6F1
	 2lZ/e/60V6fOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C95AC47422
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 07:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170547529637.28370.3964999542595215444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22a8a0f9f47ce2c948ce5fadde63cdaecae85baf15341b975b5a0552581f2dbc
Date: Wed, 17 Jan 2024 07:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705475296
