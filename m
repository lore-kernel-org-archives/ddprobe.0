Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 701E85228
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 06:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716012743; cv=none; b=qAiB6f91Nem+SlmwvoGqPBmuAOWMgFyRc6uDCfjVv8ISDgpyrcU4vdKzhoTNdUJgdU4/YFW9qZx8xt9gY1y/FcGfZ3dmOLDuTADPnmuL/USuRN9Byd+m8t52Ol+BYrDdsS8qP8BpMJ9JvMxJr9N4un70FN7ktj4EWG81H6cI/4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716012743; c=relaxed/simple;
	bh=WVs5yfJubQIJq8XdIH43UoM8bcPha+8llRXSJdETNvQ=;
	h=To:Subject:From:Message-Id:Date; b=uCjb/w2+DxXwvWqT0K28lPLj5bzYpbPXpvbtW7pMZFiFSdNARWJZo9rVjKJJoGVJ/u9tWugYBWVSiV1bZYYFUhh2lYmyEg9KvQLYt/13dQGTriViZRAsafBGPwnRNYTnlDf55oEJyld5Muks5ZHI0u65B/lqxnTV5wxOvB2BMcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cJk2tSi/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cJk2tSi/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7172C113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 06:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716012742;
	bh=WVs5yfJubQIJq8XdIH43UoM8bcPha+8llRXSJdETNvQ=;
	h=To:Subject:From:Date:From;
	b=cJk2tSi/6vZ33kYsBRc5GuWrXOnPecytxJbeh6W3F1pnWeCfURKY3YcIMdH6vvOhO
	 g2i4XSif7bXX7ySaJJY+/YmvORdotRB9AvCmtgNkQCbNTw7Bff7+9gOHRb1bIhMluy
	 LtqidGAqrqlo36jn01UaItvTcMkkK3qj6CRx8wL1iteRUTh7OiTaJhn2T7hF9HucN8
	 3wvVGXoMWurcybGBqqUDuUXfKnwlEy+F1NXtRHAVp4SgwLVe1eJA7Jola7KE0KfvDN
	 Ky/XyEoOhymSrVzXa+EX2oegrUq6fsg5X2qZlXDosdl0V5fMHXgg0xEVBw4I//OQhc
	 f5Xf/KoPtJ8Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9209C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 06:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171601274278.5514.11254049518006404993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c6a1f8ec3ea2ad2917df3bb17c7ef2b221eab4df6e5c475c13179dd33bdea91
Date: Sat, 18 May 2024 06:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716012742
