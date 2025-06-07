Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297CBFC08
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749324594; cv=none; b=KVCwmvKMeCnOmcyA7hv2U8e/mETEexZy3b7nXgYqrILn99K9Dj6iErZGOK+HMXxKh+vTy4BLsWNfZ5MIhHhiGqtKvr8rGnrmLWXHKR4UCUuw9woJePLT/FQDLsaft3gIqm+9Ap8ALFUKVO6aZjBxyxRHUi3RbUYMn6gJppt78rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749324594; c=relaxed/simple;
	bh=5vPCUaVP9mZXI4RonE9/0OthBjs+E3pBVR51MfgsavE=;
	h=To:Subject:From:Message-Id:Date; b=N55IExLgVIeT2RQ4PbsH59ZrbgbwUmhn/ObUYI2OnYyAmxqk1kLy04Z+3ZwzXZdyKBtFC2dcDKePPqZABNvzjFlHsa9voYGsX6VnCGo9ffuWUSGXizQrPfh7E7QuYwQSJTJUbiLDuvgFZWwrUVa8eNIm8prQRg5jkEKjdqQZAZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E4vnf/ZU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E4vnf/ZU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D49C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749324593;
	bh=5vPCUaVP9mZXI4RonE9/0OthBjs+E3pBVR51MfgsavE=;
	h=To:Subject:From:Date:From;
	b=E4vnf/ZUkYvfodVZcI/PCEYQgRa5QsUNvoAl6aLsEqh5r3eC4VjrWy2A9qksaSLAk
	 zHX44Yft+03/x4Sa/YMP+rQdpXJM2MefiTNfmpiCXCGGUjx5TTetTjK/s0hLzD1uyK
	 b3gp8fhNzrGGwUiddU4fjAwk3jOt4yL/LAjMHyRQGdLVidhNs3rHILsAXgv9dlAVEx
	 VYYN2KYtz4rWkwQ0gXcHIvl4ujW8C0sI678tXFrWwfz9I6jZHTdQcV9iVxvERK6gwm
	 Bh0n6VkgZpzd7HnuS0qDKdeUnp/b3iuJKW9VUrE8uFOGyJ+lQl9Cei5/HT39TEv4er
	 7g8BSYgRDX1xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94910C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174932459357.8325.14703620773077973077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94643f915f592c31bb01f065458670a9af47453109492726323dad71d6046c01
Date: Sat, 07 Jun 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749324593
