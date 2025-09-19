Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E312F25E0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758274794; cv=none; b=ThZ9dFpmo6x7ErxPjP3YtVY4XonH3qi74jfKMG2BSx1LqFixsBZaMagiCyJS+SwKd1AKEckz6ZX3JJrhW28Bicir6OBMxvHD2cWJfjgme1/CvN3uCGScYUlszCI/s9V2wnSkzo1j/TI767B2l0XaZNnIVSHzJXcrvvLiBIsAmv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758274794; c=relaxed/simple;
	bh=OxOWy3AdXj4J029SoaQ59GQNt0y63tZfL+l4nkr6ioc=;
	h=To:Subject:From:Message-Id:Date; b=MUH1O9/mBw8mIkiTcK7oe+7XjYk3RYBC7kUNVmYI42jlBG0PP8RLvj7hPY5Y5Y9alUzkwkdJMH8zq9mxEqZ0rH54fxRC85hFCOGy7TUkpt0OjDGMQgvqeiRgK8lgw7LnORLvl6COWlTOvRoXfmKIZ35IMr7Q03NgwXO//v8jiLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=riElwa/W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="riElwa/W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0326C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758274793;
	bh=OxOWy3AdXj4J029SoaQ59GQNt0y63tZfL+l4nkr6ioc=;
	h=To:Subject:From:Date:From;
	b=riElwa/WvDLnrIxrTpwp/goo5GpK8dhJ5vl4nQ1F6oPkdvKWEhhn0ZYjgu+pgKzR7
	 SZOcUIT6pm8gn5TGa1qHz9gzJPlUsNRRnhXxsRLF5oOf+3J7Ihl1kbJW+rxIzzq0P3
	 4ZGUHs/PXkzkm/bHQyuBpLIaNYW3jblea51oFJnjq1Lh7OPi2+IrIsvbOMfHkaigOd
	 d1a95bQgaTqA9Z5suyfZeSHc2TER5ZUv7y5X7gBIijf0JS4rFE+8gP/E/wwYIsRjM6
	 AXRSu+fDLAuDDIsL2oQvFn7Y1cv7rPuUFZuagzQRmqEXKqxhtbE5m6pjD69wP9mT7U
	 /JyFV4bOZHEzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90093CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175827479358.14594.12081847595780161558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebacff89cfa1b9f239ead91215923fea647fc624f855ead45dde926625faafe6
Date: Fri, 19 Sep 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758274793
