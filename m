Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE4272617
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753945795; cv=none; b=uPONbioRZdA0ZbOL8YWMo0npeSzIoask/WOjSBYWsW/FKewIl+47gnJTYzuYn51oRaxgWH51Vt3FtQsLTBOuRDi4LNWAMNshlFoDe3QEdBHGtk7AlcITXqG+5iXxzBmegkOE6BL9spw6g8GLwFCQ0iAfcFzBaWC2blIyy5VuESc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753945795; c=relaxed/simple;
	bh=bMYbM7OcWXlL0kgolr3yALE/TgZ3snH3CWNfanBlO8w=;
	h=To:Subject:From:Message-Id:Date; b=T2GRJgURa6010gMfrvOq+hX+AlK/HT6ueogg0Lviwy8urodFOHWftj0mag/0Ao6PkWosFfJBhwpqwJZ+oHwfz6WV79xqvpm99kWEaB9wRDYng4gqBQ2ILLmLJmgZ4GTxYzUKaCMR+KJEE3O/BdnMXx0vc0N1WrqeY2cclt5PwLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OUbk3ZmU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OUbk3ZmU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B34C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753945793;
	bh=bMYbM7OcWXlL0kgolr3yALE/TgZ3snH3CWNfanBlO8w=;
	h=To:Subject:From:Date:From;
	b=OUbk3ZmUSih0nXx5Ig6u0kSxZdX6oym3jiSKqJFEafZh4fefRnMMWxJO5O8kxjtXI
	 7pl5Pjw3apTEZTPjkNjenFznRIwBtRosdrkptlGU/QbcMp1uETehHf5495yXqiXGSh
	 itVeYvL+9/ZkWkqm51SQfrXmeT1S9ZlrneiyGn11oMQMLcf/6W/91TEXGqGsU5XiMA
	 AucKLHFNqlInITmBavyfhpGXlphmauwB3++k34pbRXwYe0+vVT77eg+XWQ/kwpuroF
	 TMb3wCaddXURXudxPzbuZtz/UBYQNrj0PsmuCseRgE8JmTBjZ6mShKhxTEE4UWYbOa
	 deZCOW713TM6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F745C83F17
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175394579357.22926.2262611741824603654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8044571be0c6ecee481e72272693da30d29925e1b875abcc9d55cba0296123c0
Date: Thu, 31 Jul 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753945793
