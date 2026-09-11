Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A21C387346
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789167034; cv=none; b=u/bIElnT1W0vOPekMdpkTBb50I7CMAwt1WbCQFebJYuHiCUqrQNWK95A743h95KGn+/0FshsccRM+5zdlKFYteqPbkdFmGQdBeizZYhpnJulf4kbeNoj4hIRU/7xXem7tWmyXLjd9wpUXj5rgHAC7CZgkLOL/UNl0mIEMP3GxUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789167034; c=relaxed/simple;
	bh=ulZgJ8VNzfgfGVeuLtaynEHjmQyiXFU+FAnHwi51Zx8=;
	h=To:Subject:From:Message-Id:Date; b=IgrPSBtj6fz5DwOT/yy/pgHoAycye2URExMV6t1y8IX8t5/fi/5xcAwOB3HZkiFjWUlr+mk8B/TgC35WjKhLUbMejyMHUWK2k7ECRzDrGjX3mqIS8In7GowzVMkEMhdEvwO2ejThkc9Wlitg74lLxP4UM91LKMbenFDWGdg3vow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gyjKvWNx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gyjKvWNx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28FBC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789167033;
	bh=ulZgJ8VNzfgfGVeuLtaynEHjmQyiXFU+FAnHwi51Zx8=;
	h=To:Subject:From:Date:From;
	b=gyjKvWNx/FQR4y941u3BbDm9BKRaFITrBiX2sK/D4BEyWxr7xY5AqIMVTUzVRfb1Z
	 Ol7zZPyHetjs0DNkuJn8SgStsBwV61cJ9FHW0PdBudXHSRpaxdgzAVRNiRhfRShR+6
	 udp6WOWI6d6gS3H1Yl/ICXh8xI/RFJKYoH4LwW3LOcTEEjW2PwyFwNfwdpj+TFBMg6
	 Ts6HkOy8fvak9GnR8FxO4nZlrrIPkOlFe4h7kMjcEbJTLpuTSrR/JpFY+9yUqz7sIR
	 eSvVN7KPnygdFywkqVfrvT6/6i5aPg+D0DCUBdaMbZpJIsTED5CImZmnrPG30/EM+p
	 XneOigsVVuLOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAEDC88E4D
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178916703369.6725.16767300871398099943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50a853de0d3ac9832cc62c906db79213ef820602d350cf5c20fea0fe8e6aec52
Date: Fri, 11 Sep 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789167033
