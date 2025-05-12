Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 514A72576
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747025994; cv=none; b=ubO0wJASFSIRwM+HTc/Y5vI+htY0bxWIUyfDGQybrC99uN7IJoCNJ7n91LIMa+a3ZhARjY/N1dcusgeJIweEJoB+3FQnnY5Wlbjo+VYcnx+cSwOW4yTy61Hmr51aWQfwIs4VZ1kuyqiMiUCyIWJgSqJWv5SsKmbjU5lC6eBZXs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747025994; c=relaxed/simple;
	bh=nJxvSEUmwCZYrLUl4gOCIjEc508mCwD/CH5E3vYcoHI=;
	h=To:Subject:From:Message-Id:Date; b=ocA/8CBu1s76/GNZsZIJ7MLXrde7vMNriuLljxgaEHNlrTsARLzd87BSG56LJObDQvI5FqXLqJa3kT1DY5ypRz+PQJrvXQ0Xq5XyixeI3SnMvU789nWlkOrivPx4CdQMZG33YyMVtB4Da4HaIhGj8q+tsY4FlG9g9HXzL7R5tXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JFIL7LTo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JFIL7LTo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA719C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747025993;
	bh=nJxvSEUmwCZYrLUl4gOCIjEc508mCwD/CH5E3vYcoHI=;
	h=To:Subject:From:Date:From;
	b=JFIL7LToAUWHV+4w1WRAA9aZF9oWWIBwVnNYBGhKD2o1/9l+X6avHFD+oQhf1gUD9
	 ZFizCYZFFrZ0g34zZURABAePIDBaDkTny50lEBOUp4jn+i82NDkpy8HXrBruEE7OB2
	 V/nL3K6hruZU/88NjUtInleW5du094fYL/F+xabgHQtC8dPDSYiQhKk4wxJSgxOlJn
	 Wd2bR27VsfHdfEGTGvWGkB4tA5Vfwvu1pEU/i4ZEguaJ3D9ScVorcYSMT9ddxFOQOB
	 s4DYEaaqU4L9E9QJdWCToofI0a+ICSDu8WR93J7Uvt4hiE+gix6nkrFFCwg7LZj4g/
	 LcrM8V/mrw+pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AA9C3ABBC
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174702599358.24253.8932449180402486853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70dd1b480e7a372bd42f1e075bb80983ea03c31659d462916ca7a7e5702b21b1
Date: Mon, 12 May 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747025993
