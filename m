Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4445A20764C
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742290194; cv=none; b=gYzMolYAnVBghEL4ZZS0oc0laOyLoVpQrsaz68jCxnP93KYjqKqealSzhMofg62KGp8VtNXZ4tbCI8ucvaRlM35gA7hnqgmrPL9pfBLn3D/aKpmHNmdS5xXgO3Uv2fqYTaFCpqefpqyz2Hag17106r04x2yOswua0PtluN6YBFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742290194; c=relaxed/simple;
	bh=/5IHcZpoo8odYO8RLQuecWKUEy02ohC6Ks0Bu7vp/6s=;
	h=To:Subject:From:Message-Id:Date; b=DiNgz26tzvhJpnBBBpVuwSbSQrRrhKJ+apnark5cQMGVZrW4KMvJFufNRUdIBAufZguN7Ul0c0RwzwMSXlq+pJk2FK/5Z9WSkTUWtjWyffwCNdz5J62v4HGQbAh8oQCOoKaMq6KbL3hLRa79DKZA3GGXkq/MUmvlVKhBp31lysA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EmKQPZkZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EmKQPZkZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC11C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742290193;
	bh=/5IHcZpoo8odYO8RLQuecWKUEy02ohC6Ks0Bu7vp/6s=;
	h=To:Subject:From:Date:From;
	b=EmKQPZkZ/jxpSCimd2D7y3Q7TIy8YgXbxqjm1/EEQafg2RiVm7MUS7AxHZcCaATa1
	 3oBtISd0a6HON+ES6aZhxqj/2GMVcqHXaJ+7b2XNxb38R2/xO/+grkqbFmxL8dnEv7
	 zb7MBJk4FWvSVW6dvj6fj62jLBq2gZYu+myOkCmbIbI/sk6l+4bIS5+Oiy3XV6BJPY
	 7WnNnbQN7tdubaBKPKQYNp2LDpTWp3ZiMLVu2gAmBOUkIHBdotn1NtceeU9nnpJx1W
	 r+E0espUdmNZiOugwr3NkbgOd1cyt7j62Lp5n4cETniqvUdox5KDPqghkCZu9/n/Ss
	 fq+NBXbL1e5CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A605C28B28
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174229019362.25879.5185647674941060851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa669898aeade5e639745c8ee26d2b9d5bb48b3e7fa7a7ab7cd351e241f1c64f
Date: Tue, 18 Mar 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742290193
