Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C56B2629D
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744555194; cv=none; b=U7tHaNe9xO24oyVwTHoP6lnji9N1RftB1klCz3XFsl/fQXGhM33tRoxeu5BEPa0mhpBOiGez9AIqWxCjXSQCUsfY8Mmk5HcGb5VgtjvoMXVrJHHlPCYOkYAxeT6nzhFJq1eIOE1C6nPJ4ePCtZbb3yy1sV8eYXah+oWf32wJW4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744555194; c=relaxed/simple;
	bh=M7wkISqXBT2V7dmYk0R6hFNsBNny02mr3QjTz5/shvE=;
	h=To:Subject:From:Message-Id:Date; b=OqPC5Ijrymu5g09MAXu0btq+ZqjmrGIoD8SZ0Eis+O/tFG2LkU/UeAQxc6vxXbzRc3307COqe5AZIUUcjw6n77kd9NWyCMezIRvAqasSw3/mG1IF81Sn1oP8lQaRjri088bwtuwKmJtqjkMcBeHK6CSuaD9BZjTM1fuYHHh+mgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M7wpnSB5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M7wpnSB5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8044C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744555193;
	bh=M7wkISqXBT2V7dmYk0R6hFNsBNny02mr3QjTz5/shvE=;
	h=To:Subject:From:Date:From;
	b=M7wpnSB5iDBa4d1f3HxdZaDuVV/1cpv1IvbCiJQWoaWkrWVgJUgnJBGwEXPF3lmTS
	 2NJPhLMiOU0A7zM7Nu5uISTOFKe8tIuWhPnMvuWTjIn/19TdGo17R4aHIDuo0eaqz8
	 BKtf7rNSkiRnA9swtSqwZNAxbq1JE4F2IoFalkvMmrYPEUgIuSZwFmLHHa+VNf3rlN
	 tbjTBdw2x3G1AeOrtljbx+cOYVXRTbz8u/m4bTV4Me5EisZIVaK9Zu35SyD+UuY9cx
	 uQmkhZ7jfXuliLUZvcBfeFpttYIZrT3HXfbrqqSA3dF9GIW3NohRoYdBusDFU2WCRa
	 woZE4eVYiT88g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94548C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174455519358.2509.14993865159148949473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 856aef2eeb03eebde1ebfe28600a554df5455025c4a7c01f54fc0d06b890e7ac
Date: Sun, 13 Apr 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744555193
