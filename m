Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B984CCDE2
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788220234; cv=none; b=mJvoVBQoqCbSF9woW1RQ6EIieJqfEdJDmXTZImIgdit3396ohl4Moc9p+AOIlJlfoNSrXVpp8C0QXKeqdUZtf9DdArzlzsKXmeBaKqtyUSMi6ZW+SPgieFjWsrbeGPcMfRkpCrLJ9yxAwshcPGKbdw1un3KCZjYcULvifBc4N8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788220234; c=relaxed/simple;
	bh=uuBXeB2ahszqzrDtc1CEU2f1aIz6pZrj2h/QJ9SUzIs=;
	h=To:Subject:From:Message-Id:Date; b=pxLpfE2kbkWLKE3DxwFc53droyJk58v2MQUqpM85uOmHpn6heZxeQ6mm8XhZSxmvxeuGGVu9DjwxKDLdf5RLO2MTzgjtTXjwhDE7X2RQpk9NF2hN3veoIaWct6KbcgXs0WbaU0bnaZNhu5EM671i5CRT+vmKUQB+iFoylAp6vAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AgfMD6CK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AgfMD6CK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CECD8C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788220233;
	bh=uuBXeB2ahszqzrDtc1CEU2f1aIz6pZrj2h/QJ9SUzIs=;
	h=To:Subject:From:Date:From;
	b=AgfMD6CKENrRWyZ3qbVpQpdk2TBY+T6NT8HHxKOURyaFuNuiZ7kzQdpUQxbgqk16v
	 oL3MIiiWh6UUSUxg+qqwo/7HEbgwWk7rTPwjtj48zM36btskKCg0Fpe0rQZNIO9xgw
	 YafkBzDCzGdl7to1zozGkqyCh0PzH9/RDDlGC/fV/v4bL7ouiouXy6rYYFbE51+HNF
	 JfPfr3XB07aFsAEUDrYJ6nBH7Y6H2HGcXbwDQ8DLW6kPEirvmfkG5l4jdPtFMpDFrK
	 /pNd2G6fOU6ZIG43dlZc871V6CYTOqDAWbWdRYEutieqYqZzYTVrufcAtdYNO5ug2h
	 thm8NZuxeq5Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD1EC61DFD
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178822023369.31538.1793577102007755714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d079ce7dbc9e8934ce758ab646c06e1e433b1c7c0e45d46e8cf6361311c9abec
Date: Mon, 31 Aug 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788220233
