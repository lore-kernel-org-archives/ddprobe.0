Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAB882D77EF
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755763193; cv=none; b=mDut9NsFimBAnKB7W0ddwbr77DActETOrQ8LW0jSOeV5UepKkW6AuuN+f8haidDpjScbVba/F5/pKwWpweSKWcz88VL//T5xNLiutWVBTSuxY9NdslCzRbfoKVZdI+WaH/hJhYMIhSGuMLZ4kvkTTmSM/zjmoKXU101UipwY/5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755763193; c=relaxed/simple;
	bh=0bokS5OFDmwpg2YnaOTbSwwMJSo9soUUaSVY1Df7Wos=;
	h=To:Subject:From:Message-Id:Date; b=qGpWBYmhiSS43sJVRYxPOfhV67wjCfszMpIqrOZDtg2VQDno41kNseX/Smrdmw3mpG7OjgH34Qt11g0paH8+OBX+/OnurHZTOkIauT6glXv1XGJYn+WoOeMWViXR+S7b+I4JDtbtv9Cj+T0a0WpAiq6DZhEA+pyhId/OqK3JTEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUXLhaI3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUXLhaI3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1176C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755763193;
	bh=0bokS5OFDmwpg2YnaOTbSwwMJSo9soUUaSVY1Df7Wos=;
	h=To:Subject:From:Date:From;
	b=JUXLhaI38qw5Xmz/Qc7Q5F6QBHbXn3X1YH0IaoIQP5WeIy4cai5Q2ujN9yUMJtOUV
	 X5YwwJ0UmQ8+oh3ILL5fYbP/Pj+4P9DuZk/fNi057MwjL/DuW8Ii2DsVeUMzjoJRhp
	 jA6+vRopuqrZCjMYKUhJ4+bXHaX4zmSDjkRB6DGWWltbtjPftjBNj7vX4ZxzF1V/hZ
	 /HN+apZor4ebRtGlyWXxM+Z28IWNvFRmOp7eH6krJASjw74zXPyaNCHR4S/3qMJfh1
	 OZnDCNNQ96AAvgFwUrtaKhWBKbn9zmpKReo7mlKapoJCgkPrPU04KIHq69xNySnwvh
	 DlBsGjnEet9Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A50CA0EFA
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175576319359.31697.1709573846738681433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f745a2080193eaeac7f9a18d923f2829946545b4cbe1d231dcb952075068720e
Date: Thu, 21 Aug 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755763193
