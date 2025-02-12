Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB4CD2066C5
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 10:10:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739355054; cv=none; b=Txmki6QjUBBdQ5qCZpapZAYmxHGTWfYhclt//O7Nl+Cqz2AYckA/7LhqaojRLltPrSAiZ/P3AJmad43J+5krQJUg8sBgrZqKNKibzbvvqofDY92i1i7VDTZyCKE4leXBNDHMznDR6cYZwZn2o7Ov88UOOXQA4ynesMhYYl99tAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739355054; c=relaxed/simple;
	bh=dMPGV1mCRo6Dg/MYF+7iHdPOabhRQifyzL8MBT9dH7Y=;
	h=To:Subject:From:Message-Id:Date; b=GtMZz4Dy+UubodimJvMga9Vm3eXwJkGMK4Q+Q9hgKh6Ti3JUIJkbsWqT+iw0b/QfQZH+FvxtJRbp3L4J2JZmGVqyUD6pOrzqb0LTDVFGRIMaZcws9t4wSbgQAWPRy8vuRYmB/43hVVjr/IZaCyG7tJUSb8k3nfmn9Mk0A8nNaek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E4/WiaUk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E4/WiaUk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 28E1AC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 10:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739355054;
	bh=dMPGV1mCRo6Dg/MYF+7iHdPOabhRQifyzL8MBT9dH7Y=;
	h=To:Subject:From:Date:From;
	b=E4/WiaUk9nnA+37Wu9symLhxOgUH39iL0Ezqrqo6q5a83++T2mbXra52gtno7cNON
	 YwCavKX9zGcHdRqfrhajyjjGk1MJd6reMDK8N4T3+8MPcz5mQHXbyHjDg80u1ynna0
	 YJ4SEWILdglQvvXqhBfFN0oou5hlpztA92mnsdEcTN3ibto1MsO14/yAFbcqVQyoyW
	 s4XwcVKv+P2hw2fKD5rOddkppVwr0+PzWO0REIaaOFfUiy8UQl6ZSnmgXWLW/jMlim
	 0JKsTrzlvh7iiOICgd5CpIwWBr2Vi84oi4d0XJmDkDTOhM7PpKl6yS7djkJQJmoUky
	 3ENV8f+1MaPEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D09C6C02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173935505380.3138.1737212531937226185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c23a206709c1a7fcbdc9cf289502a118acfccf4d2105323d5c58d6df17f7860
Date: Wed, 12 Feb 2025 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739355053
