Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE712E11A6
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 14:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779547354; cv=none; b=SGSmF8kO8UwE3wfs9lwXYIPJ1LJ09cpRXndcACHO3d4GzcDXO/vb0wH24jHzun3uoGvKUKEIrkUSiKFHb0SJ0sLrzLBBhc1rCoOayhDon7uPZEsnl42JfI2N7TAi1hCWfFvtlu6um/1UvEDWBPalcg/qZQXu1jJq9yo85guNusE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779547354; c=relaxed/simple;
	bh=T0qoLsGfSRG7qsc41aIffYiks8QS+uXDrA5KHKqg1qk=;
	h=To:Subject:From:Message-Id:Date; b=BthgW85Y3/TzAzTJ3yq4ud4dRPcijeCMUElKQGzc6zX+3VJRFWfawsiZyZk9v7RE8cvWF+hWdEA8wMTTElK9rbGUHomCskLmwP2H/u0kfghwnm17izp+E+ETL3s9YD539/yjHBJuWxqJC7ijXfGxNPjRliqMIC50BEEP+6PN91c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NUb8Y+SI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NUb8Y+SI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4DD9C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 14:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779547353;
	bh=T0qoLsGfSRG7qsc41aIffYiks8QS+uXDrA5KHKqg1qk=;
	h=To:Subject:From:Date:From;
	b=NUb8Y+SIVEJWQAWYw8X77jHk7dObz1DbsqVpoBhnM7GdMk1v6vxLBEfv/bOPq4TSx
	 iQu/yZrgwG9xyt+BB6ehleVRUuP1QhdPb83qSO+SdewY57zqm/zQ38Wvzerg4sB89X
	 1FxeLpBaoFHgMNRIQ71JIs/KSsDLDJNrwrK2wZBOiIpdPKLXB9cd1Z8vEBhulaRmGZ
	 9fog0QBPOqbvC1c/w95/khCHu47vRT4kFkWTgaE4YY3ofNS5A6u8ieVLpE8a4p1Ax3
	 ytfMK5wKcw12LMh3OtuyoD2xlItzTrk6jDIHGNlzJo0DesYtpQgephhLf4uDnoXqor
	 vsvlhZEYMHl6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA44CD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 14:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177954735368.23403.6036089925014893498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efbd6e36ef030bb873ed92a73b3cea438c220d1f741d607e95b9191ed37980e2
Date: Sat, 23 May 2026 14:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779547353
