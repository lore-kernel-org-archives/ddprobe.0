Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384CA2C11E4
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756818595; cv=none; b=ZWrE2P6MK8ieE1g81jYl4ZYgl+KFLJkuDME0NMMZQ3N5OKJhauGTl3O804VZnosLHdgH8daIQsq3mD7QXPmp6DJKv+lUSkXkWO4I1eiYwx8amZDq9LZLK/9hy47/eMJTRfS2GmR0iSFMpVROabIJA4KcUKkOYFCmGZ2wVJlvb20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756818595; c=relaxed/simple;
	bh=w1/yROGAfoN0KZQ+V+vL+P4FI9FbNHmKgQ1/LeCVUAU=;
	h=To:Subject:From:Message-Id:Date; b=fI81zQKQtPlKZPEU981pG4r3tJdiRcake0cyMHWZPfVFSxnG2grRyrag6eu0wQ5aoNVQT1kuHYKrDwCv1O+0qrDYFo656iX6/KOZl3t/bUZFa5P3rdQ8fgTt1pnj+NofUwTbgPKj8I9IvHabbM7fO+uVJ+0wrT7u4DEKs/a+vG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJa0MHTC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJa0MHTC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62C7C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756818593;
	bh=w1/yROGAfoN0KZQ+V+vL+P4FI9FbNHmKgQ1/LeCVUAU=;
	h=To:Subject:From:Date:From;
	b=iJa0MHTC/Dy8kwURRh1/sQ87iy4W7DOwjsX1W2HSmgp3WzPw9L1ColVSzYboFTXk+
	 8el58X7RjTE1EGj5Ecq0UevSM3lhfhfhWp++5Dao3Sj/CwCd3sAMZYztWquLBYAS44
	 MRQKJf/u/iLZqTiFN+EnKjkwl50VJavHHNor5upHvEJrhpp6A4Nc52o1htwRjhmSF7
	 O2vFDEkFrO4E2Y5BVLXbBVRQfDttdo1VBiThZdWplyYVLF4RDBNEhPFMOKhppDY1XS
	 xHm/9BqSZxCQDrcNkFLO45Hd5fGT9dzD/55Pf4ilangWICLvEXSpeXLGZjzpIBB9sj
	 YKWoyqRUjKn7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFF6CA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175681859357.20039.10518355931167272651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a87bfc354508c715a006180b14bda48b10b737227ed53437fd9eb2b1db53562
Date: Tue, 02 Sep 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756818593
