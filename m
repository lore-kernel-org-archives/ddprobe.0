Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60E55622
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 01:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715908343; cv=none; b=kSFBbKxXJOr/JpDR7ApwbigN3CqcP0CdqUmTfqYXeLSXojdM1qC3hpYOMPSXtq2eoHG3fErZXgU2PVty1WUejl3rz7CY/PrHWzwnp5FCcTjyYDmYi5lLdRVq7Ifax7bEli+MSSWycJ9NCF0+gOh5xKQFMJqsxb7Wvdo/PVDLWxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715908343; c=relaxed/simple;
	bh=MK4NlbfbcxvC4tB0OqHOdvR3kFfP3Zpe2wCI+dltnpo=;
	h=To:Subject:From:Message-Id:Date; b=qymuFv0MqbjkqDlqGKsGjul8oD/4YA8h6pMS3S2cCRDoHfxgpWjeaLQurklnUGdqjsG/039OQg2uy7Z4QSLSf91uWazPUd7J+7djGsZAnsqeTklp3DmgVXaQiv67CRQh8/IerfUMN9CwwNWp+dzCoaNVpzAfNIW0dTyub8bGmyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S+1BzIFb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S+1BzIFb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E66C6C113CC
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 01:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715908342;
	bh=MK4NlbfbcxvC4tB0OqHOdvR3kFfP3Zpe2wCI+dltnpo=;
	h=To:Subject:From:Date:From;
	b=S+1BzIFbOBmiXnJMvU+qh5TwvXw7MjHbBOYK7EhIhjp4i1rEHw/2jqAOLT8p1ZoTQ
	 mU2ZLGqD0Jt5zRUoUXkrrdeVMl1mbPoCI7NADXz01UJvkIfMT1UmoR7kAXacCGsW+K
	 y35hOR32nmZNg6GEBlgLPUh5bTeHCj6kmGeRnXteCwU7zHHq+54j/TAb686CoPwtzY
	 G98jrn7+1wxgvFpHL1JGQZgl9KMKMzJ0spOkpVMp5o3GNHPfuZOD3KEQnsNlUb4mOG
	 gU3lqBSh5Hji6ofxz9xZqnLRbTPxw11eyQmQuxGA+gsoc95jLmaGSxdlgzZYyk/vWw
	 fbmSXxq+S114A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFD7EC25B74
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 01:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171590834283.30463.5761751550163245661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f47660334674e5f39331471f3360ea866f3f0cb28f3d007f37450e9663e93ca
Date: Fri, 17 May 2024 01:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715908342
