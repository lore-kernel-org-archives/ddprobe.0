Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A75288DB
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748324394; cv=none; b=TACqyOcaOpsBZvyrzRDpHspkHIxLq03oev+DXW5Qks626+oLvErv/JO7dvPUnTXokY45OoX+cxuu6fCNJ+yjqTn+rCMfl+2ufnN45QcEZLxa9g8B7/5iTb1V2Ru9NmS86zrPaksQS9sjB62kNgX51KnZropwn6hlBjWIn3QXVWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748324394; c=relaxed/simple;
	bh=k3waNV+V90BxtKNTCmhNf/EYfvSwCsaIvX0yltk6c7M=;
	h=To:Subject:From:Message-Id:Date; b=c533UbRahE0X9QsdyQAAc98bPD4NsPQyrBrUWCcm0SbEPPWrGTIbja3agBlo5uew0/L3gWg+OuHYG9oZbnbnM6mwDRo6StXimzC7CssF6f6kj6jb5r6Mwz3ncMazCLcRe2/gVIHpG/ouBqpU0EOfCBf7wE56utjI+8v35sVsb9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5NvhcQI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5NvhcQI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7816C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748324393;
	bh=k3waNV+V90BxtKNTCmhNf/EYfvSwCsaIvX0yltk6c7M=;
	h=To:Subject:From:Date:From;
	b=Y5NvhcQIDbXRXnLE1ur9RJOpDWquOE+Mc4AOuUkXTJ2aSYjpnCg2G4WV9GIacqFKl
	 R+EA80PW7qOL1Ie9GF7qbivbqckQN09qi8K4Iac7y/2t2dlQaMKfs+zQHynVyE4P5r
	 8Df44W/o3wFG1lPRQMp8AkTYrEXWVQK7OyBXUOb2rJA+LxrLUMHvWEBVvGsKlvdrB1
	 z7veE5TZEn+XLfxY5o2GB9CvfccNf1JLzARfzpVFK7KGGZA7BrlxFbt3rcV+rxoUfj
	 SaHUngD815Kz3yWPQJ63AqtEpAwMiO5Rk83Rgf7/KlTk2lHHTVYiJK3MYrYpTqVOZC
	 MrcpZhye244fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94487C54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174832439360.10572.3035814455958739734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 437bd9db7e8c7dea06e2b26d4ddee3e43486e5e8d01d09e71cf96db92d651fc4
Date: Tue, 27 May 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748324393
