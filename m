Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F72819AD5E
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 14:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721138723; cv=none; b=CNXfagoo0ChT2WfC6lvv1Q+PJz7i6M3L9R2MB1jMosdfBb6T73VtyA3gENQm9fp4o5bx3u8HDuY4gfyvQBaDxFbHTrZXVrKYMX3wv2Rb7+RFGJDDhhKV8Ls6f4XX3szwM/3X+KHzOK3YQdAzSLDeET0IMc69oDonKdruz57LZlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721138723; c=relaxed/simple;
	bh=E64UE4yFLN+nPDHMqjBfJv/v3JRjzStKoVMxr6hOYxs=;
	h=To:Subject:From:Message-Id:Date; b=b3STE302FzN0yqnmwb+b8d+6sGFcOGnS1i3LDi8reHG52ExD/xO78EbYfXcLc87+VoCwpgwAu1jpEosn0adBslfU0QstzUd9LTgvmPtMgJvJ73ohIQaWsCqM50dLHkwNw0d3KZGc4eOeiqqoYIBDcBiT6SuRVqkLaGl2phYccJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+KDyuhW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+KDyuhW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D85BCC116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 14:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721138722;
	bh=E64UE4yFLN+nPDHMqjBfJv/v3JRjzStKoVMxr6hOYxs=;
	h=To:Subject:From:Date:From;
	b=H+KDyuhWMGGVVSn10h9tqnaWGhUm0pu2MEKyMgyhW+kLjjmFhkIFAb40M033PHRMJ
	 YsvnxhmRMdb+jpLhvHkNlbfekdg6ryBTXWb2kkQVPaFuE4A6ffZ9EehZMjtCrnSfBg
	 TeODBzZS7utkorxIJkMEDl+nwIQrDsBDRZ7CYpRF5FDF9cavDEgawMdnk4eJ8y5vpS
	 zBUKXUD6nn7UHHqXnzL9pMF5QvF7HrNSpR0BP51itVoeYmUjNX1XeMgZ4T40+dcA8Z
	 tRq1PatO7x3HMXiPDJLWWe8scAYRMvyPNrp8GR9FS3IxqcIyvbJv+O9bnL0zxX6sSg
	 6LEKmzi+hnTtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6A59C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 14:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172113872280.13532.1401625142705360252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b635256ae26c386e24614eb5351202021ef79fe164f22e18258d198a7f22bca9
Date: Tue, 16 Jul 2024 14:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721138722
