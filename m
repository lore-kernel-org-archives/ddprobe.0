Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C977205E16
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 11:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739359915; cv=none; b=I3spiuZDWYbOdDthutEua18btsCZ5pbE63qcXqvu2exCk4Eo9u68iZVMxtri3I6GIaq89d6gmb7MYO3xVNzQy2S1MdVQv53lpYepEnWs40AbRUry+vP4b5NgnxeSbw56eB2+ugNtVvszbmOpOXnDQ9OjYGzLSNkJb5QrttepnRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739359915; c=relaxed/simple;
	bh=Qdm/c2UydyK4zhCGcK6FmAvpP59CswB6m/1sbjc3xf0=;
	h=To:Subject:From:Message-Id:Date; b=dCs36iYPLivAmae9kBduOdQvntmxw9aHJ1uDzwMHCneGsdUzSSHcTyMwKOphF+fUKqU/Rz7I1Cq/wBArc8UvrTGzT91HGXHb7AMsx2xKutqI6/zUVy7m03BXBkk/AsLYAv/ZC6jOSb9LWSkspjJxt7qOXZOsBwWOPsIvNm9aV1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DDG2M2Yu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DDG2M2Yu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D57DBC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 11:31:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739359914;
	bh=Qdm/c2UydyK4zhCGcK6FmAvpP59CswB6m/1sbjc3xf0=;
	h=To:Subject:From:Date:From;
	b=DDG2M2Yujk2ZLTttN81NPEXl0BOYpsZp/mN578wAqBVbX5FmqY1TV3h+S4BIH/jd2
	 FPzJMEaFu5ehMHn7salvobw6yXsTL4BCw24AcVT9JlwgjQ4mAnrwx1GzDcZHmSFNpr
	 ySKBszKxgLH7VALYL47IsRzYdQcu+hn8a+kN7yuCm7hvy7edf2/uwevQlKSb8FPFUJ
	 jFlm9Z55h9xtwgxJ83fXllxOlJGGYEse1sNrLodFTLt+gp8eCNxrRPVsuNjx7HxDDz
	 ACOMNmxIsCF5fLnqp+vYvMit+AuFVwGoBLUizfmmBl7eWCeDKb5KSNH5p8PVD0iA9W
	 xeZB3lA1BVBYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E446C02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 11:31:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173935991429.1865.2240997364471050877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6fea2bcd93068ebf6b686b6ab5618caf813b9b7319068308d0ad9afcb49b4ae
Date: Wed, 12 Feb 2025 11:31:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739359914
