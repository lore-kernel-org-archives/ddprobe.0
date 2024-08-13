Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4104C4C81
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723532754; cv=none; b=he5jNmL5E6HFi9QOK+gj3pXUsTUhkOkB1V0KM1NTMcKCO/xDSQTXctu7CCPVTZoY2UCFxcE8aTJpcrajyF2MwiUC+KrsSMBwP0cAB9zXLdLeBnDOXNlxUEB//Kb5i1orLwdZDsLXWhcC42brGMLViH/6oEZLbWnJ4kPGVJAqLjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723532754; c=relaxed/simple;
	bh=5rflQyhVOZuMAmhpqFdeNk2VjIFZc0umIUOL7yB6tZk=;
	h=To:Subject:From:Message-Id:Date; b=Y0j53tqzPmRmykbbLPrE7VSH4iB1HjmPLKVfwMWjzl0kceoJbQcOFR2vYwXTXUt2sLI4EMM3we9yzbkQR0uVjfWfRkSjE4bRdL97gREInUgX5R/zY0Debfnid9JkTAuNX79J4QPNNTOpRIuW5YbsQ+R+9udNnjG1XZJnTj0M6iM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NqsP+3bk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NqsP+3bk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD74CC4AF09
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723532753;
	bh=5rflQyhVOZuMAmhpqFdeNk2VjIFZc0umIUOL7yB6tZk=;
	h=To:Subject:From:Date:From;
	b=NqsP+3bksj3ujA5psajrUqKcqLsiQCItwTmCpOeOga6ouZH25yPF2iVOeKdcrxoQD
	 I6AecsalJN6l3WjWViV8C+bQiWNVy5Hm67q8ncIQoOSsjTtMWadPnCtptByXXCF5fD
	 p/2BQzIj8UwUxW+X0q3Oc/WKa4cojbSp/VgCBOPJ6n8EjX15iieDB8zmrovFrwb9YP
	 9wO0uy+ytPuMIE+4r22QTaRxkHbCtiZWnJMnrd5RWln4/q5uYWNdSsY1eqRMGsQ/Xq
	 TOznkf5xdg0d7cYcVQsU4CjaBV9tL2IF6U2FuqHFy8zkCpya+YI/y1ALw4b3vVjJ1r
	 /DUnfwddHZtXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955A8C52D7B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172353275360.23243.17973402578958279954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6fac1242afe2f298073115b9d58ce2cf8b85f7d924cddb21a534191456a9538
Date: Tue, 13 Aug 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723532753
