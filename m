Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7652DCBE3
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790383234; cv=none; b=Py9GZzG4uOi5Q/zFQOxA7vBxarS2zE3yFX5AJdw6g0jWOqxDTGf34gkzWWiZgW5g++vZPK1pJtkqfoxacNeEWKVVIE3hto8sKPKCnONW7T2akCHw5V54QxY1WcD0sK4b3QK+CCULANXQ2W/VlMqfzoznRtkEWblOrlXI4VLE8kA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790383234; c=relaxed/simple;
	bh=32mqK9uLK9G4BuRUZ1mKjf43i+ctHZ5XeruBp9F7Erw=;
	h=To:Subject:From:Message-Id:Date; b=j0GiH+tYJxrjzxF0y3Ug8I4Yt1Tuwdfb+NezJY7s/pBFfzZ7U5tGtIxFnu42K6F2xbYmw3LlEVkjJL1qPgL4RhBRk1UHP4jVasdtq25gX4pO5SP3iSe3VuVwiWOhSQDIX75hHX6iDcPJX4qjrm2cGycXAwfe4dHXNiHq02ZlLlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lhcDAqf7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lhcDAqf7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3CE6C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790383233;
	bh=32mqK9uLK9G4BuRUZ1mKjf43i+ctHZ5XeruBp9F7Erw=;
	h=To:Subject:From:Date:From;
	b=lhcDAqf7F5cKJT8uO4QyZLFG8nDuSU84ob63JRDjTDL3N28xUFB41R70wOadloqXM
	 dqPtXbhZb80LsjxQ4v2BqmFnoLn0Mu5LkmVl4LnMXb9vYg+OTuiC0Iryh5p5iyUK/I
	 YC4TI/L5KFaIZaGsi6LVOtTWNNme0klMxHHnhzI0tDyrNH1sVDmD7MCTW67crZIuxY
	 I1bRwCd8lbvGx0EF3cLuJ8W2/WUsMAcuapajBzIilXjX8IcGX7mQBNoIaPXqyLLwcz
	 K7wjxD7UIalDDnOPhS/gLDUFI3cv/NWSYzaZl/iS0Vz+0ddgFqrH+LMtvRRa+fv+a0
	 KcafnnKOV8tcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17A7C98326
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179038323371.21113.14740201808299409039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b645f1fd7a77fdc864d8cba5394fb452bc4f9589c4e596b268c025f2920eedd
Date: Sat, 26 Sep 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790383233
