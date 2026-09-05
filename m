Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A45A37E2F7
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788628234; cv=none; b=u+IA3XsPfoj2Ifc43IjqZO4UdyE+MUHYfsiYCYSkWtnaHmZCey3oCmVnOtvIrcIVPc5FQoe+hfKVXoCph9vP3HFR77YFExdk7qcjF8pGwcBOLMeOUSTL1j5BQW9zAXfe6L5xb2qARvG07g8iX1aWbn9djyNSFrunAujKp6Qo5Bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788628234; c=relaxed/simple;
	bh=vmRiEeAjo3cHB6KqWc3S8BadMeyWki4NIC6HRKwF+Oo=;
	h=To:Subject:From:Message-Id:Date; b=s9Jpwt4evdnG8bGPITz91e2ewAtHhHpix9DFPkluGgMUPOAIdJU78CtBvi92v/hKU0RprbUvf52O8X0XDka5KcT31IjkkAfwBgg8eok9TiQM3TyrR+rWM21sS8WpLQ80hbwL05PTV0eaDXAb6d6pg+67m/JMa5IXqMAM+RXmrbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZ3kika2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZ3kika2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE899C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788628233;
	bh=vmRiEeAjo3cHB6KqWc3S8BadMeyWki4NIC6HRKwF+Oo=;
	h=To:Subject:From:Date:From;
	b=VZ3kika2d6tVgUr9BinLIsXvjKj5wNFQIvxFt2gkdHlCG3PE6nclp22Eg+2ouzYuM
	 q9JuHh2DNbpBhC2I6wyzm11CxacmI/8JkkER4cKhzuCo8/tM2DRtmRRDhN5Xbz9qWV
	 LBXyFmEopg5UADaWbyf/2X0YNhepwq+rnAqiEMc6OwB145TWzBVjAg7jm8prEvuZ7Z
	 dpgR0KlHVrFWdr994eJfGLc24TPlCIKtpzRisxQX2MEIbfqxkFltdrwWFRS3Vm+RxP
	 Z+VBDxyJwK7Q8XNniS4kKXCJbK1t+hne06R6CWSgBDr+3BKzcVEojULfXT7kzvdJm7
	 BbVujfUTHLjCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB94AC624D3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178862823369.13186.3204946192810625936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7247524d84b888ada85f4e9044ca820afb7fc89113e2abb67cbb4a728f04bb2f
Date: Sat, 05 Sep 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788628233
