Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0DC186A
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735876554; cv=none; b=qbIX3Y1Ry5141SfHY2AzHgRFjIeb94K8NlBOVbGC4EoeZ2uMlOMlZMbqtcam8G6dpfGf3cAPi97Y9gQ1jOrEU+elcBm7nXYf6yqWz5HeEwgFNSGhZZOc4mPe+TzU4Sl01BsEVjY8Bps5/5oaQbPZ+bpZwhvWjCA6rmwXfuryNWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735876554; c=relaxed/simple;
	bh=TSDlSRRFvr8I7dkZyDuYgIX51mnexfTt7uCMJb/j/Lk=;
	h=To:Subject:From:Message-Id:Date; b=Jhw4gGWnq9Mr7epj6R2oqE3XHQRpZbsk4Ay3SsJsxaD3vHJfBRrVywFqviZ/KcjAkxxRtt+ryIIn+f1xHSPiNrfTu6SodexLIy4LAKfamEq+ncjrdBrjYbKsz/DJH1qWKzJESOBBH8CMc3wcv7o5X8t/pGs6+OAWhnyFQZFr7I4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T1EfSzwo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T1EfSzwo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43CBC4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735876553;
	bh=TSDlSRRFvr8I7dkZyDuYgIX51mnexfTt7uCMJb/j/Lk=;
	h=To:Subject:From:Date:From;
	b=T1EfSzwo6sYuVu4gWgv1lcSysPZLtkUAxqQxM9pQI/lCcTI/CrfEY1fvBeXFA7slk
	 ir+9KK95ZvmMwdDlw/7BT1tWorChZ8dJkEu4zguoB+Be8edwDmAqWzwEXo3VrBDH5b
	 f5NMyoNF9Q4CBAPTApb4DiYKRWK27NZdjJOoVtlNemJjwsdcMfD2+gw4LS1LyL4qfC
	 uftjCZvwd6XVYh36941aGY82Kxnd0vcvEpmoV1wXEZ8sNgKZoc4xu0kjopPxnOaobL
	 rUgilay/YftiFR2YW1R8TqmJ+idDDFL0RuDdDTjilY2fjRf12dfax8aN3iHl3Ua0Ab
	 ZFfZJJcs/mjYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE91E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173587655357.18965.260004240577084420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9852e9445f13e10f7fc9ab3ab78d2d44583c31153aa48f25be81303ed83d4520
Date: Fri, 03 Jan 2025 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735876553
