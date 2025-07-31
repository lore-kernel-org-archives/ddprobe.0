Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28371230BE0
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753963195; cv=none; b=G70enh3iilpaL8lft3Hc1KbdxAO03mDIe50IDc/+P8J9cdVzZN6DNW7qLECho+OsNbX5jt+UfKEDzRZrDYT6JlwoTGXq1BjPdY0aN+lKxWuX6dztr+eQDAxS9aQ9qvANGJd8kU7SaZMYjI39PdFoBuv0QFRqYMJ7vzHybWGDyxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753963195; c=relaxed/simple;
	bh=p3nOPk8FSf7UoulqYyf6/Ysaf2N0bJlQ5kisCVjvUaU=;
	h=To:Subject:From:Message-Id:Date; b=NBA3MSNC2wMrG+VlbMI0MCq0Mg+HvlaJNKGtag7+o1t6NRU0/+8JP9qywYR4HlvYiMfYobKjk8urUI9HxUr+THJDHTzeL50KG1piwmh8mguuZm1ZPWiNVObwCX5U/KqiHEfFhhSDoyTj/NGfZjn+HK8nG85t43U+568ITysXoi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EruBdR98; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EruBdR98"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C4BC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753963193;
	bh=p3nOPk8FSf7UoulqYyf6/Ysaf2N0bJlQ5kisCVjvUaU=;
	h=To:Subject:From:Date:From;
	b=EruBdR982adx9SndmyaUYXlbSy+0Ff71jOeq7kxq2nAJGqEih9Cjkj5JMN4irPhl+
	 M1LNzAmx61a5NeijdjMvPiIftZ2KPtQvnLPQYxCrBdpvSLbjhSm6+rnsmrltZsa6rx
	 lTj/Mm7tBx5mo7Dd0sWaC4qkVYhD4q7iQo+4WPyNw+ZESu9ZRtjOUd71C+6DWLYeih
	 79cazoYjCjx3ejxixKBNJadGNDkp1dzFgCDpyFN58qer0+v9mQ/wkQD4Rt9O4P+aFp
	 OAAzzlFRLT/nrd8FsF/gJTZUuAYkRmPu59zZzP8QhUWsGZDL/xiG3ozNgLMeEZi7Q3
	 cEQ4qim4is4xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA09C83F17
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175396319357.26122.11510473676004579911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef6ea04e3ebab916350e8eb8e0fd00d0c93edce7a5989f4b6c5074a99d845a0e
Date: Thu, 31 Jul 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753963193
