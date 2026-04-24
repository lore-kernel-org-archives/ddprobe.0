Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1CB372B24
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 09:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777022254; cv=none; b=ioYEBsdVsKrH3qNlcDv4uvCnmFWjAXq9jHubFPW5qGjhdO5QK6ZsUrUCLvKxCBCfNY2E/Nk28fY54ywz/vBCYSY1WT0NA1ErX3gx2E9i+NfcOn4R8S+4tZB+IbEyaRb4A7qFPWh/nGJ9zD/I9wNIBDk69zUDx+NKGZddZAQZbK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777022254; c=relaxed/simple;
	bh=n7hY1bmXx52SJ9YBRifSKrFAjlyxvVyyYtcyU/xGl5U=;
	h=To:Subject:From:Message-Id:Date; b=bGjPvb/kaeYiFM0m6mXTg5NyaJsKWWi1gawLScZ79U+LX2XpdR2gIGBgsWWDx4ZV8JlK3CXVQovPNcARlvYTTxZl3LDkU1OjvmFnaX9a/i9kHtVqsK2V4HihKRl5BAyeNvJk/WXBVxbJWIhD88ncbkYQWWfSq8JEk54vo0HKi2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qbyROUI0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qbyROUI0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7DEAC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 09:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777022253;
	bh=n7hY1bmXx52SJ9YBRifSKrFAjlyxvVyyYtcyU/xGl5U=;
	h=To:Subject:From:Date:From;
	b=qbyROUI0GccsYBGTIwM+60lJ34cyhEnYc/UIRzNed10UuUMXuGypCgGOUU3JvkC2o
	 /xHF+6d7scNl7ZB2oh0zXPwdb+2+lZEi2EMWP5F21vNME8YkC/glp9x5LFRVu7nITk
	 Ej+hPH1AkVJWB8x6yS60kE4szJ1+AjV6K3ZHo7eeux/F2P12dmouA5MJHisyPYqiCv
	 SQ5SmMPvZYSZnJEPmdYqx3bMUqbxRKr4a7wQXRtP7AMDlvs7EkRymOj9RKz+39yQX/
	 ZWCZoqQAtYhSlLXtRcTCaepfToDIPtb2134LvQyAhpFooTEoZ0i3DPKNRk7u7zEZQB
	 7HJe9R1BwGOYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1E2FE51EC
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 09:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177702225369.6637.12958389376703524667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2c0faac2dcece687ed58c6a44126ace3615d1e1d6e511b44b9fe48f3ca13195
Date: Fri, 24 Apr 2026 09:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777022253
