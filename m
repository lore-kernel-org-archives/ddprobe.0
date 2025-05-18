Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 451701925AB
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747599594; cv=none; b=PN8tRbdkz8PzJz65VUFHgU8ZAaFwPM3mLHOd4Efv9sTwdbn0CpRB872rqwWYhqXjQCU97CCyZiaCd0dXmWTFCfs7Q83+4glKl2PwN/1Kove7QpSzPA/np8XPW434spiVArdmoDqHq8wDHmv7HUFJNQuQbjmMiNMNt7NBAVmK2Qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747599594; c=relaxed/simple;
	bh=NhMX2ONUdmlD52vlMB30uRLkOFnxdyUEdHSjEINpgGY=;
	h=To:Subject:From:Message-Id:Date; b=DimdcfMaPNCp5493MqVzmCd/KNRCXQKcmNxnCWSzdKfI90mteh1MavKgAmLPU3gybeWPMhgKdTOPY4bnozCrtdEG80O2IeqkE1BKwIo1O954MMNGAtrSQwOriSXBrkPP0mNjApVSTVDRpVWpPR+piM1dpKs1qIDAyeekxYK6t5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ARZ//yrS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ARZ//yrS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A691CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747599593;
	bh=NhMX2ONUdmlD52vlMB30uRLkOFnxdyUEdHSjEINpgGY=;
	h=To:Subject:From:Date:From;
	b=ARZ//yrSrpk1HsJclj7AHtr30dT8QUCnOynBhoLMDdt9YLCtbOE3A0FsLB4E8nL+h
	 /qkGGtW4IQPglKtQlba/jd3ixEXf9w6tgCJ9FvuAwy30Qnt62KcAacu5GAWXWeM6J5
	 EmsjQ2DYTqmFukKYcXB1ApiHT6UwrOU1jHHUMcLr8C4Ev4bssmnudGJIKn4Qw2zH+N
	 x1lCX7QIWOGmuDOH++eVP2SmARIr2EVl8H4zEJmCb6FFHkKclFCe3yjyEXyZf8y8xx
	 vSHU6Cij/UImGrQsXuVaJvEe2epipd2zmW4K02zYQE0TkXrdOgnGLA3CljYD9ehEX0
	 qnNOSe2jQ+zOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AB6C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174759959357.5072.14660925929403523260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f995ed95566e4d8359acd9893c2bc2bd20cdc0ffca8019ea970f7bf50c1feef
Date: Sun, 18 May 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747599593
