Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E458F261B8A
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770965694; cv=none; b=RVaSygBCEXPEmi4TZSto82CmPIitmWeFF+Yq34M8AE9ATvonHi8jbwoks82NHWHVkQJMTkR7tF3QBCqC8MVlpYS9nHBbtAGqduJu3zYA35xT/UCzZGajzknM4b5hUpZcoPYyugkJS28YfS8Oug76qoBMflFFDk7FRSXQIDyUigo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770965694; c=relaxed/simple;
	bh=fwCB63X0l+sgfbltaRaoMYJd9qj4vlpEuoLM/bjDKdk=;
	h=To:Subject:From:Message-Id:Date; b=LbUkzSBMPb/0x4naD9Gp+itUVPP/sxKNXeL+2/TJufaQ9Sks/sk4p/3hw3YxTJ5QNs2V8ZjqIlqMzkipjmHuviNV+pvv+LlY63HceYRjvfHx2M4MJesBtQXK9A1+2BmvaBpbLu53JUKNsiPN5GEdkzpfm76NHVXJn2doN2W/PA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PhtpxuXY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PhtpxuXY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C42DFC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770965693;
	bh=fwCB63X0l+sgfbltaRaoMYJd9qj4vlpEuoLM/bjDKdk=;
	h=To:Subject:From:Date:From;
	b=PhtpxuXYxtIybZjdU0ffDJe7CnqnXHPKD9MlD6V7yrNoF23RoMd30BOF6fmhg8loF
	 mt1a/1DWIjiwcpPK4K9geyKtuDjBAgz/8+29xYDvDkfGMEnFUIraTi3itsuQrLMxjA
	 Ll5clDJdQor0LYEnaddTn/mWoCQyGdVTmBZz+ikuiBb3AQLE6TgJnqh2qBVRLuZxzx
	 3Wa6RBvdsfn2Wenh328kjZP0fUohnEU/rxt1+z8Ik7B4FNHk3nTVtS0uY9EtojXPzk
	 jf8m11reBnd2FNf8vnJTuSWMxTPjGOFgy19Z7SHen5kIciL5xLAGIZ0vLuhnyIM30w
	 xTYx+Z9DkEdNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD791EF48CC
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177096569365.2438.5684075063033075944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf5749fec5e0f9d29dcd09713728efdd1bbdcb3b78960eb4e327195ba60b350b
Date: Fri, 13 Feb 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770965693
