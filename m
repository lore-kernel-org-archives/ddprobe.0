Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6B62914
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722650754; cv=none; b=J02Z+vogP7ux6hjOs1s5aF3ceMVgxM4/6ne3rTattHNbDf3l8eSf20HcIn6+yAMnBVIDL2/DBYbfY9hNkcc+rdnfuvDuYIoBJ6GgWhKMEq7Vkvc+H4UUcqetqZ+Pgk+KoXawYBIlq73Sd+9VQSHaRnZhUeBemjwYx0JS2PVdHlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722650754; c=relaxed/simple;
	bh=cAswTaxK+XakxcuBT7P+cJgUBChvcWDtJmtZMIr56po=;
	h=To:Subject:From:Message-Id:Date; b=FN0vkvCgqAiouevxwcFRtoO5AsPJrFLqhmHEGNkRXxMnvF/8OILkTVJGyxfHB5fFyACKKSttagWIJxjRdPmonPx1dWmUlXWLWgRslc0NlUym7LUPjROs5vnDqPuY5Jzic429kBgujew3hfSuampVYLNUnbA2Q7OHRUuDhGmhKd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OdwXoMB6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OdwXoMB6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5190C32782
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722650753;
	bh=cAswTaxK+XakxcuBT7P+cJgUBChvcWDtJmtZMIr56po=;
	h=To:Subject:From:Date:From;
	b=OdwXoMB6x/JAj+RLUFQ6euZwmaI45cc1FL/h17B+9RoV8AYVGWcI9bLeEDm5PRZ6L
	 ja5Ey+oPUUCVv0MhOp/a5BA2Ig3CNnTfPh9m9ttbYP2YGfbdZb0fA3KR8HiKcVOvvv
	 0pl36IG44z14PYj0HpR0edm6GvD+MAyYH+buiYXjMcArESQadjZUC+kWL0CGeC8R48
	 UFwVsdrwMnahMGH0xVbEzkCtE7Iu6g+KNRW/FLLmPLe3gB/+OMX1Z5wHI3VwJT+Ywb
	 E/qX5DLb373GEVby0nGdImQ5+NkoBFkQSzRHfbipWvzu2SfQO7ON+Z6NfrG1/c9cvU
	 uF6JBoCxxv75g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F435C3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172265075360.14390.6659807697163821356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09feea6f307fae112aec707f46546b64b0bf115750150724b5200ed1e983b97a
Date: Sat, 03 Aug 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722650753
