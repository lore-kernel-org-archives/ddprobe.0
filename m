Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ACA23A3E87
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 14:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780841674; cv=none; b=NO8IbBeU0doH4kTJMkJAF50Wzw8johr+hjV1gMdjzA23BgrdpGkj6eKF8FuVRxkWXY2+/E9brrhllkcitn/JKqtNT2E3djWXR+gxhUQbJvkxOeIsVgta/qwDFv5GrwutR0MydlQQTMRFRhJWSeddu26vAHAbdmjGbdu8p8yYRhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780841674; c=relaxed/simple;
	bh=hxELChCVzXTf2tYTHLcbUym5lYxYeI432FaZv8AqgRg=;
	h=To:Subject:From:Message-Id:Date; b=DUVud51dkPvYKVEbkZKaMvJnNVHsDsDyUXv3nnGye2NmbIjJ/itfAOu85OQKlV5PWJ8EIZE/tH5rWKy58wf4ZiyBhj1hxhz95x0S6s/lLjkiY6P5ma7Pwawu7xH7dvYepvHzT67P1DF9BZGO9dPSX5nRnWpqKAFn42kgYO+bT/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rmRNvA26; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rmRNvA26"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C31FEC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 14:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780841673;
	bh=hxELChCVzXTf2tYTHLcbUym5lYxYeI432FaZv8AqgRg=;
	h=To:Subject:From:Date:From;
	b=rmRNvA26CNwP0g9fT2OY25nW4rrQwKvWr3qQYX8z6Dl52eIc/aqeWCJYJjPpujrnb
	 wFjzh4ZT6yEebaNsOYbnZh+MkoI/66jrUiJOyAGhblHxUeZ99Qs89NP7hXk7hVqHYJ
	 G/tuGie/N1sPo3xR2iUlOsM187PJsq/VPu7wEnhFeVbtKWq6/8+mtEbuMqV7TAo2zE
	 xlbtILcuTd1Xrl1Z8VZOzEKnw9B8DGt2Sx95znuAD6Kda2O/hWnPfoL39DDFcwOv70
	 qS+FnHQO0ws5dUaOKOny6uyECJ5QtXxh9Ut3zNUdgKiOj/CqH+IRV+tMrANcncthTS
	 /WTDiHJUb3jKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DFDCD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 14:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178084167368.1246.3463207391873729909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e526cc78caeb4afedbdc62ac00e7838adc580aadf01f2f4115f8edb0fdb2664
Date: Sun, 07 Jun 2026 14:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780841673
