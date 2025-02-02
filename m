Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C59C17C
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738454754; cv=none; b=AiKuvXjuHian/kyFaYt7gndMKYcKf8M5CrBK8bOZCQC7cTjllxCbZ37bpGt/cAPLzZDYGwqMVAlbZvJzCcGSNAL/AMeXPezpk0OjKxt+DWI7z0eXxVjk2go5w8XPgOfdE7pEsNsAQHFUDSdybA1BgcLm1NkCEajYaIYqSm87fKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738454754; c=relaxed/simple;
	bh=ihxVU+lKgOG6v8zaa/0KyxGBcgxiqHmpRFS43WALq7w=;
	h=To:Subject:From:Message-Id:Date; b=jzkdwZw51fILXL8UoUZtJoBk6ihF0vu8ClNc0iGWstf6WBwejmLa6XRhrpMzxUqqF73sTrBMjlVAmryrtZnxENKyjtDfZX1nJi8m28BiRsijavq0AD3RVJVgdbdoQdNkRiTTUORpQ1jW510Z0DDw4yya1KxHLz/wgwChEijySQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SuvOqXMT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SuvOqXMT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE17DC4CED3
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738454753;
	bh=ihxVU+lKgOG6v8zaa/0KyxGBcgxiqHmpRFS43WALq7w=;
	h=To:Subject:From:Date:From;
	b=SuvOqXMTYrRafAVNaRWEwiDkE7g1z5jhuSK0MdjdVj1x5vjZ3Zf747CLNUQGtxXHd
	 dXPSrQpc/8iKfjx/Bk34+QAH3GbIVsjvUJcKJTwGFN2y1Xfeni3+5MIT5VQvub8FyF
	 eie83qAj+HSm/eEJg3S6L2uwI27To5+zzMVjXQPapK35arLocEqeXy168Uky7agzK0
	 3WMyx8WkZmof/SdooUmBw3gyRDFsnJ+wuq3CZ4wKQCJdvuN2blAYuzbiR58E+BARbG
	 HBbwo07gelw1WlNa51hcYQA8HiQaq55VHF/IYk7BsADBaeDl3JLprthGKP+0wKdtwQ
	 7+W9pniPSkrYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97785C0218A
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173845475359.9332.11897704310809955429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d46028468d2285e7a98217624ba5f4f73f88048f3a424fcbbf10727d62cc83a
Date: Sun, 02 Feb 2025 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738454753
