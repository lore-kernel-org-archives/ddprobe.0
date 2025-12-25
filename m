Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE153A1E7E
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766692434; cv=none; b=WjDMusGgfZNoiEW6/3i0DnLD2vsABAwAEr6U73V6wUzyhmrA85vkGu9EUjhsj1sadGNHjLaSczWwdGD0JMDGVENGqx0rOTRxFLdwOPaCFaI/YEKJyIQ9hXsp88ZgkWfEaK1rXG9Mgq4t71Tyf8gQSeAvN69CthS/CQ0C0JpzKC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766692434; c=relaxed/simple;
	bh=1HOpVsEWR6n7e5n2JrvufK8QgZmTmh2mA1IFxN8sfp4=;
	h=To:Subject:From:Message-Id:Date; b=YHesip1agqvVB+6h67GQeaGgX5ZQWp6u7CEyqzFAHANedDZp9T6Pgj1ueV2/nZjBX87cVIBQr+mbP0EMpi7fAPu+HxyzuRkTqFvMKTMbQD7bPy3piUqXjA5RiyY+GmnYw5GEXfwWQthReuNtZhTPhmkPjJtstoBVkaOumdYUdcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QnMEZ8YY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QnMEZ8YY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3987C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766692433;
	bh=1HOpVsEWR6n7e5n2JrvufK8QgZmTmh2mA1IFxN8sfp4=;
	h=To:Subject:From:Date:From;
	b=QnMEZ8YYd+boe8lg53DG8flXIwwqP+39Ocykv3P9qVSYzqI3mghA17upzGab39J/S
	 7pxQ2PPNsgA3zpsCcpCuu77qwyUVsKCty9BWnOKRawbAyd/Z5jT8pdQnjPcFFMkLwj
	 +LMygXu0+UAKrStp1MoS1pPdPrADc3jY0iF18/xG/XQujzbK5p9XUBKJP28s35Yxuu
	 HmqPY9xjYRHbk73tE+5OtRTulTTYfKj2w4edWpbHyjAsCgoTgRN8BUb1gFf935A+cd
	 fkFsp+2pbOOcZdK80hwl1S+4s8Fv6DsUZJPtDMxi9hhr2qxbfIstD2zQLaLVmsGWiB
	 x4uLy/Yi4ploQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A97E7AD6C
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176669243358.19412.562951697066599339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db5034de92a18bf6bada718ad5ccf715c998e807392ddfd83beedffc1d70798f
Date: Thu, 25 Dec 2025 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766692433
