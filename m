Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C94B2D24B8
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759462794; cv=none; b=J/6W3AfEqXqyABsWUNX+cRLxBLhyPSvez9w7k7Ddi0KfPp6ALcnm4u/lPUkkkMTIyNoNk0imgIJGye2MzARjgWRndMxLuJZ97aXM2jTU4YwkRcMScYhofrS4/PU4SNVkVmwSyO8ImSwLAKtVc7lTkKTZyWI6fNs8fvnxwRLaTQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759462794; c=relaxed/simple;
	bh=fBHvOGxopp4RmuCMpLRAQk3QU0S5D0RjJhr6joghG1k=;
	h=To:Subject:From:Message-Id:Date; b=Sp8c/LhtszrshdSiLrNiwdj9C++tmg2A2yR5XBw0QgEQ/rUEtP/J7dIQKzROMo8edqoKt8APXCAOEiojKAs4iUu3ArLX5SCNKoeipnV2fm2gTQ2kmhSs2XiEMVNlixJ9c7NFiLvHENeAYZznKqbZUNZClWVNI997q7a38qs2XIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPed/Xn1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPed/Xn1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDB5C4CEF4
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759462793;
	bh=fBHvOGxopp4RmuCMpLRAQk3QU0S5D0RjJhr6joghG1k=;
	h=To:Subject:From:Date:From;
	b=jPed/Xn1f4RqZUacmpXqBp2X7KJPB8lGWQwoGX8xm1X9F2huTzwoPM2m1kGQclNR4
	 9iKIkUuTSkud9qs8QAEPph0pmR9FjTZ6mvK1BdfhXHikH5QS5z8F1bvlVd6YonU+7H
	 LJgL+d5PsreIyiubhW4vOeD4o77q2pVxTJAzhS6rUMxzUKrKMkvs88B+EuPD2EbCqJ
	 63zsTmN7szVGwhjxeCFd9sPLcHEXAV+dmz5fF26vA7fiSrCTQliafeVmpW6wZP8ngR
	 VSCtEH3WVHuJg1lBfAuaJ6ierGb70A4+m7gT57SH+/o+uM7omuwRa8L/nll/HkV30j
	 aW1nwEJgAvD5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA21CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175946279357.24530.3160598388325766303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aceb5c6e21d8042da3fe5342af4fbb1ae449e51a84f57d1f1a391473111234c2
Date: Fri, 03 Oct 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759462793
