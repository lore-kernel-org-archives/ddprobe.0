Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3370628F4
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727849154; cv=none; b=Gy8nxwVagk0sxU+cPrkzm75vzwCF99hSVkPVUi8VPWFhZ2sb3sBu2Q76MlhEkSK4Xzo3yUiqmajSFpvqh3QZnsCNEdQud3I7m8HYVITDmhrKm90LS6ncDSCc7hzM5qRkHqtzJ+FpmO9/cbO5B6idtIuOwzND5cpW1qwBhKcYZiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727849154; c=relaxed/simple;
	bh=KMwpoGw2AdmQ+dFhZ3Qwnb2n8cacKtySI8RXbM2IZ6w=;
	h=To:Subject:From:Message-Id:Date; b=Q5Vu1c356FvKrfjBakKk8lurz89XHoqSH0c0yotD1RXWtF5Q89C8qMxktUz7lLZ/g6G8CWEd3oV5j9OYl/yn5Sg98Dyv5WxUbeYdegsMzmz9ocW0HL8pbP2I7m04VG18pHCAgJ2kVboZFYx/Eh4PL63GcegpabCvOoCK3KcQcs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DzwfzQwo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DzwfzQwo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE52C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727849153;
	bh=KMwpoGw2AdmQ+dFhZ3Qwnb2n8cacKtySI8RXbM2IZ6w=;
	h=To:Subject:From:Date:From;
	b=DzwfzQwoo3ZjMaJG2g97QhEm2lW+O2UrNthrt3x5PadwdYF/tath7Hu52QFHuZLoG
	 48BPp0pgRdYKFwdeZCTTm1oavJpnkDPonk/EvRJY++9jkjFr4vYTALQkBlShPYTnuT
	 32CxQR4ILWVREaj1X4HvacrxerOHcsYtfc4CCCTdl47DnvNV9EARVGDDE7NqwdQTIP
	 NpHjcl+xe4ayJqfsbqAXDxaoHKWq0auk231b8e493KUEiEXzAVYqd2AL22jsCbUUlD
	 GRl0n3Jbjd6f5fuMAfHXArjsQPRz+dgguT+9TVlqjcWNd3YjrH+BX156utiWicEPVg
	 0T5Nu/Hiy1TkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BBA1CF3196
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172784915362.28375.14818430232347980466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07508db03c87493799d531d8b310a0cd13df7b970828f587befa3e16fa32adfa
Date: Wed, 02 Oct 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727849153
