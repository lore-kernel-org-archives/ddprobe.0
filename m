Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DD5299923
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 15:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763998315; cv=none; b=lHaYOGQKL6QG+ASrwRV4JHA6ztql8f8fpZOiupZ2ojVoQvZfyR/C3ejRNCcgKxgeLBAhQHXzXBm72Jfplm7S3vBll9AlYmeoPI6EPiVg/ua5/EFu/aiiQNKOXwCdk5Wo5DVA6St9REEEWM/nU0KxOjHtuKt8YrqSd9XUfrGtQVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763998315; c=relaxed/simple;
	bh=oNh32QBq/8EJn3xOCaykVrz/eBB4z3pZr8D6s2heoq8=;
	h=To:Subject:From:Message-Id:Date; b=kJ7k6K6qJGm7qOA1ss9dTaHS8/ZZbYCha56eeD2JWJejYk7AUPDVkKkyCsphfidE76VSH/sRMWleiO1Xm9K51cbLywZFEhkIlFM5/ufCF6oJOKwLtCu0bFtTXbZQ9R7Y7STulP4/GTHCxTWuWXVQOduHbzn6aQTwOQXO8a7MIE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jEFOhBgh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jEFOhBgh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43E3C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 15:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763998314;
	bh=oNh32QBq/8EJn3xOCaykVrz/eBB4z3pZr8D6s2heoq8=;
	h=To:Subject:From:Date:From;
	b=jEFOhBghGF0RhTkIUoTkTNWkgtJmTgBjiioBOQjQ6wMRiYEbPnw4H+ISVpx/BpMCs
	 5ZdE08qOagIbmx1G7WvQ2ZOxJ/rHCx8ijgd9d3mrkZ8r6kBePKBxy5NSi6RW6IpyP4
	 UMnoVMgxYa3mZuV+Lc7Wk0nAUEiQrgJzx9mvvankrV7SPVYrSgg/TNk8R1Sao5Lmre
	 93nT+l0gQwnY9Ky1Wfetk6ou2kzU3lDUdQZfrEQWmjG/PyQraWQVeFozEgq6ufMPtw
	 dsSa6bjW4cbJbrkbx8HmgoCzZ9Hzo8feOypX8YtK0e5r3fJJ6k8IVaCChLkROfTWWn
	 ipUD+lS6gD9GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E9FCFD313
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 15:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176399831358.32298.3362557563513734576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5639045180605168c65df0bb4ac3f3016883c540892e6fcabe8c6b1196da84a2
Date: Mon, 24 Nov 2025 15:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763998313
