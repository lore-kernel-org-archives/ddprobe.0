Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 041DD30B507
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769519034; cv=none; b=DeoBSje8LJs7dnzTN9L6D6LUL/AWVNQ9wNoaBbG1ZU3me5OH0yaVy8j5G6qZ4NHCJIXSBPKUwtIeBLbujonBeob6iHYkaZ1QKohS8NDmvDZRawpBtYFGB3HXESATc0fHCMVI1u89fcHo9bIP+XhZk+bT7RTIH7it3pay+whJbLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769519034; c=relaxed/simple;
	bh=uGhrPLrvHo+7ZHg1xjfn3kZOg948thlSPrJ1iJDXuR0=;
	h=To:Subject:From:Message-Id:Date; b=gnh0wHBuIaVsJsmXe4/s4hnPpnechxKKe34uZF/+gSnd0KOIAAQLYfmsjhoaBzpwvzTF4I2yYqONPEJSYCYlCegmVEMimHVnUqbuXTSpPZBTw5bF+ghKANNFM6neJZ5EaNd4ZEb/rtEjWhU1bNHuHXiyxVEYLk8WkZCstv64gH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MoLrAhZr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MoLrAhZr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4284C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769519033;
	bh=uGhrPLrvHo+7ZHg1xjfn3kZOg948thlSPrJ1iJDXuR0=;
	h=To:Subject:From:Date:From;
	b=MoLrAhZrbznuyvtHLIMF9xAFgLSVrNGx3FiGBGdQePROcPg8ZjiDxRAVmfRASjtQj
	 4D3Yu7EiPsJ16cDG7TKLay6L0I92TwRv15gz05up2Cft4InqPpXxNaAtKma+6CQAAq
	 Ap1yIC7IHhNFsNBp5iSfkumeA44bcpBw9NUUHoo1IBkv1YJIe2K7jdHcfbr0eABm6Y
	 m5M/cMjRwykYlyR8boNZc6QnZYlyQWK8npW9sonjRrNhv3ZK97vEs1++CCRFo6PlW/
	 1xiQV+bX4/l26Yy1xCff9nQql6XTi+X5bSEQqy92mm/72NKpEALBxrWk0bXFZLTYAF
	 S6VKNFPfv6tsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B3DD2F01B
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176951903359.13349.9275662406508783206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c23d4e95c7dd35d35c808f14d98ce954a7e782864b5e840f87fdf03b76276280
Date: Tue, 27 Jan 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769519033
