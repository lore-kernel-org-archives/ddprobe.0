Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1412F12E1E0
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729424754; cv=none; b=YeQ9qh6h7J4Hz1AycVkSlmD2S8sMzDWSEmiZtu+EIbv+kx0Kdd/4imHAXCbMGW6F9AqHzvRUPT1bmbiNgV/aWlg+wugxDD5TniUrvJbVphOB1ZdmnTuHD7dHMqdn/ApEhhqRLziH+o9Hu01hsHTwN7DsrYmj7afuK1W+g6bpSDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729424754; c=relaxed/simple;
	bh=RTQqDBTUJfP6S4fM9psBUjDNCnl+TPyvAzKVSQW+OXY=;
	h=To:Subject:From:Message-Id:Date; b=jMomfTM4KnOLuVD/PevRSf24EQq2fUbJ1ZilT0cUyo4hEDXntyd0pPn10W2reuYK067+cgoFyHxyJss/I59dT6HKj8BiyqxMSQkvmZgVL2KV5RrSRebM/spnYLVIAW1wtbrmMd3P04X7s0uCXILuZSLBpPUII30lohv2rUaaBlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YbdP2AZo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YbdP2AZo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7F1C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729424753;
	bh=RTQqDBTUJfP6S4fM9psBUjDNCnl+TPyvAzKVSQW+OXY=;
	h=To:Subject:From:Date:From;
	b=YbdP2AZoTJMELvrPUGtY5arjqR6RucCaMx5tB8Ck/G9t9b2s3eVWZyRFIG+K9dr9x
	 Yc88qb8iu4Owj49V/hjQCbklCKnBIe5zh7dYwLWxbz9W0WpWXbo6MmsC+NsVq0NVeI
	 D6+SOpdYnodB+vGovT3YLUaHYmtvew88iN8sivxn44GAwcjddEN/YroiXu/nDL4dJG
	 VNEgudX3e9XAaR7vntJAy5C5ywzlRQSV4Q4Wir13FnFFBuh9Eb+ZgNGsf2KaMxW4lS
	 TDGc1HstY1+EiJPJinhTAgQfkDA962c0guv44Mxov8Gr17BGYGr+Li5MrhrUswUlj6
	 z6/NdSbl6FqVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97586D3C92D
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172942475360.4125.6749967714471697639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daead7f08acc5e64221a6de14d9ab0c581a211681308a1b3a90ab06cfa386014
Date: Sun, 20 Oct 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729424753
