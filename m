Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7F6313532
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 09:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765532574; cv=none; b=pSmP8ez5Qxo1SNiI3a2zdjQ2zl1yxL/DKAYJFaHjWJM/wSGrX+yg+sbpBbfq7Qz/CLEA8SEERG88x68DAc04TIA9BiZBuUDRCoV1WLM/XYZEKIifkR5w0vJRIvEGk40gnRE7jfAr4QcB/8oBKp5ckZl90bT0LatedyX+oR8w4Dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765532574; c=relaxed/simple;
	bh=2d7iCSBRzV8RiNWWCSM//3FFmjMm3fsyyJpuhynrEZU=;
	h=To:Subject:From:Message-Id:Date; b=nLEopj8+MGly8+VkgyidixFim4d3QglEK32nQwsuVKZhh7ATRlbGTQOEsqbV326pkli5DmkiuN5FDjlxELnTUHJuPuXZ5DQveh2Wdfa/e2wUVk6SgXx7tUksDo6KqZyPFVGZGHlmClVIbi6rUrHrvz10J/VxUZS9jdPC8N5tR7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epeQLJA5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epeQLJA5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC72C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 09:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765532573;
	bh=2d7iCSBRzV8RiNWWCSM//3FFmjMm3fsyyJpuhynrEZU=;
	h=To:Subject:From:Date:From;
	b=epeQLJA5HLwFJeNlJCYUcxX0opQLHjQ9RLadAlPO4ohWVu11m2DqjSGgoou15lbLj
	 e+/bhl6gnAO/DooGJdYvU4HoMIIOa2kGqc0tWjzOzRWMpUensnoYM8xGHAHluJrE0Z
	 O2li2bzXsQ9y77CitBW6q4fexo9TJJt3bPnRdKTM6fthCSczyBV+hVUODA+t6Z4Fjg
	 G1ePDMdeIb/Uc0N4Xc1BzLNbzp1Zvzw531AL+zcqXXgFI5WU31eD95QOYM2HPh7xun
	 nRFTi+TUX42yZ8KYkg89l2LTtSm4flxCezfysq2h/w1p9K4A22OScgZr7TVrw0puML
	 TiAL9HjvIfcVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FC1D4415D
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 09:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176553257358.4797.2139291356779495420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b610146b4897b4e169e904d25be04e5697c895f55b7a77ff30b854ca1b2cad1
Date: Fri, 12 Dec 2025 09:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765532573
