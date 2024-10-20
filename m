Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CD228689
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729467954; cv=none; b=rWKE/8TwFT+XS4+Act/t/h/PIbDWEeIqTG5SGhJptRVk0brd41w+oZVVKwRKbxpFMkJlEZA687MplmdqSjWXT8h7TEJWKhuHZJh+pi1FoticG8+QBO/nghqlXojSqaOdaPQRIrUsZU3+BdY8ClFQUPmVifv8RjYNCVId+3iQJHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729467954; c=relaxed/simple;
	bh=VLAM8h+z/0vIEl6OiX3YYR/AIXg9MxPBbSdWOIFSZMo=;
	h=To:Subject:From:Message-Id:Date; b=Axav7r7ecJVDKfmIk/7yOpVWp5XrUXcgckxxy6BcvLybr2rfFx7Wvs7A+aqHFVemXIeBEfX/xhn6ZvsmgAbwosEeTUpm5eGlizsdUEqDiyarAX6K6uLnOACtZ5hUY4ZtYzt9/TouZRAcYNxgutfVMpiKT7EbSUuDp4nyNx2mOnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IRNhP/Te; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IRNhP/Te"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EFCC4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729467953;
	bh=VLAM8h+z/0vIEl6OiX3YYR/AIXg9MxPBbSdWOIFSZMo=;
	h=To:Subject:From:Date:From;
	b=IRNhP/Teoqmhfl2wjj+O+rFtBME8v/2nktbJzxd5+AsUiREKn2OOXrWUj8aw16hh5
	 kfjs0WD3kbno0lvroJx+wcahbeocTXNqRRbxIP2/OjsqoR97N6HWU9tcJhw0zYZfgP
	 vbZh5cuTD7+sqc43FyNKRqjOxMjFU10JeTRfg5soiKkA7WxThA4TUGwaun24QnAaXP
	 5ggxsQf/0mwEwn62dvRdO+3a6P88ABwMbDEe/5IeN2e9NsnaEa/3bIZNjUw9ajMhUX
	 KJE9Rgx6eWcBPVYBDTTeVwRDgA9AfTshm+DikeQQzUeLA16Tjgv551uhWUQOpcXvl/
	 kXWwU3jKGRIHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B53D3C935
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172946795360.11513.4750936408656001256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d308e553d72a64969375fd23a4912551952d7bb75013ac564297179e8fce9b3
Date: Sun, 20 Oct 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729467953
