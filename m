Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4C52FD878
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752179394; cv=none; b=DT4Ze2WkFgHj+a02PPRiDUEb9AXizvocuCa5K65gzvr6gzHYMlFF2zPdx4HoMMyVeUFCnr6nXcHzYYWjjbO+sNtTs0KSzQVRowJSMAa8fJbEEYw69pqeHJeOTPiEhXwrqHls6p5a51BAe78ifJ3X2RzIGRjUhpA7ylPO78EvTrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752179394; c=relaxed/simple;
	bh=QuN0oBK3+kq55e+H5aoBgk+Ji0GLEeX2UfYAG5hDoBc=;
	h=To:Subject:From:Message-Id:Date; b=i85XXg+SBDpBZwreYZubl03+FoltSmxghfayurZKWdmDT58Ch8baKAbdaqQvuHiQTtU8DNiVOO+7TIogTl84vWD078+Om5IqtuQ6qjgrZG/DsMktEpy6dL7qas8D8XMhQIILwSwsc33CQZxQ+YyPvRluIfApKlGr/EmebDzwbmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZH6tcg+d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZH6tcg+d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A001FC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752179393;
	bh=QuN0oBK3+kq55e+H5aoBgk+Ji0GLEeX2UfYAG5hDoBc=;
	h=To:Subject:From:Date:From;
	b=ZH6tcg+dAVvcVHIkS6dBzfp5Z6cvIQskLLqPGY2F8VTrPe94ERBW2B+QusZ8Tasbr
	 As0/Uj+LnCErHV/QuZPxEq8CgApt9c7TjizHGkL1usFp4DxEfm1mI5xwYB0eW/scaU
	 80rqHhCCr3AmTbVemN1xsOVANfTArSC0083PtfCDcjXJ3HUZ5HKkUEHUNuZe+f4Sb8
	 8rOy15yN5KzoSMvdmHAwWBVIj6FMx8xZNHe4gWENIzEsFa3CPJsI1QZIh4MGanomyz
	 ZJUDDOY3iJ6eAKWVCmfgJGB91RAnElqHDK0nJgazUht3noebI0DTo5GIkTa5ixkIuM
	 xW9PN7psgGBnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9140FC83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175217939357.13984.3625967706971233455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17ccbb9fae7f88399c7698af39a404bf18a9f23d026a2613a4e40742dd4dedea
Date: Thu, 10 Jul 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752179393
