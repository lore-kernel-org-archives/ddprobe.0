Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA963BFE26
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791135634; cv=none; b=iSJdGG3isi8eykEkpPtI2PaTMTfC6UU//Fty8nJysCe6Z1PkTuLqFopaKPyyJI/Pw2p8h9p//zFfT5T3VFRNsfNpWfKQ0gKJcrBuoPhd6xvLrsrwsbGEnvPnCffgqqTlQ2Zo0JpDhS/wF4AElY+GTuXt7CWfZoi6wpdJ6uByJww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791135634; c=relaxed/simple;
	bh=ZdKKbmNh6sphe8GTcGXRn0hNa+NwgY4oEk5nW1d/wr8=;
	h=To:Subject:From:Message-Id:Date; b=IX7EkAYZSSq+zVY37ckkxIe8nOMRXtaYYdAeId9bTKf46VB/yHirNHh3JwsSu2VGZWcCdduw+BOv0vSz2F32Agf4+swpLw5H3Y4UrAg2Snt4uDCnKV+SSmMkoHPsSOA3hMHjXfkArnhxhE5GIgcsAoa9wO+0k93qpPvMXfPoWs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUv2eYLD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hUv2eYLD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE2BFC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791135633;
	bh=ZdKKbmNh6sphe8GTcGXRn0hNa+NwgY4oEk5nW1d/wr8=;
	h=To:Subject:From:Date:From;
	b=hUv2eYLDoTUXfBirhHCLYb4ajVoYT2oK1jE2b87rJjT/f4CDnF+oj3p7MZKTDV5CY
	 MTm6aDUMUSdjo8cvXbT92h57WcZZbZIG5gie8gPqUYV7X+UY97q2KPb12V7Vm7BpjW
	 5s/msaW7WulAjoJnXQA9voRwi+iVFTumLJkL3EOUDt2glcv5HRs4rj1njef9DxQQet
	 OTRlBD4mbKUB++DX4e/sV/i7QtMtUbvuY1ioQ7X3yOy7QxVK9Vo9ERuLqtno710l9L
	 Y2Tzktc4O93tz+UmYDOw2GL1J2y17tRvP8lpue0gXjRG10ppUF5dqat807+FeMWOTf
	 Tr8XoqzO5pi/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C1DCA5FF0
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179113563368.11756.15752684079460501492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70404d33f38cc95e8a95b37aa2191ec99f097c70e45a09ccfb2ff8222743b97e
Date: Sun, 04 Oct 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791135633
