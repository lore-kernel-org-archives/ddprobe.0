Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265CB1BF33
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 03:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775186134; cv=none; b=NdWtbvUk7LLnqdeLU64cPPV4gBC11JsMZTqhNLe9HYxrC9xRKmcI0BfQzW4byQyHpHkZuXKqsZ42SHAXX97OZRqH338/+MYqiQVXWbcT7kFiQCZFuSmWJgQBq3vchjwvE2LIm3qfi+g2UhcfFZVioZE2Qwvb+FuH9S4BgVx7E7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775186134; c=relaxed/simple;
	bh=7dbRNoAWnYe4u6RYZOpAotkfmYZ3quzj5VP0CaoO+CU=;
	h=To:Subject:From:Message-Id:Date; b=m8aWzu3V1twNkzG9cb3/PyLotUD11TOLSboZfmrifMObHEdpj1lteh+t4ATk7cxpL8TAIvCpfrq0siqFL6MwaKjDj++1ofmpSxHVzUfSh+erMIZYmNcVc880CbzWn+AKOAVspYOtJIYbxLJzJEOxHA75TJrBiyYFvJPwHjv+i3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AqrM1ec0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AqrM1ec0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0CECC116C6
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 03:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775186133;
	bh=7dbRNoAWnYe4u6RYZOpAotkfmYZ3quzj5VP0CaoO+CU=;
	h=To:Subject:From:Date:From;
	b=AqrM1ec0RZC0Ld6nnftAWqRPW3SNn87OzUIT6ROClxKlQJ16jqSYpuTDZl6HOZ2FN
	 SeaEn7HyaiGSoTKnWeqWh5B33NFfIY62MK9hR08FVHWVrysHgtJ2pZPKEQ3SClMRpV
	 d/I1HgPJ2/KE7PRWtSMmV/opJp0KghTcT61bvLocpSDKfyWeBBV+Ha6mqjkOUlI1n2
	 9sOMZlAeWCcUlivxnmdxgE1zbeAkOXxc9GhpR5Bwd6w08joi3yQ5r1OuyT0SyqKH7p
	 YhvUW9+zj3NefKcVdPzmaVqD/iJ6Ca+aHEH+Q0yUOsfv5CKt6s/UR9z+kY5CGE1nTJ
	 MMTqPhgcJYG0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0E3D7308E
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 03:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177518613370.32105.13311608539991453877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3203c29055ec7cd468e2a1d8491cad337b59227db8e47dbeb3188e771d96e56
Date: Fri, 03 Apr 2026 03:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775186133
