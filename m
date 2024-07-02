Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B9AB12FF70
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 07:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719905123; cv=none; b=IunB2eEH9w/00Pc9/Ok+3WvngSvrX8lOosnhSc8QjjoDB4glItkOAqHUD7GnL5xbXecrKtJy8bD/fYtozbGRkFGc3uWoW0jYImEdW9Lyo9Knpw0c0fir9VjBVWue9Uu5kfoGqR4Tg9cRlmMRn9BlnXVO87+u4s3CCru4OZm/Lrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719905123; c=relaxed/simple;
	bh=v/l95cvBpjaNlfNPWnPs8/NZquZ14A9WDoVDTP4k5SY=;
	h=To:Subject:From:Message-Id:Date; b=M2ic0jbEGl3kB6NncUxsGwWZKJkoG+Ml1qmrDmZtMGAVkW04zxGE4z+ENd8N98TzRsNIU+NAeztDEkkdeKVlQ5Yg43Vxmr3Zj3NwXm5iE3gGWa/gqA/KKxTHGgzu7n7VKyQSEO8CpRfUxvYZoR+7gczCUg5MMBFOVYq8psGjqqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qHB/YhbD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qHB/YhbD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9DC8C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 07:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719905122;
	bh=v/l95cvBpjaNlfNPWnPs8/NZquZ14A9WDoVDTP4k5SY=;
	h=To:Subject:From:Date:From;
	b=qHB/YhbDij8L3P+Wv3+o9VBny5NaHN74DCL/uy3e1uxaVYr+CozXiBcBfDvh2c2/o
	 jbBqiz41dkg01OjbbCA+UAP5NKVfg33tpKCNimlElrQObxF9V9uaWfZudXVRH4TbzY
	 V9F0p1GrPdeua6RAco7l2/SuDA2P7E52CzCKBbRdIcnANOBtrviU0JbZ9XLxePJ75V
	 f3ikCt5Tkahhk+XQHUsHgnps7A95kPnUez+YdHTlMI5yPAexch43S3DWOfFI7fHm0e
	 XFz5bsXe2XSIaHyOepn/76QpJjqMzZMS8JNJ+iAlh8uc+AIs8CJt9QmT0d/8VM8i65
	 2KDyQHUPKD39g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7AEBC3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 07:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171990512280.4610.11462784859467761514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0e068046569c6ed5644921b343685c6a896c0fe6f77c61a20928d28961faf10
Date: Tue, 02 Jul 2024 07:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719905122
