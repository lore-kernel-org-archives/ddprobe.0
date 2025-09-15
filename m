Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E74F277C98
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757954994; cv=none; b=P4gdKwg/szIRy6NHkTs7N0d8PIfGhF6bupBvLRndTFn1fOa48q4mgppbP/OO268DWjTrX+YQqvb/akHYA+wBwffXIqsg5v3zKZ/DECJPDA9lACnNKT2qtWYKGi+OnLO8Cgj/NSfo1o6BrVLT0ixqo3FJONdwAhXqguuRBQysZvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757954994; c=relaxed/simple;
	bh=dVbxxNoS1nwrqrs3otucPuuQN+PGF0FRcLSAAvBmM38=;
	h=To:Subject:From:Message-Id:Date; b=iC3/SKOjRvJ0krdXbI47SgdAfFkJihIJJ2tbxGqFtejp8xNOnF7ayseWz1mR0rGZ+pH3iQoN/eUxJsCUeBdAUuLuLNWRJqBFvMTpUKP4rww3UwHaGV8MEbMbU9xeb7qd2paPngfln4Q+odqCQySN6Rd6QjW6PiA/UsxkMfkvwKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LcKD7i8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LcKD7i8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E74C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757954993;
	bh=dVbxxNoS1nwrqrs3otucPuuQN+PGF0FRcLSAAvBmM38=;
	h=To:Subject:From:Date:From;
	b=LcKD7i8InrjalnVj2qu96bxTR7Wh4Foz0BP5QLa3FogM/yumyWkdOMTL4uzWghaNC
	 nVc2+PqvdkOYOn3rNKtCRQ7B2wrua9iMtlruH18F6fzTYZ5s6BQIBgQ06r6E04e8fP
	 P8SvFVnxfogOFMZRcMZn0UGgDbs4ZegYRUpCxY8VhMqhEyGt/IrV5jE7dpWE+NIUGW
	 7TwiNiKL3+qkPlc3QBi/wSgvKo1QzptgxcY/zKvew062doJmqnW5r82lpDBoGr5Nl4
	 sOX27JCM6ytGbaP2S+48wYSzpRVflzYH2rBSw7E+xGFFghNU6xEgUVFCjeAXMvjiM9
	 K0FVznydooWcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F301CAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175795499357.30682.16305072483870022754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 031720f830a0ce63f39ea2cf15af34a39222d76b9a830ac9d65adb43dde5544e
Date: Mon, 15 Sep 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757954993
