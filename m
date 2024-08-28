Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252CD1D696
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724871954; cv=none; b=APp0sIr45p7lE/u2mtQA6fhQ8p/WITfpfnaTdzP0RwCOooi7fn9qgyeSyFJyzdzdJeZN3p3cVSQQjz5u9eYoDK3z5lLyTgiWYmRrYMvbyukE+Lwq4g17wsB7e1rV5VsJZL3Bhg2LTM2b+0BL/zYGMohV4/48iruaPVJFurTb10Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724871954; c=relaxed/simple;
	bh=+d3EKj06Kdcij4lQZoTECCvd/BFS4d4IuxPv5jGNJKQ=;
	h=To:Subject:From:Message-Id:Date; b=cWhcvF3NVfnEKMDGoTWYlUIithTr4n1j3V4o6n7llqdFAVmsUP0g8U0HR3bEtsk8aFA99Eyh3vtUwaUKkEIvZX94h1ch888i5spXc7frIwkLt02Rh/sjj5iNDjV0N3kDWzrRcX5DLajrNw1DFhZ3mh/UWVEJi76KPM/YflO3i0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cPeiBq9j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cPeiBq9j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3596C4CEC0
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724871953;
	bh=+d3EKj06Kdcij4lQZoTECCvd/BFS4d4IuxPv5jGNJKQ=;
	h=To:Subject:From:Date:From;
	b=cPeiBq9jg2lBbik469cMu4ta0vA6Q668dJ7aQJCBZsgX/LirWOq8jQW6j3FLLYu+v
	 L8Dnq914ov8zv7Q1KiNhjP3JuBjt2IVQY6ao8Ro2gMgHFwXrK9i/Dis/WUzAMkIhvV
	 R+oRc6b3GlZQRGr2d4dAtFIaOodjSxa68kXGo56msCXNDjP+WwIyvl+xhVi03tdv4T
	 23mX4fnxFc+0EgCzAxCovnIKe83B09gTrGdwvhMvnLlQa7jxrQUSiCW0YNEli7LlhY
	 CSnVTYnBOKh+jAzaQmG96z7z6jNhQxfK8G1yjKAOD2bJU0Jl0vYGAuPolTGT65u8Ea
	 i+KPOJdnew7kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FFAC636EE
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172487195359.25170.17651271104590213148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaf21c434df3d7d9f02e2cbb9d2a3f7d56f5ce8ac9def4828aa3113caee5b8fa
Date: Wed, 28 Aug 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724871953
