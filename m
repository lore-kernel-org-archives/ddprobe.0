Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4301C255F52
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 04:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781067334; cv=none; b=SQymIJmK6vYlca7Q65vUdNRlosoS3DDdKkHeVLgKre6ifHcbqxY50cGodLJWD+CbDmBKor535Cwwg8fIKrWMXF+3AKTe70VcvY3EVOe+f582bg99Tmyl9Y3EPs/KelyuTzBMNe4LcQkfu5adu62ERwNtDhVzxG3Ef+OCmFSHvTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781067334; c=relaxed/simple;
	bh=4JuOo5BaNU5nleUamLxpfUV3gTqKVBBlxboDjCTLcEc=;
	h=To:Subject:From:Message-Id:Date; b=NDkV3R76WftB364XtNXYIk23OJ21BOLFIAuaQLrqNKXKTzGibJg01m8ea05DbM2sp7RnpnDng7WQ3pmuzhM55t19+OO8f8MY0IxQqc8mEs52FeWJ8F02UnOLkpVaLCpm4v6tMLHfNPs2s4jxP22YExYWHyNSltXIicg795FaUOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ag2P9k3b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ag2P9k3b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC348C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 04:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781067333;
	bh=4JuOo5BaNU5nleUamLxpfUV3gTqKVBBlxboDjCTLcEc=;
	h=To:Subject:From:Date:From;
	b=ag2P9k3b88E/QijQ1GUzvNBBtQIddoVdt0CwOBrEqx3bMYmVAxggpqm28mjOVv/eo
	 UHsj1Y5SZ00I470Ybx7qs9ywdYfLe0uSF4knokHqOSXXk1wq251w/VNdaPzm3EAZpO
	 9ywIeE3dFL5O7UUXCsq4xYpXW74Y4C6sOefFXQrY3ASK7yWIsLjNK2N4971UG0uWR8
	 acZuiSCwlRhGkQ8RNKRCmjDEdIC+YNxf7lfTvscGLqNCTq8bxsesJ09yDPBW4MYKDv
	 kAtzi3kUt7rnCKpawbXFijdTsAG9ssDEOieUTF2Abbz9nlAEFLFIofBSGU6TfvcdTK
	 4hH9gaYKkf8ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FA7CD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 04:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178106733369.2872.409071202855208693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 027ac9d6e68184a981b51dbac5c2c9bb6e417a0e55f4418a0a2f8c2ca72718ce
Date: Wed, 10 Jun 2026 04:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781067333
