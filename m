Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4436C173
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729433754; cv=none; b=qwutmlbm90dvIQo0IIjSSU21a6iB1KFTCdwqSZA7ssw0fHJV73XXqbOXX7ZLavdZh6tdAjpHHXNARt9SV/LO7+ojeehi6IlWQw6Rbs46Vrh993+P4fUMyDatPkYubsW/fj7kGYw0kLXcRyu07BWHuwqGVBpWAyyWakSZ28q2194=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729433754; c=relaxed/simple;
	bh=WMyIMkuXs9pWCHTP7CeSw/Wen/HeTiyvcCXaM5eA0Yc=;
	h=To:Subject:From:Message-Id:Date; b=sw2GzukC9fo68xCR0I9XUWQaXd63rAYbXqHc0MI6jqfBaWgwjIfVBOXrTsa5Im7gaV99Pue5Da+uNEmNQDxAk6FMu5BtpHwx0hPlLuhZxHaIjH5Qwm3PiCB0+lKczcEvRBUJtnY0V9/i//Mb973NQYfZ4jQkFgAEDl9Ii7Of180=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WiHRBRlg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WiHRBRlg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44E3C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729433753;
	bh=WMyIMkuXs9pWCHTP7CeSw/Wen/HeTiyvcCXaM5eA0Yc=;
	h=To:Subject:From:Date:From;
	b=WiHRBRlgGDSx5rjDllOdE/Eeo98xEWkFDRoOag0YOs0adpoVQ8kmlXPFh84E8zmuA
	 3phXN4/1Dlb3iZ/GM0NJ51Qdmxx3LKixpvsuGZZ3eQJcox4Xy0jr9TqAItTd2V4AcS
	 XylaEX7SS7lcZS7f2Dfmirk2BousjLenh3iv0EcdB/Z5jnwugwnxBY6n4+uSY8x735
	 smoWfLtJZ9NONB5w89LJr4Aw3qv+l6J67Fkcnky06yqwYXU9vzCeQHCVgVgIMt0hJr
	 uyT7vjuYU7DYAPHWI7bAYNMgCizGLM+s7BBf+q+7ejjyT5ilw20DkqDw3LetZM1+pq
	 d/K+SOYKSxGvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99741D3C92A
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172943375360.23846.14976956951429617039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43f97481f876908bf83432d3d352b21893327c36830bd10aec9739abbc52d431
Date: Sun, 20 Oct 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729433753
