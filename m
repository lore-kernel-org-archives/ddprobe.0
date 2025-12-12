Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300E43C38
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 02:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765505574; cv=none; b=bkkZZbyoByoPUf10ffC9R6iiwCbaLuQtgEnQJdiKydzSzN2m32JnaSrr4X5sR9ZPPQpGglaUF7XsPLgcVQ9hWQY5wQWLOGgHSVOHalRteDPLGq1Pd/WhoKOEsba9RPG+1sySOuedOmdHS3plVSLjWQphp2geVfwTo/1pev/iZ6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765505574; c=relaxed/simple;
	bh=AASUMCWM6LoWmJ+ixSXgTD10ZpgzKIAfWUNLUJfxBow=;
	h=To:Subject:From:Message-Id:Date; b=sONc568jKGdiRFQqg05hge3umvVRE8oOdvgMiLIl+3JsZZa2sj6RJHRVeGMh3VDQxvU+17t4tWei4l1O1ZphK3BnNWoBVzCRgCT8PkbwEmeUPZSKy6XwxcgQDU11wpNmsXyUz2z+SCRvL5JsWt/ok46LajPMbO29mzBxfUwXjW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i91QY4pn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i91QY4pn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABAC7C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 02:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765505573;
	bh=AASUMCWM6LoWmJ+ixSXgTD10ZpgzKIAfWUNLUJfxBow=;
	h=To:Subject:From:Date:From;
	b=i91QY4pnUTTJt7ZRvztGZblIbD+lzfLIQquBKtAxGmQs+E71rrHiR5MeAjIkYMtcs
	 cYmBojKeNxgRnRsxoUT9i8h+wk7UTdNPAlqrmcwJdhuCXbLgFwFAQdSFmMhdoDPZjR
	 hO6oWGlnoTwchzSjVlKCdmJDqyjaLrUMIVn/1wF8uE3eNOt4kFuX3oEqRwUKi1cBiM
	 Vws6pvGXQRogQSnLzikKBEr6GTCb7rDCRcTuGb5NsGDP/vANUIPrWpgXg7uwKkm7yi
	 fLNdIOM3V4sOad2DN1iW92pOktxXwjLOGzi67eEU5DEDn5xziWQRTj74yH6+KusCBq
	 N0nmxWuaXBjdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFEFD41D74
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 02:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176550557359.13073.1039229773015619763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5def72315d7c782a3134884ab4bbc4f8601dbba83c6f85233da8df40fbe6078d
Date: Fri, 12 Dec 2025 02:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765505573
