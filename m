Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A7E17A2EE
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 10:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741516134; cv=none; b=SuXl1XSOPczdwU4FiGOFmprMICaXBq5eCgk6mmFlo8zDZeGNCnzlIgSFXZMh+25F7yURQ91ww60eFrG3a5iZOJJw291axv6zcEmvcytp1H7nHl2dhaGyloEQMvVH8VyPaDjQ9TINKH2YzfEzaQMXhniWEfijmdndBPBD5avrMJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741516134; c=relaxed/simple;
	bh=PHRSTQVKa2ocguwTCIHztPlZrXOZMqpKhZdrEZyX3sU=;
	h=To:Subject:From:Message-Id:Date; b=eVHtHFwe2tBUO1hmhfrKyvdWwWPBIj1NOuQn3uulPqTUw+0x4+CVFrPdV5zFKLDNblWb4+K1lE/veUoqGWUqVr2b6OSJOynVCIQgKpWtW4E8LG5HQUwwXOoZAdz+cwECCs6S2XBfSjTvR6eAl+OaouzMySq/pKb5pvlW7oRSlHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ci/5E7B+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ci/5E7B+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F70C4CEE5
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 10:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741516133;
	bh=PHRSTQVKa2ocguwTCIHztPlZrXOZMqpKhZdrEZyX3sU=;
	h=To:Subject:From:Date:From;
	b=Ci/5E7B+W/d+BrpOUcIRZVUztk4SWo3oVPW9p0J8wZ8kE+H53HUuetbAXtYMHnLHp
	 voKxHTcrFLL0rShjQDcZfWHgOv1IdxEsXJEYz4Fsr6Xz2UK/WQYdZMi9HKwdnW6mH3
	 Za3mpDS2IZcqXSwKzJXrBaKZuOETVABVZd7kdKJntYc4YVDzZD058fO9Gq2w7Fs3n5
	 hS8AV0VE1ckCOZ+8Vf3/gIxSKvxSC+4kaOVtxwOqlfNkXzVqcXlfuYepQP8zTFZhRD
	 m+N3urunFE/LXzARio6AqKHdwu1laNvuySLXeIEfB7EI5YIS5v5xu09gYMEyw8sqZ+
	 7OYgosIw+DeAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A18C282D1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 10:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174151613359.17159.4506630962658134326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b74a5ece8d8b1a5ed67f3623eeb86eab4579930eda5b60f6e252977bf81ed80
Date: Sun, 09 Mar 2025 10:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741516133
