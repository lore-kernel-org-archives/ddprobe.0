Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36AB6A927
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748305194; cv=none; b=fRkDvTObFll33Tsuwg7ELc61n+ahLoB1QaKDpDVOY7ggHDWK+u7VJy1Jf5HoIlLgHrnRu3Tw1rmtI4uz3Qde2vk9x0NSVp6+TI1i1UMNU35+khaJ5elrpWWgUa82waM4ybOZ1b1/wh/ayU3Ddduibr2M8t7dFW4pRcIzNkgACJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748305194; c=relaxed/simple;
	bh=NXbfde44IlnXOuWrCvexNtinWD37nuXazPdiabOa4E4=;
	h=To:Subject:From:Message-Id:Date; b=hHbg5E/DhiSEt+lfZTOO3y9Vqzt72NpMlkLKkS1b0g5lqjAaFGmEFGloOhk6B2veiWyobXcvqZwAJx97HXSLO2JTXkxpkHP+CTGJ/nOe7ZVhBWfJ4yqkuxIgm2JajUrj8rJ4zRIeMCHL0AKFyVidtx5j4emMom1k+XcOEXBbNsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=msX9Whmd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="msX9Whmd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CE6C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748305193;
	bh=NXbfde44IlnXOuWrCvexNtinWD37nuXazPdiabOa4E4=;
	h=To:Subject:From:Date:From;
	b=msX9WhmdOvpNi0fWchpLeaWC/3YBtjwdd0+AWg2Hi7yLR/dESAyUk9TK+JdrXHoP+
	 nedwXuFnsA4zbq/BB4VXOFcDmVug4T/7U/0gT1lLFucsQwDGL2KAFloBEbyHAFMfRw
	 R/YhCqzvenYSJD800LhLAn/gdVxLEwcWkhgMdwe7Vl2XqPz7cygqZRIcMW+BVeEL0o
	 Lw58jCM3n3+HUocxyCXTLoq024YQxShM/Z6AbHGbg58PDTTujtWPDauz6JPO3i+NYE
	 p2TN1fOroidxjh60XdpAe8PIsRlBNA/0LVE5Ox5NZgHDrkQBRTRsfgiJzSbeMrS77i
	 Nivw7JA3KH1BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9144DC5AE59
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174830519358.6849.13334405875015448752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 275e9c5bc83109bc42aead0a99df0da40ee01b3746a2ac44b3232cc156f4bb4d
Date: Tue, 27 May 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748305193
