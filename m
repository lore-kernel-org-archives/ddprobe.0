Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4031DF755
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744188594; cv=none; b=Cl/YAg/AeL4NNZwbTidbitWwHfYJ0w/vugxcDNV9PHqjLUM95QbFalEzkxUgSTbKRdH481ukF29dOuXbv5Yg5YD0RFBczoMnHM4xRoYOY+QZxkrT0RwoSTmIaOwiLjmPaTu4FQyR9IOjGzG8qinACkZtjwUwS1OGfN0dAjW+pH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744188594; c=relaxed/simple;
	bh=xaPWIKYlJ9NnYoa49wcHsfBWIEhu9Acnm9mHrR3eTgk=;
	h=To:Subject:From:Message-Id:Date; b=DMNKU1NZ8BlfasksjUjylCl3OJcX/gaq3xDc4V99KF8CmtedyxyE+wMy4H/6OT1VYhy5NxL1L1Eo/2xBqovOoV5u6qSiomnMQ+jcIWxWADESHNT8sL/IDOu+fs6dCTk1/EOrwytnGBEaHl6qq+dg9zd5a8BmHEzdkrEVafE6TGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ISBHgHyV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ISBHgHyV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B06FCC4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744188593;
	bh=xaPWIKYlJ9NnYoa49wcHsfBWIEhu9Acnm9mHrR3eTgk=;
	h=To:Subject:From:Date:From;
	b=ISBHgHyVmGr3mSFoXMmqlB24H/pqAII+2jg6NjSZtO5MGdDFMyf3jMVRY5PudpQCd
	 Qol62XflcO3oOMuSd4iBe8M+6sMM8lE7YUl8+84P1EoGOzuZz4s/niEIHdlewrZ7vA
	 HTrd56gHFOO4GUaX/Z94qmzm0xb+0cRq/JLudl68MlSLZqlfzcNMx86m/UWaJKI5sz
	 /qnoaUzMg8BbDOGLmRJTCKWs0qxTw0HcKvdYgQ19aPbpFjFa1GaksUKVvo4zSBYKfz
	 IF44o4QTV4yJsAc3AG+4dS8HtAHl7cDLAo43khlUXQO5Wci44dTKCC5Yt905AAQONz
	 m2lh2gSLvzDrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AA7C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174418859359.19653.14935685312934403387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48f990fabc679fc8dad61d5c3cf4f9cb9f0baf4d74bb837d60735de615cdb8d3
Date: Wed, 09 Apr 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744188593
