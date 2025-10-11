Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204B317D2
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760186394; cv=none; b=UrQoYBbTikPC90hzOB+MHSYzGBljNnQQSit49fCQOhQnqU8O2i4jW514gwt5Em9kxwfhlH4x4uezvYHJADL6YNGE2yMVf2/8gyBPJvz8bS7YqZhBPlCbYnrIZz1zwJTW1CX5TzauI10ILoQlwx0yw5B1nYae2KHvAxAntRmOqIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760186394; c=relaxed/simple;
	bh=onviqeVSlLhDTUSEWELg+SW4pyjeSGXx6JKmI3CyZLE=;
	h=To:Subject:From:Message-Id:Date; b=NxrNVyIPohWXg+AXLE0uqC/7MS7JxPoiXbg9Yg+O3AN/4zQVd7bHikYazhhX+QNeAEhfjqxMaFYxZV4QVzJGTS1R0l2cDsKsVJRubXpbtsfptwZZ0Y1ZJrXQztgeWN0azYHXO7ensDC8uYq9K9Xccz2yWOw1G1FPnxDxT96t/6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNRSIczf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNRSIczf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FFBC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760186393;
	bh=onviqeVSlLhDTUSEWELg+SW4pyjeSGXx6JKmI3CyZLE=;
	h=To:Subject:From:Date:From;
	b=kNRSIczf1SlEpVv+6W3o6IWD5mkexniOpRyq3k4BSSyxlUcyFm/aepw2TTJY0U2+Q
	 hpJhIbopsQzUld1RUee9jKKH0xeLyUm9PmerPnqPrKK8SOI7ye9b570jmvhM9IOoPo
	 Pi2OAKIe+h1JwLPfD6iu6BWvzhAh5FHkRSBIIOd8ZioRO1tL7e7nHfK5QnlYacuE/B
	 yoYnLgXkjRp+C0C9/hPsZ89EhfLjSHWCdYDyhcO7brphHna7D9lhQ1VlUT2MWbN5gN
	 gVX0bdhkiF/UDu+Dw7oN4HIY4nRSU3fgDMgOhdxmxiIrQ+0rbSgOFtY4nryABzicAN
	 0jcCdebMHDK5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E40CCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176018639357.10966.308153884270782687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62ba9ba2e86017ca566eaf18b782b739e933489bbe2d3bdd382b6b76f1fe7cb9
Date: Sat, 11 Oct 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760186393
