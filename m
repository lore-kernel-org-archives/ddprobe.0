Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E7E225410
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742471396; cv=none; b=nMtIqrglOXF6ClAYSZf41w9mgMk5Cjf6QYNJzyl4mB7vRFk3b945EMsL3yMN5NZ+iGgFzIxScfJJlxEVFHII3HAAtHFniLPCKHo3iIs011wu/PfTcXyIrHaFakjZp6oTaEh6gt5mr5JcyfSguP7+0Mjy7jIyUKa2yC98L7Wfss4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742471396; c=relaxed/simple;
	bh=wCR4uc6RuR0IJPympCog5ABv1Wj9ftDZSbUK+J+mioc=;
	h=To:Subject:From:Message-Id:Date; b=UOm7qO/ys0QhVhGsnXI5YTrPw7enPoacP++liv4NfvCf2nSyhlcORlOK8ozWyp3waIqm5XWeWPnh/vAzqdwsYfRtM5O4KGAyoGbyXg1l2F00Uk1t+5pO2mOhwjkyKFp5fn2oigAAlOkK8q24EX4dMd1HKn3sqny2tJj0yowKZag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gMYZX1Hc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gMYZX1Hc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A05C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742471393;
	bh=wCR4uc6RuR0IJPympCog5ABv1Wj9ftDZSbUK+J+mioc=;
	h=To:Subject:From:Date:From;
	b=gMYZX1HcsJGONFuzMePwCGi09FHMH+Xee3IuiTeGo1+4xo3qqmz9Pac0wgwnfVPuZ
	 aYv7VEgbt6khSqJBsqASAn8WFRXkH1EESoXhZwWumn106mG0xCSGrMaH9JKmeoAkRw
	 4XXlR11Z7juuezOUQ95iq+YcJh7uIVZ8wjlu7COrgdgLGQNTShxFEAJ7ItCOf4xJOt
	 qxtPFSJdhopHTZWoU3s7AiozHTcM6WrZQUMW+0cdknyB8aOB5rQbZE7PiixOnYgH4j
	 hAKUwHBxBugvI5uOt4TPly6uPKd8WYl8guEJd/Ey6x8Sq1JyEbFqg8VEbF4aZ8onrj
	 yZXGXDNcczJLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF54C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174247139364.11861.9935797056781186242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70188a3361e16e0fae859cabd024dfef6b2cd5b935e5c4f7471968e56024512e
Date: Thu, 20 Mar 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742471393
