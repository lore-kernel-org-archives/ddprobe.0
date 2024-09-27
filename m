Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363BA15F3FB
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727430954; cv=none; b=qTkIG9cfPPJpW0vo5Gm6Fq57b04/uq9S30YQV7xsEIqWwe5GZLRDs1nmyglic5eV4Z3oz3yXYRfxuAVVUfTVPkhwxgfnXI4cb0ahG/RpS/EZpCFVTU2t/dBtGSGZkUmq2RraGr8VBRBq2jsS9tvzYbZQ03kGC7B8ZTEl3qxoimk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727430954; c=relaxed/simple;
	bh=Yn8v9+7RV7oIqUU7bcl6zWCeDH4qtYmu1FVNCp4ho8Q=;
	h=To:Subject:From:Message-Id:Date; b=XeR0/S4+BZuRck3byNSH9CAhT7GBYoVQr32wm44wmpKQZ3xfNSochIBxpppnQk6buZMeilxys2yxWX4cQQovc42XlkXoJraaLB08ORxcMilbyK7PKibWYw4AlpYfcLQSa0Pkubi+wmtAIE7Cl9btTD74R75lAt7TSRuLA3i+GsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q2MfFRhE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2MfFRhE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B41B4C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727430953;
	bh=Yn8v9+7RV7oIqUU7bcl6zWCeDH4qtYmu1FVNCp4ho8Q=;
	h=To:Subject:From:Date:From;
	b=Q2MfFRhEJ/eIOBpMRF9uoWXaeBNOKf3wQX5KAW9/UG8m+y4Eumx8PlTytFalNdO/6
	 yJfLteD8GbXP7vZ37Pfisa2mYk2WvL19XelCsGsZqMIyNbjK29Tk0/TfJt2kwwX506
	 omyPudGoasqBzsbh8On8vocEF16Ad6BFjFwZV2InQeXLFZOyi7x9y+4o7V7xTrLG9g
	 MGITv55W6kJIaBumGn+lvVYAsL3C68i6VxWyaUC4DzpvzgZejd2k3bH3b3ufz0wKcR
	 d4TTIX70XFzQUAoZ2a9v5wfWj4sWJ7gYr1yhCZw2q9WueAGYdDIDNp5IOQXTq++6eS
	 OYQu0mxoX89mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1297CEBF8C
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172743095365.15422.9008643920033950156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6c61e58193a5ce138e42b0607735b9665f67c5060a558cf4542e33398050c16
Date: Fri, 27 Sep 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727430953
