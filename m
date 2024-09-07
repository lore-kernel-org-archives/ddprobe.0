Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180EE200A9
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725683754; cv=none; b=MFV7Svn4MGOM9opDt7YZlVoSAFWe6Rt1zK0Nu2op0ymBakaKcU36+caRgljVJh1NTwFz2iRGz+NYeyBts0ySPizmd0qiO8Ph+FZK3V/fFTrDbOlIhnIz6k3i/NY7zT0lvVyzCV5oXCNoMG05Y1M2vH5LB7lLGib2X0BmWA2vLkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725683754; c=relaxed/simple;
	bh=PUQctdQu/zrxFsD/1vYwic+nmLGSN6TsFvsTiKlXrLQ=;
	h=To:Subject:From:Message-Id:Date; b=Vym2JsoBENF1aDfSp+AmQNdj5k7ATcn0H2vSK0QRPj9V4dUGUCOxYpBPNGL6fHRqr+1WmhDwb0OYMTu5PQrjd/ElqtVbnHjhmPeinj9qpBxHHvk+mdi+a9tlUQ3WJZOCAnz0g4LTMe6DLiHa0lBU69F9AIBktMNnA8p4bkD1sUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C20HS3zR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C20HS3zR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F29C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725683753;
	bh=PUQctdQu/zrxFsD/1vYwic+nmLGSN6TsFvsTiKlXrLQ=;
	h=To:Subject:From:Date:From;
	b=C20HS3zRo2MT4h8O7yCnOYo25VWj9ut1s02ABFA6uBig4O0LzcsQyAszfIzu4U5KM
	 Lgs8DIIV/2PRT5zDAHfDZGwK5FnL7MMxh4z5x3XlILxxUyDeZOqQEmkaQH5MTkfvOJ
	 NfeNgB/OWgRoaUC0gqKwdIklduorj7djME7nZxBkXRLC1XHh7ZU0//BvVhnIl7Aoqp
	 jllPz9FREhG6OHjSjGaMxLjZskhFTFZg//6oqGp5p0iFxxFNhNHioaVZgMGfMdXqbL
	 hOLrfShSWLmltwAEz8918kduEo5089izy2fEGwDWQrIHxeXBO8jZOFsmocUcP2FfLz
	 qQcdy6JimdIjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BFFE6FE47
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172568375358.5152.5236522369848215841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f9cfb2c2cf61d9aec33febe60c7d4a85fe931026fd5ff3b67c0e76b420eda3a
Date: Sat, 07 Sep 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725683753
