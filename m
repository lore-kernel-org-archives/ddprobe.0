Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37846350285
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787900434; cv=none; b=NTjjKcJbkFa8n6eBXPakt9g7prnAL2xn2zY57nOtalRy3b8yycLdDynHvcKeMp6N9aiu6mh6tnDyHXLv0O3vojTZRkvJZ3IfMoolAlAPFK1UGxEEP45g9tTod0DJRuqPp0bbRT9mVtgeOMnzG8K21w6MG7X1T/OCzX9kYQEYJbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787900434; c=relaxed/simple;
	bh=oCI9hKNHTlN5nHi+srUFZt30IjT75sWRmvXFjxJSfVI=;
	h=To:Subject:From:Message-Id:Date; b=uaQnqo0KhR8DdrCvQUuucsbnoFlfm35NOq9r2kXzAXtZnlFLjIt0k2hO0o+GshEcpUrQFMcR9ZNaATsGAlS+r3wdbUVE3UDv1q4S7JVCHrzoQxM5fVh4uZg4tx/rrGoXVZZMTR5lKxiQubBeLnD8hZcNm8514Vj+PNSfLf2eNIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QBJnbugL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QBJnbugL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDCE0C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787900433;
	bh=oCI9hKNHTlN5nHi+srUFZt30IjT75sWRmvXFjxJSfVI=;
	h=To:Subject:From:Date:From;
	b=QBJnbugL0ggOZ8KcUcf9nUlSXxIxzxzesnQIKd7GAFr9u7vxKgqFnMGBpwfEJcCBK
	 FDgOaYWTwprPr52U93ullEpDZi6Q2iYv3KFK+wvLRD0PdE02Gu4LjZfkT/zfESfjQs
	 jK48mGOZHKWOAkLyaxQdeTBg3BneSyeSg9h+z8j64Ox0YJ7HALu9vIrUP4GYlHAtCy
	 cvFtIE1ueYenKQkf/RphOCIb3IgJkfX7+q8ANYOtaBOAveFXZBDP5Xrrf2SXGl6D4t
	 MYa0Y/Hmwaojvb1FckXGs5N32ZEEGjvK8deR3EvgUbGdw1BhrdO2hQ9m1CHVnUwzYJ
	 v5m5QL17qfGQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA488C61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178790043368.29943.5757474433729303159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 235811274b4465250954449fcddaaf19f85f30508f752b2d069b8fe000c54885
Date: Fri, 28 Aug 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787900433
