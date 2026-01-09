Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F02BC8F0
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767931434; cv=none; b=PWyo8lKlAhVLP7lK/5Ru6TOYnBWt4jVl53VAP8Z5r4zdJ6Kw8JLsBHDuPTZXGkPRKGkR2NJ5l7PChBwQYUufrbN84AIU3yOYlxDZY05I04GjqbYfv0JTffX5Naou29RrKwa3PCx8WSN7he0x5CZGsxGbrf2S1/nvvnA9KmVmUTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767931434; c=relaxed/simple;
	bh=/H1ZSZZ5Fs6AsdUxPX7+a2lrj1rB5QhhsdNiJSIrSgg=;
	h=To:Subject:From:Message-Id:Date; b=Eqwz+FxonMGu/SJisNIbTy7XG1T7/je+6qStmYWFJwiE0P7/6Tq4zAxQALOUIsrzzW20ruMMFa9xMf31XngyBmVWWlYuqljd2Y3hXBaf/S8ITJazttdTHsACQxYn0a4yp5T62Nk3fkJ8SQ5grpBJtgYAR4/GTzO9G3rXwwnh0Yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=joibtsRq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="joibtsRq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFD3C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767931433;
	bh=/H1ZSZZ5Fs6AsdUxPX7+a2lrj1rB5QhhsdNiJSIrSgg=;
	h=To:Subject:From:Date:From;
	b=joibtsRqkdR7wAqglwu5AI3o5JE1enb0PJ+ZXQESEKDrs2WpxHb2FzNxUc1iq6L95
	 ROTWoAXMLpz6omIOZ6WBQWj47vbaRDNbWhvycEpBi3N31v1Ywk8SwEBxsCfa0GOggO
	 4v31LPSzDz1/0+4IKL7Oc1U1e15sw9hAvzB9UYN9LfS/pqZuNIdgsjDXlYA3QihNZZ
	 bJqcJxk0lipVbI/lae/T1j+FpQKDjCAhJPQpW+0O4dDbmxToF0VpSmNUI6cn+NfJFp
	 xALQg5ADZO/AngZufOWheB6DC2yk5g+wIbJK93tVtSMWXF2dZMtasxTpCujmVMjnlU
	 0FUgZ85UO2KYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6AED232CC
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176793143357.16559.12173912675082251180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f88388ff1c4940f0385819608d1910f1b2d730371e182d291d9fc472f3e9a03
Date: Fri, 09 Jan 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767931433
