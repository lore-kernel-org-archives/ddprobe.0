Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7C2535028C
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 13:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763732514; cv=none; b=sSLhT3l+YwOiYkKOmI0/Xt1ESMJW661ZnpCTm+Q9HdXvbjG+0wfNqIlPQhVkOwIkN+HtrpWJTMe51sdPcJjlqecvpc1LSie04MYmh5z/UD9oUfUe5I3iHhkKUuf+pVl49CyxBfeoUmyM52KCyQGlJnJjP976ecUpNomKdpWlD0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763732514; c=relaxed/simple;
	bh=MZrus2cuRgpUHi6LaBfBEE3Zz7qv/5EF/6gZ+BKoX8Y=;
	h=To:Subject:From:Message-Id:Date; b=CVPz7dZTkH7Cue/+hJa+/PxLax7uQpYTNWvz9KTV+BTmOWdMPBklugPLd3jwuhjr4PsdAL3RPBsTjRetAERiWWDeEWhLi0J5sfifJ91IScGe+Bk5UP9Y6mMtAmbFcvJRxYMngIJiXw1lmN2y1kpc9bw950GG9YCmSbF8cmW4nkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lLryHh8M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lLryHh8M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EA6C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 13:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763732513;
	bh=MZrus2cuRgpUHi6LaBfBEE3Zz7qv/5EF/6gZ+BKoX8Y=;
	h=To:Subject:From:Date:From;
	b=lLryHh8M9pGfJgcl4WuhwH/ZNjaGg/7hAx8/Df5mY0RuUCAYDv+f3rK6DyKHyrYw0
	 IMARQyGFnSkQsToqN8qOHaWrS4Ac5oJcKiJu93fvlsTBpCF0YWgx1BU1DQmjyYCfm1
	 QrOWnW355wPnGxkpBwi/LFOqwp300h4T8bh0tHfHSCM/JNZxsSjZH+ihTRiijfOKUB
	 R8fta70mvJHypDUucKbL4V0v34AX5I0vi6oT83yHu5/u9VCizLmnY++1DJEdfImbac
	 YDS2c6dfWAW1pBfOmLdtY/DcYzWp+fgC5Q5vSHzS8bqZWPPrVEdlyiOlyhQjFl6fca
	 8oEC/nqxvJ5tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961EFCFC27C
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 13:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176373251359.31013.3941564536833174342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 396f28cfc2ac0183aea7145c8ac19af2b0b24d227802364ca1eee9a5a41bd521
Date: Fri, 21 Nov 2025 13:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763732513
