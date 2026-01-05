Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6E32E88AE
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767578034; cv=none; b=COpnYCDf8khOKbHFMz/Kk7QjYpy24z6UQbR0eudOwj0qcRT8UpXI0Wsq+rRKuUYmV8ZnhuFwrDWxeIB6VF0gqd5JDjXIRFTT5s20qpFcII7v+JfoHfqE60Y1nhnElFUSN2MrAtz0zKAb/DU2wJAUVq9Lq+1Oc2jGZfnuRyFBq7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767578034; c=relaxed/simple;
	bh=GNUyqJDH1Z+Z8igeFYtBNlzEUa+yHpNUwS6dQFFSWhw=;
	h=To:Subject:From:Message-Id:Date; b=sM6tCjXbvYCorHRKu8yZ+mV2eEEdDL1LiPOyNPtBthNndhwtgpZHDYxZ9ZuPYm90rYwbll80Uiyx7fW2UL3EP9WMj72CnRKi35g7KdBOwGo0uCwAEbWVzLSJYHpmP0khKNisH6HG5ypQsiYbg3wWTA7FeOQiJB9+jYRyzLTnMug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EBgLpYyH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EBgLpYyH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D23C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767578033;
	bh=GNUyqJDH1Z+Z8igeFYtBNlzEUa+yHpNUwS6dQFFSWhw=;
	h=To:Subject:From:Date:From;
	b=EBgLpYyHyUhKEynC2uSF0fzIyo9EECevVuVN60jt1xOY2Jo0fhOTGfhJlAqCFRFX+
	 TvHCYAUNCUH6SWWDPpIuFvbTrsnSslnicEek6+nWXOY7W/xTDoBhUea74QNN+r4jfN
	 fPleQtaNVVxdv6AHXJ3LaoqUR16ZNbjCsZo6XVSgUh48AyK+syiBxXpWVYk0It9GVN
	 8/46eIhtvwnCvBGMpbz+qRgK1hkNvSPb/Z1HGZGk6AV+3Xl91mQhEQCnvqpxKYkm2w
	 Kcs7wxxkd3rqdrxlIx1hlpQ1Fkq5jvYlduDnyObRL4bXh8eUqUfrR5WJI7Okx4jaQk
	 5Sq6gZ4smb8cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CDDC2A073
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176757803357.18870.10576544404070523815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f025efa4e2361ba0e7d2ad14ad9569f9cccea04a68a168a4dc495bdb7e63ba0
Date: Mon, 05 Jan 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767578033
