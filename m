Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FEE2AE96
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745902794; cv=none; b=ut+OMrCBPoE46ROSUtypMsQgWSMVXHWeQuMwjqSZre/QiMtUh0SPg4Cb5xSdpFqEGNoED9w85zuvU2a9koJUDFjeNiKamKlujVWopCNa8kCBLbeOWLnKhzEPBJN5gBsPVMMtEd6F1KXcxMPhmeq7ZZRQhr5lEBQWRAxy/bnecUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745902794; c=relaxed/simple;
	bh=xF4My74jLSDjnBGnqkioGDOp66VF0kFniLn/lZSFvaQ=;
	h=To:Subject:From:Message-Id:Date; b=qZMumkQviJNJo0/VAYrxeCnB1gVNGMMk3znVc6ds9oUH5Ovf3c70qxJcSeWzzbxOpln3q1Hmnm+PYUtOgEvRfZkkX6O+Zn/I6W6AZaCGlgU0LT1MdvIqL/jUzAf+LZiw+lEwF6ksx9ym3mTZsBf8vjytMfKK9Otd6LAVuJIJwMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=joQc5tds; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="joQc5tds"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D15C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745902793;
	bh=xF4My74jLSDjnBGnqkioGDOp66VF0kFniLn/lZSFvaQ=;
	h=To:Subject:From:Date:From;
	b=joQc5tdsoddHY7a/VpSBE7k9xbEvnCDVn1xHw+BkIbl5vEOKgjgtB30Z/Z1fZnLG+
	 /ky7uhgcSZYbGXV4WOquSy7gS/u0301r0gxZtl/fW82MuuxcmAc/C6InTPz7AsRluj
	 LGjhs+mLpDx6Hp6If2tIyLj5SRbezQ23YcJ2Y57D2nF73JNevls72BEsxQqrLhWE40
	 hgxXc8PG0RjKwPEBqrVygSVIavfCWZOIIIwQJtdmXpHCydNhAtM2nl9YBBL6vTxS4v
	 IWLBSF3ajQ96yhTqYGMjXmoEVDQtHEIK+YZ7P2idV5Du2VDJpKgdBSKboJIZ7xSjzN
	 FZFVvJsv2N2AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90733C369CB
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174590279358.861.5296080011953143923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a54764e803e8052987a8a4e7e0c483be181434d46721c2e222a5cfd2f033867
Date: Tue, 29 Apr 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745902793
