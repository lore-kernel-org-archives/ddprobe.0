Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C30442C
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760577594; cv=none; b=AJHMM8PM9YEWQmVyLHHf+A5PZyFGA0dYAYT4iPufvKsRyaJMahx66f+gJm06sETCJZr+Lni4TkowC9FO5ViSSy3V8nmHHJotcXf7fKP/cPpWvqf9ruAMoACmw76aU55N9NrZ10oNZLqqfZqZqP+cdZYMDEYysPSfmP4CwLX/PQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760577594; c=relaxed/simple;
	bh=1yuPzvqkPGP1OUKTcX3Wexv9R09m3cJPahKmDzawx2o=;
	h=To:Subject:From:Message-Id:Date; b=daZdn0NO4JC+1mZ6V2STOqljc2ln00qD+zglv2KwwtAkUj5prfuOLtsLkRvasxXArm07xDhb5MKtYko5fyrX94rPY3Jw4sPE7yKp+kBio0cUPOFwRQP0XQ/obRt9yMnj0sJA15vYsas9zFPXAgZt4AASdIYKYoJ3PC+amnXRpFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=njL2iyzm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="njL2iyzm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A615CC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760577593;
	bh=1yuPzvqkPGP1OUKTcX3Wexv9R09m3cJPahKmDzawx2o=;
	h=To:Subject:From:Date:From;
	b=njL2iyzmd940JhNRU40p4PuCga3H9Cli5WiTmDg4rXRd3LsTh1UWoOWUmyG0Gt1Va
	 B+O/ZYdushc4orHtvhiDCta2wZ4LMjoveGDtHb5EorMrFXAgK/O1sPWCYTo2cAMmz3
	 4bkXr3g7sPtec9sU/yy93D+qgsQzYbp7PQye6VBJD2C4MnaHjG1xaq/p41WAUl+2p+
	 qJNEiP6idmjXVLnTDIox4ew3ROyzrjxmxFk1a9krM0RRrf/YSAhSBACdZMAPfP27sg
	 fAWwxn8tUac9DDKp1W1Dj6FxcAJU34EfjiS3tHyTrNLQ+xHvCHnkThGeFMi+rUJe+4
	 bFeWuu3vRIRxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918D9CCD193
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176057759357.24055.13103015930982375626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1f1a8a3174f3751836560a0f55c639f55e3a28de61500fb6288219adf313976
Date: Thu, 16 Oct 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760577593
