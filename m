Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39AB0258EC1
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 07:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778398234; cv=none; b=OsDCjL90OHL0icZxWaa88LYWinaVHAcfCRB2OMLQps/JBlrkVlVwuSnC+0A5z9AGnrltr/8EMun2M/DW9tGHgnNhX8LTLau0RXk8RBvASGUVP5ZNHVd5NIoiEhwWHV04n77MirPXcXT1MN2ZH+TUI0lj9UQ22PVxZyaaMBILwso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778398234; c=relaxed/simple;
	bh=z8v7p3iJ8V94uVVGocigqB3m0EtcQf5whpMraH63Ecg=;
	h=To:Subject:From:Message-Id:Date; b=DedxlOEzR0C3gL2PNxtxth9FRUuK1vWqZLOQs0kLNLnv1/dOwgILNuEffZ6u0jkK2TFr15USXj4FZD4tvGtRu5Pvm/A/1Au6orUNaBqbcETnlA+liyWQ82dYPq1xEG6ZgL4y2woEJHbo8KpnCPTrGm/TINdgYgBuaCyz0x8gJnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WEx2Faui; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WEx2Faui"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2FA4C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778398233;
	bh=z8v7p3iJ8V94uVVGocigqB3m0EtcQf5whpMraH63Ecg=;
	h=To:Subject:From:Date:From;
	b=WEx2FauixZqxDotU09gYJGLoHpK5RGEyZZIj9wMvKb0gvsh/54yQoNbEkxExvl+6U
	 vJdKNi4JnU6JsshL2lx7PF//xlhgDdIPCcQ7JpFpEKdTl2NHvQkRXpU8hy6FJTGUTe
	 9NHkD4W4k0n2di1nPoE43DY+KlMIUEsKOlwQLwAyEcHLigdq7BXnnAY7BCwR1Q5uT3
	 9SzLW+TDBImN7c2+eyPbqAXIiFLwSwX/7FLTe3wKIn2G0NVvUsBsGE5lOS69SRVKe6
	 4jSS+T8RmsmMdPWovI5/AOUVDRgndCRkNi3t8/HFUhMvbB/0EzjKyswyNmxo5yiWMS
	 Oj7c34Wj8Tsog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE10ACD37AF
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177839823369.18737.13328412650273234496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca96afa5a454d81b970bc406451b65363e2cf3ac1ebc5f5c61517b7afe6c8844
Date: Sun, 10 May 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778398233
