Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 039708063C
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706907497; cv=none; b=dlPUxxowkF4pcv221EXkZkALz7VCCybeYk7MetE+r+I6AE5BVSE1bdAWRlj/RZAkYEGylbJ/YeIu1VaKEc2m/apVYM3EsSeWTe1Dlq78KmGL7nHZdV03gu2yqWjQGRvbRB3KSM7ZE9WmTW8nMKSl+033vXaLPfZrGkS1BsMHz/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706907497; c=relaxed/simple;
	bh=+D3ssqvzmlG6bGBwDAexBRmPT/6YO4p+eBgojAVz9+A=;
	h=To:Subject:From:Message-Id:Date; b=GTAwuozpJZhssx1UmT/oZE8H3FeamQI8D2m6MfWT3+c3TndlM5UKqKGPebk+fuNEahIKhZ6LwlNy0ZIZCyi4bs9gSyyG7Ul8byAHkjVrt5c/WnXNRFgTPQzkBIPOrNBH4TclKwQ9TQxo8QBu1ir6WV1ppQ+zkt/wfRdgAeCksM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LLhH/jQF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LLhH/jQF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CD52C43390
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706907496;
	bh=+D3ssqvzmlG6bGBwDAexBRmPT/6YO4p+eBgojAVz9+A=;
	h=To:Subject:From:Date:From;
	b=LLhH/jQFsoQWbBLHpADIq1vYcUkL68tdKRi5KX7LVBYGe9HBORqSc68CVRKk+F4pD
	 5rNa9vEKTVxbgyDlA+Wp5qGJ/ibj/tkf2O2IOlf4dCrFtdPbSpdzian5wYuI9ihDKy
	 oMoc912tr/pGjhfGWIcDr+g98mjO4PW2XInA+nssyepUGVv2xHsEbhErll7vJPe7IJ
	 MBhgmAW7pvhfL5ygZfMcgEuCE58AwPpwAGL77GnVSTxNDJgZ+qupm4SvQVhp2Vkh63
	 iAoxMWrMARpsyCT6lxYRA1ROfaxZT97Rahrd2AVKGyIbIsxBUvO54vIdJdrZ3ThwZv
	 /LyzV2Tag6vmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 637BAC4828F
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170690749639.18324.14335409372461329741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a2067936e8b327e1b8f66da0e247dfe50fcdabaf4b0c8846016d6f5ad20c645
Date: Fri, 02 Feb 2024 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706907496
