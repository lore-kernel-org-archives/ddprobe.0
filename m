Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1B2A1B7F6
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 03:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709694497; cv=none; b=vAaAJr+IGNdZ7l1YmPQDqUretjM3sQ72n54ISIYg6ehfPJeb1TrzqxNNO9Os4+0sx0TeWqVTg1qlMUat7eTX/NbaYkt/MuMKYyPtksCQUGrWyebqrESO+vGN91huLzIVlbqgIFdUluLQa50VYJuNja5FLwp2HFL2M4qKIjjUPtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709694497; c=relaxed/simple;
	bh=C7XKkc5h1YfnWiKLqeQ91S4qIYoMVSUoofQq0XtSDJU=;
	h=To:Subject:From:Message-Id:Date; b=OsSLzI+6sCSs40xWw31TUKTHBFA82ebHaYC2+myCPtFWiJx2cuE8nsu9fQ6b0XYd3MOTiG2lKvvIQJrHeTb5Dnfb++LxujIWD3KkMSclYPgK5UCJISpA14TGPF1OURPY0lP7J56vOh0f0Kw5nzPckzpCZQr+AsbAs7nPycWG5VA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L5Bu9591; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L5Bu9591"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C5DAC433C7
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 03:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709694496;
	bh=C7XKkc5h1YfnWiKLqeQ91S4qIYoMVSUoofQq0XtSDJU=;
	h=To:Subject:From:Date:From;
	b=L5Bu9591e/cxnVGTmIq6sOLU/eGsCJGalNlvFcUKQut1gly4Y8eD7pn/HE56md4E2
	 JXD/CkmoYVH+sELSLAwsq9YPiKY/cEMFaRjUGtmcJn9x2qrgWdec8S1To/K5zRKYZ8
	 fPjqHIQBa9/ldh1/SFjP9kxq7bla1WzDCrw21nzsXVpRBQDlONopE71m4ZKJzgtybK
	 naAdWh6wpk/NazIemfqveOdATJLTFqBZ5PD0UXwXvigtcSyQMiiOMs6dv3CbzeQeJg
	 NrljaxwlA9sREinl7bgznWAq8ZbHMQZ0H9de/0CXp6NRYzpuorygs6x/nwWyPeGG5E
	 YuZkf+QryOKtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 612B4C54798
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 03:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170969449638.32412.17728333306127621565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea7bd750e25249c0cd1dd5b08b32a41421a3aa598319e28400e8a7b60542f592
Date: Wed, 06 Mar 2024 03:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709694496
