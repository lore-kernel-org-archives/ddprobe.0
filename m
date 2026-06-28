Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CF583264FF
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 19:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782674314; cv=none; b=AM36iE2VcsO3cmkWxHfIgSgs+wiewMGUdxwPgT1rYW8/ICaEhtBGlv2q1zK6kUhQKVitmXP3rsQOYINN/Ceba/rh9wgLcg4rf5A/H5zhbLb+ArvoSWhUKm8bbu0GSak7jiSX8hHYGCv62smnZ0auv3kCOZ3bL5ktH1mdQOO9Dw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782674314; c=relaxed/simple;
	bh=Lj7x5pHV8vU7EBniBSIAdcO9mWb9ihTcvrvRQhB174k=;
	h=To:Subject:From:Message-Id:Date; b=Jj4HocfLxuWnmuBAuxOsFFaDvVEh3poWC+XXyXlEFJiUDLje9Cr0n6PaykFG4xfhznnq525EVYfChbz62JyDvspVQ+0vIRI0pXb1hGPxEsvD+dgIeV2GuJojaFRbDZDFbVoGEKL6/m7yKc9Ufw6juUu3/Q5EoKzZMUZF2QMLaZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZIoxf+4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZIoxf+4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB258C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 19:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782674313;
	bh=Lj7x5pHV8vU7EBniBSIAdcO9mWb9ihTcvrvRQhB174k=;
	h=To:Subject:From:Date:From;
	b=HZIoxf+4LOzFFz9Tbasq6LVdenAXOzJKQ9iUgZ6VxKSK4nErSGiR64Uls5OjaK9uE
	 1pHSv1LAkugiD1MI4gBYIwEDDTcJ38U5JLr4PezoM6SAQjxsbYx1gP9przrCurZ6T1
	 cOnSkZASCES8gyDATghPF7ZRdlulre3rtMNPmFy7ELFyUW/MAeP4OASx4D+wbkF8SC
	 dQhW7m/bXDaJQOfAXTBvR4LhK0kLnUZqsF51lFhRFKPVWWw4KV6UBcIV3H50xENpK5
	 UmuZmef1RJr/4cPhT/wMcyKDbvu3x0u6VXbugrQZnvaJeJZ6I2IVLDFSQzmFJCrCaz
	 d2QEqyeg5lARw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00B7C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 19:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178267431368.5882.2576816389240272139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c56d3cb7fb3ed144e6339228be3338a3023388176ae6aee526ffc6514258b7df
Date: Sun, 28 Jun 2026 19:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782674313
