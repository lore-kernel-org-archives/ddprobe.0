Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392732D0634
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760539794; cv=none; b=Gn5lBh0D0kXWEJUwQqrlo+SsU3BO6hEFyr5KsuQtCjUwOuXSp40+qOfPvWXTwN02HQdhvUi6LWZ0uq+IjQrjWM5Ei/bmktRBfbens82k9wzKNs6ZSlKjXArddzoxfFEdjSV3omRc53J8dL4ZcIaru26nPiTntNK06KGHmn8q6Jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760539794; c=relaxed/simple;
	bh=C3aHy1IhFpR4vBIHTdwWR+/Hki8xajXdwt9PRu1lDH8=;
	h=To:Subject:From:Message-Id:Date; b=k1uWo6d8L4QkQwkAk7ZyUsLSfTk/rXDKrsVh0W9dScu+7jx6zsjDHrEfCJGCTlB6lzkR3NPU9LAyfUSV2NwSboH9erH5H61mwfq/a/giVefh4IKUcXjy/uuI+xM4JkdMleGm1lm/WyUfJLyshYL631n5wpq9GdVf6LBaDEO3CEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NY5Rpv4A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NY5Rpv4A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF22EC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760539793;
	bh=C3aHy1IhFpR4vBIHTdwWR+/Hki8xajXdwt9PRu1lDH8=;
	h=To:Subject:From:Date:From;
	b=NY5Rpv4Ath+odelVQ7qaTM1qC+jjmlre3HByc7gewUr35p8C3gnAuApd2nnPMz+ik
	 EYx+9ytmilOGyG1ETIH4a3QUDrYj5rDkuqKJVtHDyafPcfes+lrwJNeZjkH2b1ncTF
	 LByiW3vN49GJq1M37imEHLqtfOXTSJI2EihRzOfkW998CLtTn77P84yW1vQQOABHUW
	 G5Nj7G5mZiURi98H0wHLiTlrUAHtHIAO/ND76+cwvjcf/lZekW5M0CGtXMYuh/7is5
	 Dbidz1ug8v6beIfpByOJ2SP8dYZx9S+B3aQ0lLaTotLgjEbqH4n73phdIaUT+FKcuM
	 ym+NbwNXUyxFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E2AFCCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176053979363.8990.1095153149998959458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b4a80133b09e4149bb1e1edb4fc5d5515823e75a893ed3d59c15dcf28493cc5
Date: Wed, 15 Oct 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760539793
