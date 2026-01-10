Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05D9A23C4F4
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768064634; cv=none; b=XooywWAQo6vWcBcg4lM3vR0nuBwKdRMFWcIUsyJPvi3tFL8q6R0D01WY2zH6kKsynZvVO3qjU0YnkRt3m8g0D2wq3a15NhTOOEO2tcVJ3LeuOJ7T7MyXVogHobG3WxZh2w5TKF3xhbCABGb5+zpZiPIcEj/dvm9dlyTV8RQ5hhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768064634; c=relaxed/simple;
	bh=CJ2AjZLI5GgIlWqPV0HGR90XxL0eCDOBOuHWwLfTQv4=;
	h=To:Subject:From:Message-Id:Date; b=bOxh1x9hPuSKKSN4NGiuUcjAg8B1hsQTSlSHNeFhay2+os+iTYXZiGPCa/68w0eaBFAj0SNOwZuPvV+B9WV57sq+zdYvbwM2kRUajueba48g1oKwmZaffgfS/BwNUide91eAUkT+oD7MZui9JYIQ85ReFfhCxjGZmiAlUTLg16A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uw6Z2AFY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uw6Z2AFY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E209C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768064633;
	bh=CJ2AjZLI5GgIlWqPV0HGR90XxL0eCDOBOuHWwLfTQv4=;
	h=To:Subject:From:Date:From;
	b=Uw6Z2AFY4j4A1Ay+/LY9egXAaYSwLm/EBrWEW2GnhTIpfZbIjDsmHTefTn8lVVurW
	 JFmPjsm6iW5iFIdXsuYAjNczmNxbb8qD8cNfXBXBDpsSk0bHxBvzXQi0PpeKBrHRdy
	 1JsUXPm4HG+sfgm10PVmuWM3KvUkE7GbiOr40QhnJCSxnde5rLY2gKbzrNJ1agO/Eo
	 rvWPyFVResgiUAhmJA0bYK9f3HBd4F9Lu9zIYPfGxEosQSslEwnIAAsh5KmqyO2qxt
	 7ELkI9h91Vwi7uMFDxt6O2QW4k94PisZZMk5vkT/0m1Q4FV86WU492/eHXTd67zrsZ
	 8gnuKOWJgln/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90303D277F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176806463358.2519.17003752264480998697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6188f7a1a09dcf02d2963724348b7ae0b8b269907f4fe5771bfca9c42dbe0f7a
Date: Sat, 10 Jan 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768064633
