Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30AC08827
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735732554; cv=none; b=MCXqe7Wb1E5towawZnIPpaXGwEYrjvH9e10lJgBZa7YTNSzS3ZPg54lU3xkZy6PlpixYzGlRsabcp8m9rgzrDgN7p3lKXl6hK+aGh/MlvLjTyIrpfXu9uDqtXbrz059nFadcJg3wsXbBBumcjOnyZHAoa7tYnTXz2caeiDV3OBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735732554; c=relaxed/simple;
	bh=f/sjXuW/3tKScQoMKB3rPAPl8AAfKWjYVyvSActgoKg=;
	h=To:Subject:From:Message-Id:Date; b=sBDQA1fHggmoZrfswMJ6wa6mqXKtLTqZXaWv6xEU259SSAgi+gaKgIwii8LJR7q3pBy9shqX2bOewuTSr/jR24Qd/sGfPn6nOsrmFY8tm43eQZP8z85v/w5eQNZHwNLPZ3mcGN/XZCWLlqvuyySsf4DnRxOoauAOWtWNZjizrwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=psb8hVa5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psb8hVa5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF774C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735732553;
	bh=f/sjXuW/3tKScQoMKB3rPAPl8AAfKWjYVyvSActgoKg=;
	h=To:Subject:From:Date:From;
	b=psb8hVa5HA7bPrj9YyCYP+dH1ascLaj9haiB83kTsj/v52n7VTjYUzPfc5WKEROt8
	 hTNT/cQGJOsAt10fqa+YAH7FQtf5VjYKNH80/q/77RIebmY/HoHAkk16kQdHnLgK0f
	 swzXvHzF6fW5wgg8pdrv/IROgOkU7UniP/OmcdIheVYvcMAjU6sTc/6sIIx9LyBQ3p
	 xgNr6TMiG8hrfN0N1Lu+qeF0VVEOQfQxuidP2Y4NHU5Rtb6HZp4E2Q1fK6cpq7E6xy
	 sFiApdVebPfbURcH39KuvPC8G1hcqAaKS1bBMI84PJabzXS6brVIFMK+Ik8w/4UraD
	 M8XwjWjj85gLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B5CE7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173573255359.25574.16965310774377653819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b534cf52a7954055c786ac6105d5f17a6deae6a82f9783f339fb56ff866f6a3e
Date: Wed, 01 Jan 2025 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735732553
