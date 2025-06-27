Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52814C2EF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750984795; cv=none; b=SwXnKG2EEXMMzN+OxHjH5mgYdf/hiwikiD8ew/q4st/jpuaSw5TkoNPoOQCRRLfxTrt6rKuTNOVBvxql8B6Bmc+xRbMgjcBAVS+by3YEVSbGe2TVzQRWtMxFFEBFFNAzcfqvGmhPzirU6mLLObnCkvv1/npMISF5rFZw0pMwxKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750984795; c=relaxed/simple;
	bh=J37wls8jLcFMxkIrqUQ4/mAS7obOqOACiFvB90Fzeyk=;
	h=To:Subject:From:Message-Id:Date; b=LEtd7lgluw3xmzXR0ix+pfdkrkaZ+UNGNtO3AiDlmLZ1ztAa1pBGwfoB58+2eGzrqmmbSxTtz5G9zGljkyGVRvGpYZpn0+jzLZz6N8cWpHZ4pAVcRmpWA5P7VNtoobnnOYGXIYbt8mjkKzfPhqvSBOjgmRpgPgZqRKSLNHNWjX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCYQ6cQZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cCYQ6cQZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81FBC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750984793;
	bh=J37wls8jLcFMxkIrqUQ4/mAS7obOqOACiFvB90Fzeyk=;
	h=To:Subject:From:Date:From;
	b=cCYQ6cQZACzrJLDu1dKSsIUfkTmi18qWDuQheFna80XyRDNMMBgjSe+TjznLIIdzQ
	 06QGlHsxf0NQxxKvuNC3mhHUubNrFDYNb3VxyL3Vn6pkcSisppe4zfnUZNrtbyfake
	 EpYws7q16csZAWFJ2ms/WkHes3Lz4y8RUXvaT7KEpuJunGtQZymjiCxlgak+duMPUV
	 cYa+RjShYAx3JCCSaXew0AYkVOZzPwy8qGWuwBt12OsWDq0KCklr7bcAaU7I1zxqZ3
	 6xcyL/+0woe7jz7G1mA/WuMbbNp4/v7Dct5TUvM52QTN8zct90CFqiNZtEN6rxKRQP
	 UxPVBCKMtUekA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9240DC7EE30
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175098479359.20810.9330955144559386942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2531819ccffdfc1b0c6fb5a7ae58f6d5acbf4275c4c4b6d4aa5e4b28cc52a7e
Date: Fri, 27 Jun 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750984793
