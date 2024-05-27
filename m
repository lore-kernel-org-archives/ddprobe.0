Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6666463D
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 01:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716774263; cv=none; b=dyLHbjKcCyW3kIpjh5c+mrcud/AUKR8dRu4knqFvdyY1aZrojOpQk5o8RS9P25LrzoqxlglFA2zZeXX56A1Z9uTx0ieb9BEFj2KS1hFhgGdgI66AMCKySW7a+sOyQJ07IXkEVi89whKUwrZkF/+1oZp5xk3cIThPvTmSXyfqIns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716774263; c=relaxed/simple;
	bh=sIHoLnv4DuL9advME5+XsaKDT6AeSf9DVx8Vt4tYuxk=;
	h=To:Subject:From:Message-Id:Date; b=dy+1ZU9LtFiNLsuQ4tfoTIOz/dV1zX8A0ZCp+c2BeN/Lny5CfKUjKKPnZi16JIi4soTrVpVsoU1QetjOJuVjEVexqwooO20bYEP89YKHTyN3pa/edyX2fRuVO+vMKlfqcUsXVtrAkuiy7Mxi/gK1tvN1rbYihCpCBJgYnxAzwvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cmnQkILJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cmnQkILJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1A4EC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 01:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716774262;
	bh=sIHoLnv4DuL9advME5+XsaKDT6AeSf9DVx8Vt4tYuxk=;
	h=To:Subject:From:Date:From;
	b=cmnQkILJIHeeQ55jugoqjTPqsEGXJIUD6hiSYkMndA9+vzbog5ObaRsEM0tbE3E6Z
	 DbYeMyvKxOvdCuotDtjx5s7K647EG9lzJSqHkDbJuJ8eVR82eeP4NsIMMttIt/wy7i
	 t9zcraWdIL9I2ZPTv8uzutg4MsmrFGLOG7KwuwmT3LOlmxuBTcIsSYw4N0Ma5rwajP
	 5RlKLDSSNbg+OXTWqMB4XpeTQs/YsX9yCkPqKKAcCp2mRxe/TuFkvSHr+tl6Ck60u3
	 3w6+fwQIRyQRNQL5IQS5T1agVb3AY6yx8Z7vT/yRAarGmGBchYBhdoEyVlGYGC3fIk
	 UIiI/9ANlxe2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7D0DC25B75
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 01:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171677426280.8008.17580646660516117532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bb01de8930979a7f6d2f2f4e77dc2b5b96c68787d4ce0f116d5497ed6bd06e0
Date: Mon, 27 May 2024 01:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716774262
