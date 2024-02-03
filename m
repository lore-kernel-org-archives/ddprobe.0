Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5F25D8E2
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706956097; cv=none; b=IxuU29SEViwEMihP3tbYGpoiVMC3TB0E+U7ZKIjVBtYnjHLe4UCirEamrWMQ8wIdvTGUJ+nNRhIMImxAa0itvLKoK7rM5FN2qAVGokG5BIeGCR5M11CEr3lJPAm1yTmbn36pDV/QOHlfGsyNMzmzwJteAgekdYL5jxHZGdU0RWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706956097; c=relaxed/simple;
	bh=/BkL7QDqn4vMnZn9vuweqf5L4fAzbSvxt3cWueggo+w=;
	h=To:Subject:From:Message-Id:Date; b=J7fk+79CQrRGMTE/VXD0bhNIFFYpJamrGhx2iSY4h3pKbGnIH2Wa0NYCM4HTaCyPyUPe9oyadIYXXiYlWAQ7T5/9hZujHUTZ5H4kMx3+CJYIqqelvhYzRMwjn3W3ox0bKVf6PX3tCeqOmSXBlnqfkKiP7lCzFmb4OA1986P9amc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Af35GztX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Af35GztX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EBF7C433C7
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706956096;
	bh=/BkL7QDqn4vMnZn9vuweqf5L4fAzbSvxt3cWueggo+w=;
	h=To:Subject:From:Date:From;
	b=Af35GztX6TiR7BR7VHR5aGlbjDhQ/kb/d/qwXCfRX4jNOxw3jSq0+DEY8c/P4xah1
	 N4JniINVHEa9FZWGSDvrnndFoGsCHHrxDr2iDcQOJH05Bh8W2dlA67WWjw1/hjO6Eb
	 QYjmIjyJvHMfuPG0blWsD0kTGKzVHReMcoNglOK9aihYsgHYEuENSlrIwafyfQUBhI
	 pmeLWbav7C3yMQw/pOyARTl2jF90IgXHd2jambHlbFVKlOwrhHvAIpKvj/toMAZQI3
	 5F3GPc+GapzGAGacT7/2+vo9JXtHtqXW0vh+rDbse2GqyTUUQDNxb9AbiI87wriOmP
	 /iqlK4oMs8QDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60C2AC4828F
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170695609636.15032.17458125315575209359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ceceff239624974e0d63adb41b24d8463b38e276e8b72c7b6abab2880666746
Date: Sat, 03 Feb 2024 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706956096
