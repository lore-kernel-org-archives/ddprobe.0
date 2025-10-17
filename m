Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20136350D6C
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760708994; cv=none; b=G0MrH36pHbSXTdY0Miv0Jrxm4ooW1/i1vJebZebY9MZ+n4BBNh8Z9d6q+RSrBWZRZ+e5VZXgynR9mcusHa+QIRgKhHfjZwbhpx1dnvE5UpDyHPoj7op/rcAyO1+1bjCXjewSPlW34t3/UhThq5VNsKfU8IsKWHI01IrCyfxkg/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760708994; c=relaxed/simple;
	bh=IdH5Feub7YGdRKYd3heUDdHuLhH+dtTiQ/2KDptUM9o=;
	h=To:Subject:From:Message-Id:Date; b=rHVu4TvBw9JPtwuxuXf4HFRikSNNQvSYKGcRprmneLv3YUifXO7SHbizOyuVaivxc7rPJzmQ8ES0NkIA9R8ylw29VeH1dkDW5hUAAlVtClzF9OGhrIQ3zdVYE98ksTUffyUyTplW1hVg1sWNSTGmCgf2dXhx4ML+4bq5T1QlNzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QxB61ZAP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QxB61ZAP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B13C6C116D0
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760708993;
	bh=IdH5Feub7YGdRKYd3heUDdHuLhH+dtTiQ/2KDptUM9o=;
	h=To:Subject:From:Date:From;
	b=QxB61ZAP9/Wr5Ktfw3q7b1UnbPnKp54xF30qfgWmHJveUMqgHAAl40/NC/Qm/BWl6
	 oF7oApEws818ExuZF0mGoWU1/A+yZhMEKR4JiIzMv9ImVagZgwySrlPSjHkrvyH6k2
	 izD1O6ua1vL1SJNi7TXodrpgmvaW1P6BFi259Oqdr42QmgSF0r1LvAGhzpEHYa28oH
	 W2CofPB6YCjaywRmdBHoB746mGfP98QL9G6ZtKyv1tJOkJuUZQ53x4sKIe8TZa3msf
	 xO75I7n7SZXZKxkSwvoXK2iUnQY3MB6ZPx83X5CKhDEQtyPffLHXk36pvzVcFDewTi
	 jhvcLEQIVj+ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE64CCD1A4
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176070899362.32120.2308322996956278093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21df467d212cd932ee68862bcca4fb2ed8f01c9d5be815e9005745d5b1fd2be2
Date: Fri, 17 Oct 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760708993
