Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303212F8E8E
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 02:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778206054; cv=none; b=LzN3pDYV3vCC1rq8wFdmdNWAhstnr986smDd9nxHcEoprbCOpMCytdHHC7+pbfC38p/WWkMU7340XrkbcPzxmQgvEkpYhCulekpQqKJdaoF34pMwu0QDumJ369e5zQXzIxCS+lJ1wUVz/5UsbKZsh4k6T3SJRE0Fhgy5ePBMqPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778206054; c=relaxed/simple;
	bh=sO2B9q+gzY1njT3ZmAsQdag42jgzWB4CD+sZYiUBIpM=;
	h=To:Subject:From:Message-Id:Date; b=Kc3EJ8pWwZ9wJQe9j4XT6dNYVrZf1b8jzjQiUhFJ23q8BcUysuIOuck9mXUPmCYX9dMWOs9L80FmWG66PqZgqHXfDYvx8knldZkRsHzJocLu52G5o1SEoSlKZ4J5mhRiAFInmi0DboVggpL1EjBD2dQTY3IfFbCn4Wk8Ynl560A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iBUyrxve; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iBUyrxve"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E7FC2BCB2
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 02:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778206053;
	bh=sO2B9q+gzY1njT3ZmAsQdag42jgzWB4CD+sZYiUBIpM=;
	h=To:Subject:From:Date:From;
	b=iBUyrxveIpYsFeEt3RsSx1jMTPVSIb9brB7R4QLQLymrCsj2SU/YLLMiNiCTmbcBz
	 oHgthqCMFx12jUSEA8VurNPyAZpFwR9PsNhFWHKotIzBj4747OWKrEeeL6ANvYwHTr
	 E/zeXjgip7fCGWgWoqLXE1g14m+3ur1eKtyTFSGI9pniERKonxTIXL5M57lTW6/mbr
	 EdSik0/N0IKZ3ax1QhYKWMdqBkNp3mpsZ6R8LmZqRFhTGCbN6rou1gLEU7DjwIEb5h
	 7bOfsN3i6oNPZxBdcjJlpuKhem+lzevRTaHy1A/cpalqsXLVb6c+Lg+NWz2tR7qYua
	 lXyRc43itldqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB51CD343F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 02:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177820605369.16068.8110697239215699163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c842eeebc71975b52c70e3809a356bd2ff1b473ec2c38bbaf878756ba325e730
Date: Fri, 08 May 2026 02:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778206053
