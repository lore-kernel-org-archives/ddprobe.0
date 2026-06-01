Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7FC3CAA47
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 14:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780325674; cv=none; b=QEeTP12GXfpmjPl0LCbJNNNR1IHQYAp0rvklLVEYPIA+GqbibkJM+nZI5CesrbLhzl0XZ2s/zNt3ONf0QM9wzhTQ70wR1cVd6XSATxbyvW6J08iCnxADQtTB3WctGEIJorjgznn903ziZwfJWpmwCu455YjCbR6UAm2le5Y+qUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780325674; c=relaxed/simple;
	bh=fLhEkiIjvD0A5oYjwAi98E7Wnh4iEL1Ecn14H62NP2M=;
	h=To:Subject:From:Message-Id:Date; b=cM0i/+WwyJVKG0zDq5vBcQ4n2C2QrStd4Qo3Zir2zC00Xvx3RDm8zM3IbHVVfenvq3ZNBVKjEHw9KcgHigNXv8cJKi+wR5OBTlNb2IqYgkNiOrpIF+A+Pq1IX50BKThCPSMZy8ZlVu9kzTgXsK9z4zhDKlPcGEzCQAfNHCF2yss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ikIaqU27; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ikIaqU27"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D069FC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 14:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780325673;
	bh=fLhEkiIjvD0A5oYjwAi98E7Wnh4iEL1Ecn14H62NP2M=;
	h=To:Subject:From:Date:From;
	b=ikIaqU27gwUnEfSORP7wKJD8wfv6OzWOT0wzXJAut5T6XeskCVKu6MpDAGtHqnxgr
	 EToeJUCJLo1U9RZ2jAykUoFfkZfLvp7wLaJafImvBiXgjw5xt+pJltmRIS+wMosTof
	 R0z01OoVnA4fLmw65D0eCBUOsDxe2P92oImO5YS0XZFeoyXrc12yO7Bwdc932qDoYP
	 n2p7kzZGfd/SwxjBmz3cRPiBxXzLq22GU08DyAbpBtxwPwDP+eN4xWFmIHrPNVIZZw
	 hxxOjh8NV35JNox5Pic8gXg7kyzpkkGzQZuSJboNMav1WwPuzWSN0KoVPP/pKpzoip
	 UiYRek5it76QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D7BCD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 14:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178032567371.8315.14799934564555553785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af985c114aea09751929cfe902bd54d46795d406de8cf4542d90cd1a66b6adee
Date: Mon, 01 Jun 2026 14:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780325673
