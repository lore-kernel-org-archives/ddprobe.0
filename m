Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50EAE49D58B
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790005834; cv=none; b=i83NEzakFMCHG64jaXtR+nAtQC6e4eKBcI16JqsSlfmgtFKtLtxhj8pI6fBxJJJnD5YiwKhPbI1efCd5n0sB4W7RjRHVt7YNB/cnU1C+Zl5V0Ph3IzcUb3Z9w9jGbz9rpfr7LvzniZ/0IhZzzR19LK3smUbpKV8239LZIBuka94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790005834; c=relaxed/simple;
	bh=ZOrEPeLxtyEslvndbWMjv9etoU1v7sgWvzU3NjChb80=;
	h=To:Subject:From:Message-Id:Date; b=bGHBKQQEen5jcLrJvlBlW/8zyMRSlLb+q+Cu0glS/6/8B4jcD4BxtVDpUec1LhVWHe5J4pMY0GwhTRzWx/7mHRs3JGaN++J+KuSrimM3B26uC3EYxHdsjHQxgtAiELmDbSOWL4MojHvJWA+b4N99RhQHGBwdL5vO/LZWgOLRteM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQQJ7b/A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQQJ7b/A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5729C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790005833;
	bh=ZOrEPeLxtyEslvndbWMjv9etoU1v7sgWvzU3NjChb80=;
	h=To:Subject:From:Date:From;
	b=nQQJ7b/AM1cDUngomG9frKkBcW5ItZt20H71Ii6l90umq5R5NYeLjGbQowrlJezCS
	 nsUPNg04vipapxaK7Lw/5pWDJLXpSY/HKYHajkAazXIqFYTHxa/9w56RAaUP8Rxm2L
	 O5xj/XUoHnfxjgF2qafX7kVJrf140deS7N7NYu/Ch1ipXm1gppdUxAVZIKLfQspW3B
	 ng7vQe7RbCE2BPTNAI4D8BlJICJgYZ9+rPxgOMMBi5Ud099bpBU0iG5drzPqtJEXgq
	 etsNvDNp0cJXICSsbFzpIFPKMUq/g7PYLDB4VVZxdwozwASo8mnBVPCw9RzKoSuubP
	 50SwkHfGchhyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B94C1C982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179000583374.5203.6780666849023873643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f14adb8454a133057381451ea8e72ebb35b70840c78345cf4656b0fd0b62352
Date: Mon, 21 Sep 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790005833
