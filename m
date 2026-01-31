Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE77239E79
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769894034; cv=none; b=A7lnLp/Pg1BGHjwH4rH1zCG+gwi5/X//aonTlywbI1nQhNxF5xcUtiyntlyULhzf51s1PYmU1jZAulr52kDkyKIgeI9un6pVWL3FIVwjNH6vHEQVtb28iv1ATD1YBgqb3VmtZhlmuLD2UMzvncsSZeAJrRCkuFsoYR6lszQDD+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769894034; c=relaxed/simple;
	bh=dd+UXv3KV/iqdAzaSto+s8YX6beBehkETDhFtMJ6Chs=;
	h=To:Subject:From:Message-Id:Date; b=kOAp8r9R5pSbejP0R5UpGuGFUEmuDsAQ9M1+9uQ1TXs5GegUjGa/ewKR/2Dmb81A/dY+KSW2GgSZUlZgJU79XX3KzYBPY1eEIZzlbiVt/QE1jqRPwrCaqhkAwcHv63izAPRnWtuwfFjVC+MR58iOJAzah6wvEsd9w2sbPeAEx1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nfzIu8bB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nfzIu8bB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DB1C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769894033;
	bh=dd+UXv3KV/iqdAzaSto+s8YX6beBehkETDhFtMJ6Chs=;
	h=To:Subject:From:Date:From;
	b=nfzIu8bBwVVEOPe7P5ziTtbBj9Rj1G2CFlAmznDv+dRolBzyyLW8slXBmOsbHW7+e
	 8CMFxOLSNbzk8azgvFKmd2AhpzdhlM13h+E45QE6ioPVQsvXu+Ar4KJHyCuIncVGpE
	 9yvb7ZVRppSLHs8p3IVoN4+rkPyy8l288p5HlIrlSFajLpmsinPFuGI1XQekrDSLhS
	 aMyDqPPhAajgzRHQVz5f2ozZcT+POHgYo27VWLrVGgIwXL5zXWLPjHkcgkkj8g4vFB
	 UZW1ekooYl2AYX/m86nd4wwCkmmhC83FMVuLu/dM714ktQ8siM5/H0sKsKaEDFU9Mv
	 DIWnXfIni0SvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9164DE7C6EE
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176989403357.16638.16156644459879595113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 853c1c54dcd4ca9d7b618f8ad8bfee1002b0ee9c29ad6509eda63d8b8034eb7e
Date: Sat, 31 Jan 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769894033
