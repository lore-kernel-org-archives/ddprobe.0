Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42314620
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 02:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718935283; cv=none; b=DFCuxY95tfUk1PZYPevnqDVNV0VwkYNAWcrpnUnk26/7MWoVmZPic6RFsoDiYhQUY4k45Hh7+8UFk5SxE+n4wuaTBI/F8JJjM6hGk6JnaIUVU/l8uye/JioBAsE+XuqTsNt9xxEf5WhXeMRPA/OzctAAm5hCU//8EYiqO8e7hrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718935283; c=relaxed/simple;
	bh=TGx+WJGLoo7BCgUpC7UOneT89cGYYZ0uMXD4iJLDoEQ=;
	h=To:Subject:From:Message-Id:Date; b=PXEIB/57Ni6uJ5PngcWy3fYLrOE1lNv/ELuE+j6aRApLZZ1bdXnovoWoYKt3HghN+uz9VKImLY0IFuPRim7+lCqlMaH9AZ0oSzFkepyTS/qVT/xqiMX/+DKluipHqRDs0WLsRHNxey1zBHyzuSIsjCzTOoaUujXqqV5+u/MnIQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kR4AX3E/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kR4AX3E/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A7AC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 02:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718935282;
	bh=TGx+WJGLoo7BCgUpC7UOneT89cGYYZ0uMXD4iJLDoEQ=;
	h=To:Subject:From:Date:From;
	b=kR4AX3E/p21sq4B7DJU8u4IU7rQ7XqrO1Lg3nN5wJH7ZwmIR5HObTtsk906k67c/F
	 girU6ny8PoDPMGJ1wNBilPO1Hb220cXYVcqXtJRP1RmMZEpF0E6W9V+8a6d8yofxWl
	 0qKZgHy6k0kG5Xht7xqR6Csd1JqgXjDhrctAGNuzrdg9zSnOsI1BnFdTN0OpBmWdnp
	 cLE9Zdv1G0km6Il9ofUmaKXa0qAjV7wkqaUm6d2P0FY8J5xKVnDILS07Up2GyRTq1S
	 HXFTMmk5nSnl6LIbGFR8++Tl2pTSvbPtWg9lODdPiPQ+g8noI7BI5+8BsAtiR0HXer
	 g9tBphqt2UJ0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF50C2BA18
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 02:01:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171893528277.22708.11010505412311698821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: debfa5c7e05903d0037be6e08f622856043e20f90fe9a9bd553cd4289667c387
Date: Fri, 21 Jun 2024 02:01:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718935282
