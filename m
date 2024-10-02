Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9BB19750B
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727870154; cv=none; b=XhNgwpsf/dmTNemOHWzhaENL2WyIq//PHzvqt1wSyGhuzcYNAD+3V1lIL1U2AmU3XgZjF4mR1tf0QNUFRPILaCKKIdWssNKmyteJZxwp4xBBS8+OGr9fWZH7Mkad7sUhT2OU51FYnIBFpkPuy8Q8Le73dheTlQU/dXC2+Ibhw48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727870154; c=relaxed/simple;
	bh=zn/x0ER5H4la4feHkizWbJ+s9kiOkw7AK6735LDbt7k=;
	h=To:Subject:From:Message-Id:Date; b=EAJPSwE2An67/5S7xaKOvFC+dz1ocU16tHAx9s5p9RA5xlsUexqeh5Tyv31ZzFoRN+13zG1kfT5SUH3EmmsvEeqssC+Ywl4jfQSjis80k73twpdUYBbeXdEcOFNmYMCEEgFg8Zs2rHTffYGp9GiUT/kLBBksUO5Irzna4J7OJ1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bFFHHUyW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bFFHHUyW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B25C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727870153;
	bh=zn/x0ER5H4la4feHkizWbJ+s9kiOkw7AK6735LDbt7k=;
	h=To:Subject:From:Date:From;
	b=bFFHHUyWgDTmpkr1ftAjQJigraVAAhkV5bt1zJ3x3lmhKtbTwtrM/nGkDMDtEBe9T
	 pVOip8XuG8Uj/a4WmJ2kNhPdjGiBvZzGRLAFwVTkzzeqDpUVZ4kWGwIHhIQboUzuSk
	 b9EKvge5XDrDvIZGZHXPp3JFWil9WL0eYakEfA14zoI2DKSlEyF1QoPMhNYj8NNcvf
	 R4uew++J14JSXrHd5wiuqD3gvWw5XS257w/7THp0o21L99E/L8iMNClCikS8nIi/EZ
	 ZruQwBlslhkgfUw6ETI0jc1ixGU+1NdN8FgI4RmY+mj9ibqRP2LyXmm9jk/ZxdUqX1
	 +kpQMAxq68tSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F554CF31B7
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172787015363.22575.15779838701028974000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ffb2c38c171e426568737b653e7081b05095074ffdc87b84b105bece24c32d1
Date: Wed, 02 Oct 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727870153
