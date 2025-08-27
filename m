Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27CF527E05A
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756322994; cv=none; b=H3Da9L/Y6/OjGkPJY/lczW43l2Hiy6S2L4jkCkLDvBYj7Ocb5Go/Wx1FGWtmI/O0Nzgd3kADiQKFqxjAw0Fl95mJrRUxl+WY+X+rxwT766tKvsNHzb2vWWFID7TJ60YXtk44vd4Y0EW1VnUoN/vqq5xdx7fj8pKiBBIDjMYSS7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756322994; c=relaxed/simple;
	bh=O5TZSE4JSfPDtq2nedmuirxPqFsNhIvejoDkn0P+8bk=;
	h=To:Subject:From:Message-Id:Date; b=CNv5eAC7CxTTXRmTxlm4u/0w2OlwyUCH9Gf2T6im1e0NpHmQJrikLcvnKV9vmO15fhhdJ1Lgc2kdHZuCvE3tyrv0zVHrbzjQfYFYu/8hRcDWKkOIomhtcSxaSIOGHrLEf+23kxsZ6c3c/dKHUaQcm2M2oqCKlamDSli7zN/nu7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bBU58BQb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bBU58BQb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58DEC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756322993;
	bh=O5TZSE4JSfPDtq2nedmuirxPqFsNhIvejoDkn0P+8bk=;
	h=To:Subject:From:Date:From;
	b=bBU58BQb0VdbfdWCBr6J0yQg3xkwvE1ZHzNhGf/TAdBK/MEeytqZf1inLoBUrioMr
	 BCRzNARm17isx0cg3bcVCAdF6FLUw8oZOq70Goitzj75uWWRZ6o5WSwYifV4Iba5cP
	 q8YeJp2LUEQeZE+fua0P6QSCcYJjnxROoowoXOfqJgJqnd6BudnaLECa0TNoOrGf3e
	 ao5zNrrvIAQ57AOdqKdbFdpzepuwg3LgoLqDxFyYyPdATNe/A5HT5x9REjWUaiTMFK
	 0hnHImN/WBS6z59buQXrTw4lAPcX3qnmwva/RwF970Q+nyqq358QuhCcacst49dfTV
	 +OUCyLGUr+vVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9659FCA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175632299360.31885.11551606115886021500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3a0ad22a032603b9010126d6555c1d1efccaa601d1c91cf564ae03963ec279f
Date: Wed, 27 Aug 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756322993
