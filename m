Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B32D35E956
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772746494; cv=none; b=p3Tfb5ohN7wNNtryw0F7a85UJ2K523yDb8GpSuAe9YKhEzYl48pyhrhjuZc/TNCqs4S9ij1vVrowhZVIgCKn9YhJzulnJkMkmAg7TugefqzajWfoGinDk4HLLTP1ft15oNq27pKPsq5rAmdPwVrGJXDsooZaET+/iWuZq6rDSIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772746494; c=relaxed/simple;
	bh=3HBitT8+1Vd0kGmRr+ly5gmbbTpTf0WN0elUwjw7exM=;
	h=To:Subject:From:Message-Id:Date; b=Ivt6KeBqGxH8Y3BygBMOhOt8t2mncAtnKbO949E5TLQ0GL4OkZMc6v4GjMzmqd5oCFKUaYfJrwHWNs/qUuYFxPtR2n92qGaLCUvTlpBCMh7SoIZneyLlhJtyvu8zCWNz/r+29AT+4RTMTa+m2e6nNz+o+wgwYaAFJgrt98LQ+7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnxpB++n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnxpB++n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0ED7C19422
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772746493;
	bh=3HBitT8+1Vd0kGmRr+ly5gmbbTpTf0WN0elUwjw7exM=;
	h=To:Subject:From:Date:From;
	b=cnxpB++nMP9soIlf4CIh0WTHdPOZ2CIpDzkXeWRpiApqnMgEHQ9IlxA+VWoAqyLd+
	 2hwXkTOku7ZUyaEGKsTlB6A1jE5QKmf4520fVcRlJRDlLMYnodEIkbsc1zpaWMITF1
	 mUZ194s579vNWYTVS85nQ6UxHxPSk+mUh1jfHjypifrJ9nuhAD7TimgmFgz6PZSTPj
	 0YVMDlTWAICYXRzdzBeub4u7TMphgS6i0CpFMwlbDAUC9EAwHap1ECgmVbwBRZKIus
	 YWuByS/7S0xGmcx3JDd1gA4YgX9yofLnsQQazHYNRi4vK22XjWXMPRMTsWDnt6ZQC9
	 u1E9GxRVpIg4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BACF47CDC
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177274649358.12636.11086366557143351365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4f13eff80f8449861103d10a907f7fd3a403c8e23c6fafcbd44b5bebb216697
Date: Thu, 05 Mar 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772746493
