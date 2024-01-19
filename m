Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF4E552F8B
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705678697; cv=none; b=QF4lGneKCxxRdJWHWPM5xf3PjvrEm5+NvvUD3qPgIEn5DQMJUbFtMBiNdoNlv2tKJqPOsIP1go8Qp0QnDjOv/TJnc7BbmbRWr2tiiFu4F339UyEDO5Ab7i2AQoHSEfog6I0eVLeZXPJgiQIaqXcnIcgpa5nba+dgWHBpNPvqEkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705678697; c=relaxed/simple;
	bh=1NSHTA7Jj0WLvMWbYZ0VddKSbwxX1PGvvxGHCJstP6E=;
	h=To:Subject:From:Message-Id:Date; b=CXoviNXewlGhlQvxZrUabJv9x9pqDQQ76K/C566c27YtYBG71PfOSli9ARRZXkFFP54wStRynV1OFjWhbBrEd4dtd6ysiQkY3XH5PHemppySYcprZltT5UkCUblR9SrOftRpTVkqVoZd8OG0UpNhHtXUVFrW41ZIv4Zm/NRBlnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9F36Q4H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9F36Q4H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B3DAC43390
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705678696;
	bh=1NSHTA7Jj0WLvMWbYZ0VddKSbwxX1PGvvxGHCJstP6E=;
	h=To:Subject:From:Date:From;
	b=M9F36Q4HRR2GToljFDMGpPEa9dS0ejR46akBxNAin2ynPb202DOfTHq8Y3Ip27MHm
	 dOEY1yQC5EinUlDgeS5sIGQiLKohBcyIz6zsiDjD+owiZASNWhmw9RwnUa50yJL4lW
	 gNO62T4VJOBqKxB0XNm/L5am5mi/B6kZys9srGrQtmM4FHFXBOnZgBl+OhxseTfWa4
	 7mjf01V2Kg4YC37224AHPzJ5RpoFVDo8fvSvXWe6txn7ioJQBDG7xPE0kQUZoKr3df
	 0nqHIrnmO0r9JFKNNPpi9oxyojUt7l1qjSL3DdxDXIWcBn2qxxiQpOzkHW0f4zDpxs
	 3Xq/oWEUgxsaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 658CCC4725D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170567869638.8010.14658129151368343082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a53909873fd49c918a296f74a6b6acaced517ff2df5a4df8008ece283d6891f
Date: Fri, 19 Jan 2024 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705678696
