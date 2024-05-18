Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE35D528
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 08:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716021743; cv=none; b=b7UVwK9vlfG+CNKTLc4pnnGmaM25uaEG6HLVTpFLXa/JROpsua+AAm5C9otfg1lxNVX1YRxG6DCf+YXvCBFopKy8J5VABUpnPIbHCHaQDWs0hunAQg510kqGZCI8cDLzxQ0XSa8Tc8lbNY3IpT8/8RMCFrpmm6OOfRu6ghr2jls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716021743; c=relaxed/simple;
	bh=qEGMTrwNddIeZEqyS+CAY8tlhknxEVGEj3VIPsRGXug=;
	h=To:Subject:From:Message-Id:Date; b=OT1tiTyP46Qw3jqDAddFsqxgsrSMBwYXl6t8alRoxIjzCTJRTfWsgBMkEER5m6WqCdQY2kBGmMV0TK1IhhnhNRUhJ0AR1JU+XkJOMkCe4x55erW82jneFnQYgruISM9WVD7Ly6wZ4ZeDpfv9eAmf5KAfMX+2SoER5ykUZtlLP0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMXyCC3S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMXyCC3S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBB90C113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 08:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716021742;
	bh=qEGMTrwNddIeZEqyS+CAY8tlhknxEVGEj3VIPsRGXug=;
	h=To:Subject:From:Date:From;
	b=FMXyCC3SfFbkXgSG6xfT6nlvv7hQ+t2EvTKieC4+Y2de8cZBlrYnVKlzpm5JObBC1
	 tEBRJxsB1AGiXhYkegoFwyNdM7tZZUjjJy19e/ps0Wklorwvuljed8u2kyf5Ry2nm3
	 H2SYEzjpBYyE8c8aJqcqkCa4I5qaz3J+ftLy0nrLdJvdDBGNFZl9MDyE59rgiyNXXy
	 J9jWPEUNlVJLVAZonHBhEuJRQS8G50IUnl8gxaNk2duilOYrn5rMQlnpdRbiMK19Ny
	 zq0Y7bSk4dRBgyxZ3+bBEyliZCXhKAgB/qAKEJj8qRdbgw/YfKvb2YMirBUkv9euGS
	 s/gmF1RXJAxYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C620BC25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 08:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171602174277.28140.12689255313977627166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 781d36b0618aeb23b9ef48a3d3a7051686bc720defe25f1d30a3aa5a9046f375
Date: Sat, 18 May 2024 08:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716021742
