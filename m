Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38494192D6B
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753827594; cv=none; b=HkQq+GrnKXRQOR5l/wSJpSEKXiUkZrNaEK9rUNxeTksdQ6/bqyjMUf7uCqfuPL+2pFyNGxEbnCAkszcSV3moskW2zYoImUvLSGWL2ELoD+nlaxXAJRnYzRARf1O62YPVl3M5iNHcn9yn4SVuWwO/ik30U57+89lvGuxnYYH1lQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753827594; c=relaxed/simple;
	bh=OWS6eva8Z3vaImIo6Lid5ftN+wNhVFzz12BMYeod3EI=;
	h=To:Subject:From:Message-Id:Date; b=cCt517nSWE8FAwUh0F9ITpwYnKyawxeLha6TMez2/+Q8fRVhf3+rsyjrK4qN4uLg//6NAG4TljN3CZyozRK0dyCsa3yEyohLV7QRTDiNHUoHwRZvpYFsrInoVECX9srCpN3GH2o2SY8uk4bKPEpKc3baACYT3gt7shvgAYlBalw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o57Mn0C8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o57Mn0C8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D0EBC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753827593;
	bh=OWS6eva8Z3vaImIo6Lid5ftN+wNhVFzz12BMYeod3EI=;
	h=To:Subject:From:Date:From;
	b=o57Mn0C8qAB/wetA2B+WrDDjntwYGqL23u0Gp0ZezBqCzH9ysz80lyIAs68y7qbDh
	 bjBXkJIU+Op5hFnnVbtrlJfR6USxxSk6ejvT0p+ca9G43Als04/EZtVAazg/QYs1cN
	 UhydclU6hvSycsV0QxMsDmnRkQsyMF7EG7nl1DpqG7bSJcTt8RF/X/k4CAYdBU2GUw
	 f0zubKB/gFHmQVEY9E9yRZ2tmoGRNBuxrkORoVoPsb74erSQrI0V5jqW5cKIe2LBo6
	 JSivInl5mBC6kmhduPN+9vgSKv3yYZoHiJ/wSUzvWlwr6IF8NCNhg7XXjG/FzpIvzW
	 LYsPKRDs8t3aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBAAC87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175382759357.15230.18279135495095105980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e24159cf324cc21af90e499ea2dc43912a4c5a0ddd222be2f610de1cd943855
Date: Tue, 29 Jul 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753827593
