Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EEE4301468
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 17:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770314034; cv=none; b=AYtT6uJiKJtiQjdrKkty6C5bvCyqkGmjP6P0+D7ftq1/MsdMmqsIp78ppv0v+mhn/NMu8o1jB6DTfCjz0U9/L/wydRysOLw16mTJ3cl/PTMfjLmP8xTpcitnZ/pddh7SBf6QGhzCo3OVHmjX7wnpcgV8VPIodS6Lzz0OKFzd79c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770314034; c=relaxed/simple;
	bh=0b13QtupIfQauYlS7gjEPOPASYAvcaYorOBylYFZuM4=;
	h=To:Subject:From:Message-Id:Date; b=cTWeH+PBiqAaqgAak59g9TL9CfaBDyT0AG/MkDzIJg09UKfHxrIhbq+/M/xjgRvVaJN+HGhe1zxxUfPnewId79DTF89Y4ZsQuoJvEexeq3kOTfShlh+U/qmJ5VKAf9cbBDU/akMyLqvswU5BRcDcUDrnDyx23nrt7Vzfp5Ahfrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YyxNAAHK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YyxNAAHK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBFFDC116D0
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770314033;
	bh=0b13QtupIfQauYlS7gjEPOPASYAvcaYorOBylYFZuM4=;
	h=To:Subject:From:Date:From;
	b=YyxNAAHKTHeXdDnWGq2RQzgK+lG1o7kIgo/CS+38yXh883ZAgtfWfxuOE0dhsdy4d
	 o6RZSYmymE8cFERfPCNofIu9VANWN80CGbPTkAtudrfwCZjxfzIUmKQ/O1eemDWQT+
	 Beejz2xgMZCictBA21dx3eQ/C0QIXxTZLSvN2andn7OZV0+kRgLrA7Yj28dX5fLVVQ
	 2OCalB9VkuWqJeS0J3UMD7Ze2FgBSF/ce4Q+P5cFMwQ2C5mNBMirpPlS/XnlZnwpn1
	 aQ6TSWwlXtAQMm8gqQUHTdzEQCATmo8no4aq5Hn6vEEe1ON3R0Q7YLyPg8ZyhfCRvJ
	 qRlJXubf6EA/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBBE9ECD995
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177031403373.21518.10078308769306304231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2866f2c575f800d7c1a96679661e350169ea510d468483dd98654e648e25a7b2
Date: Thu, 05 Feb 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770314033
