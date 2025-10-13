Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88A3B1E8332
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760363994; cv=none; b=aq4WHgGwW7CA02IXXXY/ZfzKogRx239Tu8lJDdOF6GzxHS2myyT0IZDMuVVzgYPR2TkQOZLVoKs6GS/W0N24kh80cwCZgLnvfRnum26IvnV9Qx/SotHhsJM46plPItFdZLwfJJ4HiwflPWPEYBtvJaIMTxO0t6jAF9JJkQoimiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760363994; c=relaxed/simple;
	bh=/5qkAeMVQwqn2+LeHJlwsHXE7IU0XPJGzypRWN07qK0=;
	h=To:Subject:From:Message-Id:Date; b=qZjstmhnnU0zWQRG14A76//ly+C6paP63eNSYIikhLx/U4xvbGxo2kx3KFgSQO/HKIrnVv9j67RCHD5HkU4MEfp4ehPFyf0pQ9BkI7HaI00PgpHjtCe7lK2tm0sv60L5+sNaJoLnTTWiGOMAdB2Nh1u9ps+Kti92U2GXIy9gOa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZPTPL69L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZPTPL69L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8A8C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760363993;
	bh=/5qkAeMVQwqn2+LeHJlwsHXE7IU0XPJGzypRWN07qK0=;
	h=To:Subject:From:Date:From;
	b=ZPTPL69LhEaUuM2k8ac51oEIAmolZnlxWtseQPyCSaleyDvELBVZIMd3Alv4PjC4S
	 /MKPH/Av13FmnF2pEyDhjXvwaKiCa4bwm56j/jE1HayJDu5MNbqfsv5tYfXL91jX52
	 9RgT3fqetMLMUIcpZUkgQ+8NQ4G7PBMPgjwp6Cu8w5/SytFm8ifNXC49g14ZGulOh+
	 GIS4NFTg2tDIlLryWyt8wv3gmyl0pc705w6UiqXSkLlMrVdIezDQcUQd9+f0SHW830
	 oqgcFullbiBT6LxQjW5MILnAz4H5geVRi7mKpOQ9z/W3LzO7VEM0743VnRwaWN9XFL
	 3LnnELxPVvOKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF67CCD18D
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176036399357.3516.11673517155322091396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ee1d9004446b72e7a8e2147411bb34184dffdf9429e5ac0496e1897e2a7de4d
Date: Mon, 13 Oct 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760363993
