Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295B6139CE3
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745871594; cv=none; b=MPhaETb+8EOZuH1QJZeYYjCIaOlpmOtTQDTkKr8+ncleaRFjCdTiHz0sLURwVkr5lIZJRIGKroba55KyZJQENfwpCV/2B7QI2fRYHnCL0dR1/jyQH1qDDKfctAtarYqtGSBj/UFdgR3p9900fVtCL7uRVi9eD4AgDezcFtMUxLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745871594; c=relaxed/simple;
	bh=gTKabLi4YH/c2cEhb+x3LplPKV4Zr4R4453cISKFDF8=;
	h=To:Subject:From:Message-Id:Date; b=pFSuzzUru0fQeHYzwV+dS0I31omCOThUurnltCfJ37xigcafteNahlMTtoiZ96XQpl7yUykNiSPmsOUePSV3jQmRhc4mUqvO0Inh/gT4A2N5qBQ+xbZH/McehefCt0o1caLls++betSDdUqvErnX9W1PsmIJ3rhRszXjFF/Ykz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o7pofaj2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o7pofaj2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6C1C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745871593;
	bh=gTKabLi4YH/c2cEhb+x3LplPKV4Zr4R4453cISKFDF8=;
	h=To:Subject:From:Date:From;
	b=o7pofaj2ev6BXqihIQUsXxFmgpLj7Sl63gV4leFSZK4jnQKX1UYAd9SW4dkWPC2N/
	 D2KuZvXb/NTldz0OLXyYAtqNdzlybZFwoIO07w3BoX6NJV3Ev4cfttTz1hq8FlFIq8
	 7O1B7lRN19iB0HF3jWxwJ2hnJE/llAFUd/FZHOx0BVjhEQW39H/alFp9vw55VfNMJ/
	 DwRsPfXRPsXjxZ5/9LpfVsfcoE2N0ztyX1H68nRNiJF7JJ/t0nWN7rUIs2kMY0H/z9
	 GCGHlEOs9F5L2YDdC7Lh6C/wKGsBvjTOAoAywIfDKVzsMqk9mNP1zFLVrI6GTS/A5c
	 F+hdqlHhB/gJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F227C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174587159357.5357.13658901071679364496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a14bb0292d5a62e3f82a449b3db8d16c255a1be43b1302e130c347b7ff3493e
Date: Mon, 28 Apr 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745871593
