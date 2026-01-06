Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E1142AA3
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767687234; cv=none; b=SB24oI4tCI92WlX/bU1dpfRhowL5MMoJgElFedZSfivr1uqqcA6f6nn/M9oaHkWaO8iw8LbOraqVNjToqpfNdtbWByPIWROET58/725SjH7SDZ4hEj1LXghWaNCtwtBem9zVZeI9FT0Js1p3gnaJt1bkwZ4JjcWzQbP4MdOPiHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767687234; c=relaxed/simple;
	bh=WEjtMrVFvFLHFnvK4NvY0OeFcHUoMUIO1OiODFHy5yY=;
	h=To:Subject:From:Message-Id:Date; b=dDEsK2Ss8kyQORIb9QrfhrfCWeORq3ZVUlwuyS+FoTERytLK8xGxTfm+RWlQkdK6jf7dqxtVCkdOy9ciQeWLBlOTCquPx2SAXY+jwO0dQL9a6/KqaaKMrVIbZR2KqsfEsxztohdj0UiYEFbDo13USJMAiZiaRjTHTDxrDhci4Ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BFXI6ThM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BFXI6ThM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F50EC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767687233;
	bh=WEjtMrVFvFLHFnvK4NvY0OeFcHUoMUIO1OiODFHy5yY=;
	h=To:Subject:From:Date:From;
	b=BFXI6ThMOSYCbJ1c6TIe0JGkIkw7bJw47QpU4KUdX5pUXD1erDH/ipRKooyvP253P
	 vgJPTC1+R4rQs0JkWhk5j7SuU8sCeDyQj9nn/f0IgfyzfoZ2ByJaznIfHXR78BZ7DD
	 /kOx06KDN4ruTXudv4GIa76YLyHCF18JziLwxqwN6jn3Ol0UzHRyUVI5NOldj+5T6k
	 EUnKkEv7YPyka0XzI4OlOvIIbctgVBYCmFXRuInVczj6AykRyGJyMAgPOD8HFnYx4y
	 Xfy3XS+5ZTwAPVWpUen2BCHnCt8eLDS799XswHIo4ScZnUnJFneXrdHSXNl1qBk/1+
	 m0bns26rNxLKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5B1C47BC7
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176768723357.19272.10725222437868019442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9438b4c50e9c26a6d53249a23ae8d55875f9cd08627549eebdc5b157cf3f894
Date: Tue, 06 Jan 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767687233
