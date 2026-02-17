Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E4D8263F44
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771312494; cv=none; b=rHLRJp1NlImHdr1W+n25koljVh8gj7tLWQRnztVVk+NwuzXv7IuuCxrnueQ5VyMoFt9pbsHoVXbPj/qRVx5hbjpUajKmzY15p9+sjhb5dd8eoVa35pXf6f/Fgo2+OVJ1rBbLv/IoZh8wWA/grHZNxO7PIcuSkqCfYseVPlIcGEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771312494; c=relaxed/simple;
	bh=Szxwk5GEH0OePfrmkETVc1O++YIRl+b9tj6OnMR7BqE=;
	h=To:Subject:From:Message-Id:Date; b=khzmMkgBDndJxMi6PfTq3q/bCxRmQXRjHIQxkJprWTf/QjxI+MUxS/6tFhdcqCJyBJZkYFCiuacMK4beoQKckL9PjTeRKJhDESBkFokT6rWSj6gjiMMJCZ/lCsLQ5rmx4gyLniXLyq4RVWDS/b5vrG+sVyYatyBO+gCuFpeXXHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D4jliN1W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D4jliN1W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B9CC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771312493;
	bh=Szxwk5GEH0OePfrmkETVc1O++YIRl+b9tj6OnMR7BqE=;
	h=To:Subject:From:Date:From;
	b=D4jliN1WmV7UXpUIrcCAZqsL4MDliTxMv1LyZmZAgcARXMFP5gqLnK0MGw0fY0AHS
	 Mf9LCkKzDh51aENBe41AtRut2d33g28ExAefkms6DaTXrnsdVDDCL+D9vnb3163eWQ
	 0k+EEwdMVrZVfYbhzwr3lcBx0Kjx1KIzOTU+clGJXHhEsc3oV9bzgrGsNlsV8+NybD
	 sEYg8G7SnHFlu2FXcurfAWDV/8LWv0h1OaThaywwJpw1G39HrBRvC1o/B3VO0KyTFi
	 h/O98hkwNdrkjFkffC5GjZAtEIeLcjAQ9oJMIuWsI3egsMwRx5dNF+fRnmswfoLq9g
	 MleMI1Jk+ldXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91936E63F29
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177131249358.26664.6489160245274068819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e50663734705eb90dbbf83d302a1fb7b5bf0f124a4a37b87181bc448f948e3fd
Date: Tue, 17 Feb 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771312493
