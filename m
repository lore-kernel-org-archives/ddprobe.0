Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149D930BF75
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769078034; cv=none; b=Q02zJqPpkBeUYZQQn/KyrstnV4bCdyyi7iLFOJYWyW4bWWToiaxjiqKufnzLRtfg/4foqXVN3Jh7TsHqeizSs1seP31lzbROJ8QkiGwDwlBSS8K/VuvyEMpnLAnDCk6lAaA5jQPu+KfO9GOABEocTJKoqT//jNCINMF2/dhgefk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769078034; c=relaxed/simple;
	bh=FX3F767SlwyOU9juX5fr0OwDaLD60t71hej9n+LKeoQ=;
	h=To:Subject:From:Message-Id:Date; b=r3udRBcxfMbAxRIoFfG25Mu38VP13RDZZboqaJ46My3TGqTixdif0t7LMRQvrWQjwcBYRtili3o5hTOdY7tch19C180xhsbZuwI1h+xBr5Iu1EXj/JTo/eWHg/c3HjifbNqmJ+qKkfKDM6PgauHOHd1c1Io0J7OOTBA7A2ldxAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mHxDk7CX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHxDk7CX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23AEC116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769078033;
	bh=FX3F767SlwyOU9juX5fr0OwDaLD60t71hej9n+LKeoQ=;
	h=To:Subject:From:Date:From;
	b=mHxDk7CX5PY86J9cQskVVd3moycf0pPABJ0D6t33b1mfbUk9maDsw8R9DQSP/3D+O
	 Bp9NHJS0mBNk2iwWA3smnaM9nEPlg57YDXco4RUQHn69eUW3LsWVvmQRmHy6LTFR9I
	 fElXt3Tlyqw+DHlHCIaSmQBXy/cJC0fxuTdQBuMN7jlyvdHyRnBCseOzZIg/UnwN+s
	 lOiU3UxfQHM6XeAvfmxCK3pVE1zdmaW1KYv7it5iwluSvBMvaXFakCSei7/K3Oeebo
	 HA0qbyddu1XuWcoAuS+s3+vcBHJH6GDeeykGwtsssEUdGNwKRLwmaB/GZhKGXA/r+U
	 obf2KcN47WZ/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91176C44500
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176907803358.23333.1632929367703890739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8766a24241f09986af1519b33ca40b34d4e53d7cb2a62e5bb36d1ef364cf77fa
Date: Thu, 22 Jan 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769078033
