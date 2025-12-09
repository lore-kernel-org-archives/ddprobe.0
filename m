Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE8421772A
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 20:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765311174; cv=none; b=fOHhZt3yCnYkCCLtpOWwsXG1QgJ0tPO57OAxGbSj2LCl2qxHoyNYf09GhqR3z2ybh1k4xvosn8Z0OHwKezMqJEWOwgXiDevllqBU/s7B2rlZaaxp4McTPIR1zFcm59KKeq0tQUNFOZwzNOpicHlmkF9m1EAwmRsz7Gu5fftcSQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765311174; c=relaxed/simple;
	bh=E02S+AXajxtcS+EEJk2wQKWL5P2/KynNjVvBUd8Yz7c=;
	h=To:Subject:From:Message-Id:Date; b=iAxE4OOyu+CBAXHZl9l9Q3tUVkclmYXt6d6LeNjI0Jz0hJEumgoMJS81FE886ZyXhxmyolGFls+hmkgnDf6SF9s2SAgJMTpQcHZlu3mXJxP7k3KOaAvmWto7iY/78Wy0rtVSe7wRCspQz1YhSBZInpsLUx9V5B4dr0XI5U7cQi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dlW5FI1l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dlW5FI1l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F35C4CEFB
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 20:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765311173;
	bh=E02S+AXajxtcS+EEJk2wQKWL5P2/KynNjVvBUd8Yz7c=;
	h=To:Subject:From:Date:From;
	b=dlW5FI1lFnBMw5LPTqPt3mbKRVc1uK7fF5Tj1R1AhH1/DjHNjwkuflu8BLDpuAxC2
	 I3xE45cVzey5R6jL2Az58Ng4MaH9lFKxM9Gg4/nln9Hk7CLJCjP+vjpAU9+9kOJyzM
	 9BRbtR75JkHgd7D7aOCt9d9ahnfX2VpyX1rp1BuwiOgmZ9rJqN9s8IqYF74zM1y+pQ
	 MF/UoBRJZ6CLkD35k15C4AbTUZ977x8eiK+3aBnrFYFSOuOSf8c0qFPLF5Hr8XQoAn
	 BZOnD7p8sZdYKVsOD/NaRIYr1MRc/GobcapNw1O25R2RiSU8c2LxEftWi+L8/Intm5
	 LEPZY5IjcGSSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE16D3B996
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 20:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176531117359.29109.3131391561198110284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f8073e8a90669b50b552951a18ce7d83514717c92f3cc7e3a9f42f8f7b047fd
Date: Tue, 09 Dec 2025 20:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765311173
