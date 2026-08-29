Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1ED364052
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788038434; cv=none; b=I8b1+D8lCLmygAJhUnEvvDvKNEvelxJRMjangjQuVL420RHFJeVx/HHZm3QuN0V3J7/J3sJO6Wn98gUbO/WYuTVtY23iMD2N91zePZq2y5/lnreZMf9EwYH+AP/tHC+D7LT3j5z3cpk05zjI3730vbReMkX2L+kYAhSi3KGCStE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788038434; c=relaxed/simple;
	bh=FL2xBPxFQweB5ZtQDdHi0nyw0Rr5lceFkVoow5wx3lQ=;
	h=To:Subject:From:Message-Id:Date; b=iU/2RXO1rH46bLVSIPoVYb7sV52g9VYj1aXLHXgY/yLLBvpH6R27Bj4RXyWOfxtCKVOLsQ8VX+FJYHoBHMYj7ViUgTxjaJGYDa7YrNMEcRERLW3JAn4Iv/FEbrbZpudi3h0p7NDAzab37v2l18LSNAPZPAkEy1dbURLM6ekVRVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jHp+xkKz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jHp+xkKz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD79C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788038433;
	bh=FL2xBPxFQweB5ZtQDdHi0nyw0Rr5lceFkVoow5wx3lQ=;
	h=To:Subject:From:Date:From;
	b=jHp+xkKz1ysc2fTE0/O8GCL5OM34CWd3NuZd+ceiuRiJJcsh8AIFhbUofUtjy1uMG
	 Wb5r4r5yMkeSVDrsCuplM8KplM1QJRyzD5Vab65Ph03Q4Sx+3LaKseLzWyPxlJewSm
	 90NVCw8tGJBbY3DfeuX2tQenFb0nBWv8AVCHfzlh6YXXN6QJOGBGFtqFV1tZfATgFe
	 VbmkqHxrXYdo+V65YdvgiXH+wYicItk3GG6QZFZoyJw0D4XCiCSbPxPscyltMJHGJA
	 UofbHCqdNZJ/+Rc7rX/rHjqVOlTq3em7fziACL3LhsZhsk8gBIlI8awHVMpRbSC/b+
	 YBSJ0iU8+X67Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB323C61DCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178803843369.16811.4699892329009905953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 482e2337ee544d3e5f2d5aef87dce43cda4660ea7160a0b244d58f794c771369
Date: Sat, 29 Aug 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788038433
