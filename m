Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151507261D
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752631194; cv=none; b=snhZ5oGrsaTh5j7G3q8xG6qx/KYNFJUh8mRfWjR7M9U8EbDoJ1ePlQAGB+vOkvb94y4vN/kihXiy9kljxYHFB/3ydZ14ybyKyEufz4dZYKqRjher8v9VN4Cnij9ohB+/4gdFKJNp3/XHes1bGr85Y36ArqUfqxf5I5nZ7o/cVU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752631194; c=relaxed/simple;
	bh=G7ZgM8XW7Tn9cBXMmLsw0LjwgD9R5+CfhNKIC/iy/s8=;
	h=To:Subject:From:Message-Id:Date; b=jQxNO4E9bibYVba8VQukIwpw7qgCjJ8dsjy4Zp6jHZXhtgy8xnyxZV0Pb3nmL91q2/L9Skii4tcfVNDpD+pqZHqDgaUtMfmWKY2ZSwhLfpHDcU8UuPo5JIlgD70wt5kW+5OOgvYALxolCxONzCTcrD/NWNKTH98R+hL4mfIVEVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pY3nPANB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pY3nPANB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F86C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752631193;
	bh=G7ZgM8XW7Tn9cBXMmLsw0LjwgD9R5+CfhNKIC/iy/s8=;
	h=To:Subject:From:Date:From;
	b=pY3nPANBwvB7BaCRE5I2wRLrupLb4dWNG2vnQDm+FmB2sIcir31SAlmwjp9KgD2V9
	 9Bpj/1gJLQh+TvsBzNHbkJejnjeKqlgoEc0VhgAvuJoywOThYD784VTsWwh/wJKdVL
	 c/eLxbn6ddGTAHiJv808zEi74VhL4cCdgL5srdXFwLnalhzTY94rf7tPoUMB3QxCzE
	 Bmn1IdoZxQtzIqBOZYhLNwJlJGGmAa08iRNju25V/8XQS1/3s3QMm2NsvzEHsMm9Ga
	 5DRFMi3RAyzRj3WGRdtBm52ttOc4EOQ/FIvmEYKBIEynq5sTJ15B4Fc1rCl9ArOP9H
	 Q3YR2ZDkly5qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93210C83F17
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175263119359.7908.10683962780846651327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf29faa50b1b724ded59c9ec89cae1e54ecddfd5e2ae46cc72e5658deeeee7b2
Date: Wed, 16 Jul 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752631193
