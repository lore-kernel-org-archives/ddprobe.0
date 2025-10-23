Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13177132117
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761179994; cv=none; b=nUfgOeu1egkVLxbmvSoz/tMncAQpsCLAO+yWwF/JbX+fOnSFOlEdUJD+Ad5yRaSO5oyF0hCRdfU5Fer6HVmTuOk9zy4I+a4OfMfK1/H2oEmpS7uXch8PoGqa1MsN0J4re3KKezbXFOeNHX1cDewrVlh1dSkVD45ggpvzNiOWFMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761179994; c=relaxed/simple;
	bh=8hnygK8pFByMGETB5NbddWwPy5TrDChLk4ujQNszEz8=;
	h=To:Subject:From:Message-Id:Date; b=C5HFLes7jFfglGBMlY5whH13307JVy0hyGySBKvoAF+ydfkCXnuyxFP1NayXiK0U4yNGrAHObw6wUZyWFJMsUNbyp3NgwTeZThRR1znNAn0WlqyIsgIGcUW3Flumr3rwFD64hlcM3oAEBXfYKL2JgxTtWG9rW6Ukyu6stagMgvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZQ9WcIg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZQ9WcIg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA92C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761179993;
	bh=8hnygK8pFByMGETB5NbddWwPy5TrDChLk4ujQNszEz8=;
	h=To:Subject:From:Date:From;
	b=DZQ9WcIgJ5+T/+xp62DlZQpOKY1pUhqefvOq4zSNtm9QENNGG+N704/HGPkBLxMh3
	 zo2gmTcax1chQZi6T2H9p89xnqHqqTfsjW1Z5YXpopEWMFF0KBct1TXQ0O6gswPmP+
	 o1GEDayGQzev46ahH6yYcX4jxNJoxeO+8xQYPXNgA8xln9B8V9L7yVpzn2ffmrr+qR
	 OXcZP7+LI8d0obz8IHhagy8rZ+GzEG5pv9YC0TABhSzhZeyNfft/RO+JhAC5DrzOcp
	 GjoLeQiD8oTivLfyPTdFXS3wJTz/wyT6sDGjEfcFx2qBHpCQ58Nn0H50vnGjykku0F
	 CpPEi/OISFQbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3AECCD1AB
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176117999357.21288.18114320723198189245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdee14bc3aaed3542b20b5555bc1879fdeda51c3c87b03af2458b5f0717e3c86
Date: Thu, 23 Oct 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761179993
