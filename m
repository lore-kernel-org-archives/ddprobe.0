Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA8410949
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705771097; cv=none; b=ScWXSu4qF2yHrvaka559HxaGhDN/FUmedOD7AQjfqvcl/lrGw+eJ1DdvLRX2zIuTHyWwN5uBPUqSgw2qs7BsyVWftiuNTAXVLIGExUrm47INLtdPLqYeLYeqMq6kx95jU/5GGsk8YhECBY4l/VaeVJZLrq37GHgEzeLeb9oroLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705771097; c=relaxed/simple;
	bh=Oad/KOftaMcjhzfUYgPaeRobRqlbsbfOZj8dTqipJlU=;
	h=To:Subject:From:Message-Id:Date; b=c5jBPNQZfD1H4/p0EVBgzFKeAOinuRX8UwgpQtBzlR9yOfbCPWM8QapKqbggQCpBxprS9K5Kgh0u9Spm1oN79LH8tzolPxCAB/JXTcY3CPdxVIG8JBJuPmqsBz4i7EBdNbD7fZ9IH6w/M7qvbGMjw6EQMaH4g9zBy21rWUfSnyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KNsqPUza; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KNsqPUza"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C308C433C7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705771096;
	bh=Oad/KOftaMcjhzfUYgPaeRobRqlbsbfOZj8dTqipJlU=;
	h=To:Subject:From:Date:From;
	b=KNsqPUzaM7+8j71jhK43p9zw/qqDYCDLW6ZxPyW3CGZn4jQ2IFh9RqlfeEESvjOt8
	 QstKUwqX/v+63uxekPNhYx4WlGOb0YjqY2B0Cj/lCxAGtMTjIHed/6+lYzWTslqTd/
	 qKuGV0jvumoI+GF2gN8qPdf+omcWjsUldcN8q0Z89Lvh1iC6/LSikwUDkvN6bAGQy+
	 68VFVx4X5qnyDhqDvEy0LMGXdSdnTlZXbWBaA9yvt2X0EVIQBjfhnR/oiR8N+NolCl
	 c6VGqN6afY0ZEz7SAbZ1+zNmmaDiZRuIWMonuoliTc8qFHjXWsumH/mKJIOfT84kSo
	 2Q8umS3cyZTeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DCE7C47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170577109636.17237.8493954408143108044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2416f40ecae90e5795a6d9525023cc131b02b93af0cbc8042047eac2e136720e
Date: Sat, 20 Jan 2024 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705771096
