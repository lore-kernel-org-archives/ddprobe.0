Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169D08F6E
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753768194; cv=none; b=jqfwu76aKs90679WeaWKKq3cvy2lh3FjdWcyDyLSwZe9FEuM9w7Irjkqhd+x21qOo4JBN0LSH74KzRQdSaBKFUp9OlEW+y0Omg3qONuXqbWlfDoNyQTsIYv6I4HaSgdczr9+AlpTf4Crn94q/HFStUEABmHTA1CruIupeAOpYeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753768194; c=relaxed/simple;
	bh=4gm8XnQapU0H5rWdgN9UkVq5AmlXE+opG97bbbPgpjg=;
	h=To:Subject:From:Message-Id:Date; b=f67KiUp8IklV48QyLUbpQcq4y3peY5riY4JXlhcoDJxaqccWz3XYkFZ1sykFoZqiNDjDV0o+8o2hXUCcmZIQONyTrNO5IZA7JJDIoC7gykviM/u78J/K2JW/26HwfhOPRgeQ+jGAlpu57Ew5JfVay60+pmOrTlD+zFt5agIgbac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E+FRpcqM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E+FRpcqM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B7DC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753768193;
	bh=4gm8XnQapU0H5rWdgN9UkVq5AmlXE+opG97bbbPgpjg=;
	h=To:Subject:From:Date:From;
	b=E+FRpcqMe1JhxC+ZibK7ibteMRcJ1MnU0SkvJauRzVLsdh2QTvklXpSDNKbykij0Y
	 TB6F3w/zNMR9ZX/UUinRD6+FnYCAb2FVZu5807jdIXsMktoMxl/dYLjXyftZ4ufIre
	 yKTZC3qORSWJX0QFNOUaVumdx/60YHfgmI+PZXA+z+eDMsQnS93jFX7zWv+2OXI0mw
	 hPWO+KPfvujnfnEoxqtzh12Yhie0xGtbYn9WiVDP0Ltr7kDqyiR8NHgP9ZHG4ep9qD
	 IJ0e3NCAgkXz3tsmre2plS7yWHiCg7r8z2uR7HNP9yC7KXj4lNzQpQcGBSK2aznjLV
	 Hh5AzqZ3tvxUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90870C87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175376819357.27799.5280719162735188436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 362db8a18a2784543d1896fb67b8d3f8d461deef0e12aa8877e156b9c1ce4f4e
Date: Tue, 29 Jul 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753768193
