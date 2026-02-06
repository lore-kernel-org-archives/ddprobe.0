Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D575C3F0760
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770387833; cv=none; b=mCfJTd8pUXceChzXzuBCBYUTSlx0eFFsLf8GP0w0JaEc++9jL10OB35dQIwDfm+9PjkEbq5RzGeP1F8qT1piJ5gmAknDIGrGZEbMrfth1LPtnDzVL47jAGUGv1Phv9xtbipGYNDPEriD7hZWyedIj/j2eW9temIGRFs7hIMf1+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770387833; c=relaxed/simple;
	bh=lMG/PDxkxyWL3iWJblQVPbbLXl900G/rWGyesA/gtpY=;
	h=To:Subject:From:Message-Id:Date; b=o1E4UbEd6fZbL2r2HOWEa+zxZkfO6R2k7Q9qdYEiuM9aUVLXEjCglsk0T8QPBAcN7rjhdITNq7QNQirEkxP3iU9KaS0IGdGSZX57kKWTHIkjvwPgOXBTj/VQMEfNWuLb0jkxxRFBKdCRYpxBdQbLU8Zv6XZMQ2+dXIoZI+wef1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rWdVGIiM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rWdVGIiM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E1DC19425
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770387833;
	bh=lMG/PDxkxyWL3iWJblQVPbbLXl900G/rWGyesA/gtpY=;
	h=To:Subject:From:Date:From;
	b=rWdVGIiM1/06AHUzQlsMcqQHs4HQC+N0PkQOL0QYXOjNZk2M0tMUzhQ6W2NDzNkre
	 YN1+UvCaPSPHNloZWGK8+tluOJFJTNQveCMaigDR+RNMfQIfrQluZkd1bnmf4Ui6c7
	 BoqdLLk/KXQbU5qL4t/ZNZkz7LMTWixEf/tCJpxBPth6bZKOdZRqOyDiAmjMZuH5pk
	 bbkWIbclv4SMWxqPuErLn+y61fVK2eGT1BwV757wv88OpgeUUc++FgzASqvA57ApqQ
	 hxg/8gWVmETHmiIp7ynVK8bk7zrY4QMegl/FjIOCIzp989cJqeJjt4teFzlKppgksf
	 CrnUqnrlDtyUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93036EE20A6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177038783358.29652.14178271668223315086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebf146c9f0350fbc4b7114c7977cc8c4767772a3ae8368d6bb18f228972004f2
Date: Fri, 06 Feb 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770387833
