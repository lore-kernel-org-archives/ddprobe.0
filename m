Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A83757C8A
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 18:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714761743; cv=none; b=RcKEjvlj5jaOU1XygHnBueq3X0Q6AexI8qYRtU8a9fKv0PeaVrQgQ05bqRW05g1oURQXV9Zu072s0TJXUIj103ZvYF5B802T6MT7WNq9To7PrL+mVm6BXM5WJpqip5kRanXxZOzVivk/I1qVrAD/3tbY5wtErb1cLljDOqoqrNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714761743; c=relaxed/simple;
	bh=vDjQXz/MgocRMZqB+gcnNv4E2XTlluZ6TRMigd3sols=;
	h=To:Subject:From:Message-Id:Date; b=grgTIN53kn+qY3c/Bna/hMwrjC//Lwv5vW2QQuS1LCVIhxUO/yhUabizkQelcH9K3pT3oHfCVxPIBVGkgH6jnTmvnSSNbhomBAztPU88U6P8da/eloqEf1ELu9g8wKvTEz6nItjdD5rlBQig3QOSXEDjZdUxPsjBq8ZjPPwq8hE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PbAUdJLa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PbAUdJLa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D09C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 18:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714761742;
	bh=vDjQXz/MgocRMZqB+gcnNv4E2XTlluZ6TRMigd3sols=;
	h=To:Subject:From:Date:From;
	b=PbAUdJLaqxEDpKBDzT2t5tmeK4GoGUYpnSzXqTnqgJc9nkK2AXOeoawN1jnQWtPRY
	 9dVgbCoUv5Bn6SIVLpdqL/6XUQjsAwPBOCpqUJUMffLhE0wBiGyaGXz+8GsrdA0CJK
	 ACgYnwJoIhSkFUIdwEsBHSfMHxG9Bwq/zVJhywgdDjd+HmYYPFZLCyx0L3znAg4I/X
	 7vOx5bXrau6Lab1tLfG1c95zRHlRfwxCS9lq5Hy3bdMOPFgl1IsJG/gbC55neIQNV+
	 VL/D43/1xOg+raJZIShLpFKxrZiMBgLKkw4ez6hhhRgighENTSY0BPnVU2K1aYYq8/
	 1LIVQa++3leAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4670C4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 18:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171476174279.18663.13988536687466973253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55e6175ae24c225ffdb4d859a43a5c4f0d9f6fac48e38f96a5d0ccd689f62e4b
Date: Fri, 03 May 2024 18:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714761742
