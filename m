Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2654621B9D2
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759732194; cv=none; b=QFrqu9lqXHL62qC6T/6vDImkGyfeKagbuNXfxwlb66DSMkmZF4S5V9t70L7zerNKkw6wKiYqgJIviCz0VHFJkembwycKXtpnfdy5mVaO93EDiIjo0TYpKmatVr6RGuabsoD6EFMcwJTyaDzzjMZsjkdSR5LpVZb/pyqzH2ZVXKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759732194; c=relaxed/simple;
	bh=dQeh29ig84OrxNg4SM4gVagcq9x21aDEZJNIBiu9m/s=;
	h=To:Subject:From:Message-Id:Date; b=Y5U/+YQ5D4WXfgQ/bHWT6dWFsCeBlwdIgWI3rhtRA2MyfiH9VUvX3yd99vfuAMCZTwlFcp4GjTvXHgdHdQlinZeW2bpRXODzX1lVUxEGaiPAJCoJQRsBAiB41fDSAHtIJnEXp90lRVqwrhxT4lb6A8QSnCxXxN93oX3+mRkD++A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvFsP7Vx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvFsP7Vx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71B1C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759732193;
	bh=dQeh29ig84OrxNg4SM4gVagcq9x21aDEZJNIBiu9m/s=;
	h=To:Subject:From:Date:From;
	b=cvFsP7Vx7K/mffv/SXPiGjqdb4KGBikvJBfzQ7DjGIej9W6eW+TdoAshk+ecVIDRf
	 x7xQnet00VyGE/xTn8eK858vJFzmhO2LVUQuTldIjrNUI3BpPoM8IJ5sB8wRdkRhAj
	 MPNWL0mWQEp99cwpSHw98qfnd6JHe8bOvEaokgqtJyTikOtxkTC0sEfYTa3CQKYWG6
	 hr42kFprDlUNHCcqAwbeFliG6jT8oQZgCP8TaSGtgyLxYQWHZVAm89GDfqW401XJlz
	 WW+cnTBVCSl8UzV8P2suq+3cTGBv14eFkBscQGoQ5aQie/ItXhuAGZ6WGnW3Mjt2Zk
	 Tafx+3MVhQG/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90666CCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175973219358.29334.2244121879426310394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d95c24ab848ca7c25b7f947886bd34f0bbc447779fa4280edff62c15eb7c360
Date: Mon, 06 Oct 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759732193
