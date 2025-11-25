Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0346933374B
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 19:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764098574; cv=none; b=ucpezl4zoix8YuoTebcpVXBVV3Stgzdqxir3v8SLjVttOG6/1KeDbeX10CGQflXcRqeCwaUmLhfhooMvykXD/KIe/lg3Im/tZ5lQHHREeo9mg5P/uUSEcREUHmVitE1RstJf+52/CTkUKiUSMY+ZfkvQ9wKyOqyPjGfZqABIHXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764098574; c=relaxed/simple;
	bh=8K0+K65r/9nbBYv3DD2o1sdwHgxIxh+RBgHDrSQBSa0=;
	h=To:Subject:From:Message-Id:Date; b=G8VCA5rioQyBPYR6Mj5xLcrHK5DWUOLcdOhOSObaHYHBySC7I6ylKxxeF26+9/vj2yt4dlTCX6mh2X1pjo1SPjZGQG3AYIdiCpksPVjdoH7hq0aW4RBQ4fI2b4AXf3Of3gs7orvfr+p1C2JfESnLRKNwxDifNC7aDER4tqlbNR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qV4/jn2U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qV4/jn2U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B82C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 19:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764098573;
	bh=8K0+K65r/9nbBYv3DD2o1sdwHgxIxh+RBgHDrSQBSa0=;
	h=To:Subject:From:Date:From;
	b=qV4/jn2U2UerKxh0Lj0bluEMf8yvXUHbhwvOuNne1+LZD8On9CQeM+eaglgXLGujU
	 UOBN72lCgmGG8isrqupI5QuP3+0r1LmU8GRLtvBp2r/uis5VTspCi8qrosvHLBZ31X
	 Wk8vTbzBfvK9ogrfz6RNAsomRE9WJntfTI3gC1BtO2zLkQmZp4EmpqVS739IMWjxSA
	 satSZZsqTPX+/AWa3MumEg1KBOqUSatOXS7cxuyc+IIREma5ft+I+9DXY+2mvllJ+y
	 vAViMq8CZzlGEkjdMNGqWCkdq+i6uINGfXPo5Q4+WTB5qSHsMIaD5GZ4q+wasY8XPj
	 5J3wwYpahXtkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D07D0EE13
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 19:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176409857360.3923.7760816342088194545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d2e1ea4375400d0e29a392646053d1ca2cae03f91b3361d31ff9adc407a36c9
Date: Tue, 25 Nov 2025 19:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764098573
