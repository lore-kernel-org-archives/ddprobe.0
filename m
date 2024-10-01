Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475E62D052
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727759754; cv=none; b=vFntAHsA6dlvZiUpkqghYJescszh/JPCB7jG36YsB1y/ydxMgKsJXK6onSJOpfCv7rP0FzYlewtsMhRIKCs4ktsyvljHkB3JACYgkb5BnWXIyqNlnrXtLhxoBAc98/v4mt06svcpx5anQlDfdFXM/jP+NzXRM7ufr0XCTycKK1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727759754; c=relaxed/simple;
	bh=zH5xXxr22nsKvrWZ/rUZ5ZQ3l/kuwjBP0HUAGiKEtfw=;
	h=To:Subject:From:Message-Id:Date; b=sw8HOwcjJG/uwiWL+44vcpr5msTwAoNnO2HMLGU2kNaOucvoO04ZBUO21wH0iv/5OhUdkAWfoVPwHSFA49u9lgNaiXSQq8ZqbII4meJJ6TEoYensCaCeQ9jJCKsw2LMKaFDMnBKDdwG52M8TO1UyObnUe9ts0nO8w4qMtonSIEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aY84Hyga; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aY84Hyga"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B892EC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727759753;
	bh=zH5xXxr22nsKvrWZ/rUZ5ZQ3l/kuwjBP0HUAGiKEtfw=;
	h=To:Subject:From:Date:From;
	b=aY84HygaMXgGXbxlV9HJV3i8naz/XKN8LTL1B8ZdtGyVltWkOmI0LSpzBSVzh8/96
	 7ehlvq6uCS4NISIY0oJ7jUkjzzK9h1REpjwbXWFy9cgCt/SPe3L33mmMD+CIp42Bnw
	 lerMNk9flRGjB7URBqAGC4/pSZAa0A9NzZWJ5QphAXnttI79uQ2XB1nq/qzedWnfnl
	 9b9m/AWXSYpzn3fzYJiDkzA6+jQw4kjjgZLIUflQOtmDbZvoaAfWHyGntiL14IVLGH
	 JHeGaUcIX8R8UXwl95nuC+q8ZxUfp031ejG4fjIGVggL/tfoRa6Fzh3pQ6Us43kp5k
	 GgRVjqXpatL5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ECBCCEB2FD
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172775975364.17005.4626970087053644586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a7911cf1f6b7373dcc1530d557bb08bc40d3fc146f480a83613d172016dbb6a
Date: Tue, 01 Oct 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727759753
