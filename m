Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1112FABF9
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756715994; cv=none; b=sq9qhWXHefBL2KEe/p38UpfpXcwiDW/ozlW31z2iOQSnSUvypbdZFdc1DlGSkgthV3KzwqOosHho6i+kMoInxFOmwnNfBlVFSCSV0DJXSmelyN7cBa/uU8+e6XgGeOKnfeKjwOPQne4+h4ADR12cL6WL9E2gu9+WJyrhnp+bews=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756715994; c=relaxed/simple;
	bh=U5HDydLwZq4+EwfJySxrKv5JqNeD5wAYX+t/hAJzHqs=;
	h=To:Subject:From:Message-Id:Date; b=aSaiLId/Pg0tSNZkhvuvBDsckzgJigWz/jjNP+XZoOcd9Q3WSqlXw1nJOtgujc3ugDeHbkbStSJctQ4xcMmTALzbckeZVu33hJmBtBEdtSGDviFQKKPOsJohziuJfasjyNPcxZCs0WoC2HnLb1vLbtQP56k0uKRAF1eFTj273KU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LUvpXcIe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LUvpXcIe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EA1C4CEF8
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756715993;
	bh=U5HDydLwZq4+EwfJySxrKv5JqNeD5wAYX+t/hAJzHqs=;
	h=To:Subject:From:Date:From;
	b=LUvpXcIe5Nt7XQdymDryrGeK3UTypeaSQmroUrTmcKB0YOq2HlEzKbWyAYAn5ueTW
	 qgtkiM+32nHKcWALtmof0O1PJneiYpZ1bjK9k6Cfr1M9LlmyLiKtPm1KriS3tE5oIC
	 88rNgHIhkyydM1B7923ls3zWSImReiHQdYhB8Lsopw0zT2r5wu3CIO7lztglBsebTq
	 4kYqq2MlbnCVt1tWoMVWHlV2nrAZLl+3PjWF1YGvljgtOkZDmJ9FQzAtLb1DqT598C
	 Kh4CT0eYCLZ6fBt5O9+DdrSh5Ox1tSrWNgqoLBaPRYQ767qZnLzR5YahneOHzM88np
	 QSZv2XaGNqXwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908BECA0FFD
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175671599358.20888.17504145898317341893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16c49a8cd5ee441d17207d73474e897c3c3c502012b22835c1265f52945d42e5
Date: Mon, 01 Sep 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756715993
