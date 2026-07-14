Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CFCA27587D
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 23:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784073514; cv=none; b=WstC2NC503Rl/L8ftKUsRYNyb+DwfjJXTySutDVhVeFI3utu0n7b0Z5aXQUpGKERis3Yq/7CEA6a9uw0ooDlNbqlcZjzXdpgPB+aCev3CUPNByateOV2GJnkfUg0+oE/yVQaJdN2uPVqiL7honeUGjpf8YvcsyJMpMsIbP6ZAVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784073514; c=relaxed/simple;
	bh=gs+JZ/JsDyfwGnYn15lZxplpBOeIODZThohQpTjVtws=;
	h=To:Subject:From:Message-Id:Date; b=mWjZ8gNtI9LAUfNdxM1n3Dfd8nBNW2o/esWBr1MMUQGC5+ZUL2tsSKaslKFDm5Y3iaBaM73tPwvy5II2GwMsEL9Cxg+XmXj3I7JcnXb+9r8nFCB4dUxC+qLO5+C25Htpm8wvR8pzEyFSR0w9FacwHlmCVm5B9y7ZkUM2ipURUTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bKl8CgnX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bKl8CgnX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA568C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 23:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784073513;
	bh=gs+JZ/JsDyfwGnYn15lZxplpBOeIODZThohQpTjVtws=;
	h=To:Subject:From:Date:From;
	b=bKl8CgnXKNOK+kgb90mUNYTfNB7mHyJeT1bYFCuUaL3t+QkxopcUzbQncP4QV8D5t
	 kNm2A83sY7e/ljhCr30+OWT0lr8EqPiWjpHwZ7kCEIEiHGiIFb+eQLm1xYl7Jknc6u
	 +fL7BLKMj1UFsmOz/fLjT7SY4EPEV9JQ+Q1cGh6S41ux/IbPDvXXT8xNNUc+WgB4Oh
	 ZvQc8dv1Gt/giyeEh3iR7RVX1fEoKBp6s0KG/Vp7eccWjckXGqVHY9IjusDFfzBbCv
	 lX8uNVEQZWb9k9YDzRNgiKzmCt73mnkU3KC/rFHFBuLEWKQr8Molvmc2uJ5ZhMwFya
	 DWljh04MBZm8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BC1C44501
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 23:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178407351368.14405.11730579045338617992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b8fc88d42c91b6dcccd70dfa32d9331be4d3b6f9f6d74f1435e3de770326f28
Date: Tue, 14 Jul 2026 23:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784073513
