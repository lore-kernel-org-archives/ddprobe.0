Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6933AB260
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786180834; cv=none; b=FwZfb+L19385s1bcDmk1pwOEsWZfSQzmgA1DLhVKW9aT82+n7VbFmV+TdU0tzmuqdJJ/8sso43ujfW2kEi4i2mGB1CzIoaHfPOsX24mvCMnTGbZ5S5NYmmxtRGcShkIPfxlorztudv6WT8dQq3hZLgOp786DJFs6UDrWpRT0J3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786180834; c=relaxed/simple;
	bh=0BmyaDWyMOml8FyAy9yDrsf7H7BPRka6UbbIiLsQoXk=;
	h=To:Subject:From:Message-Id:Date; b=bQtBFDmVVkDo4KDfB1snCZxZboZ8MGSLjNR4gJXHolxb4Hgzb5oko9tf3/OgvbsPvOuX4jZ3/Sk9O9TF6I62gKbAVSOLhjBZcZns6jtLfb0iS2njp07aY3yvcAuNaMECjkLa2xxiQ4IdsvPAmnGB44A5UPLpE6ri4L6rfxxmOhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZWN8v0Li; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZWN8v0Li"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D488EC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786180833;
	bh=0BmyaDWyMOml8FyAy9yDrsf7H7BPRka6UbbIiLsQoXk=;
	h=To:Subject:From:Date:From;
	b=ZWN8v0LiN5edVofrBe72IOBGN3QIkDxhFf0x1k48FwQHNLRjIq4R7C1LEr0ZLhzrF
	 c9OxPaS0YzS0YXNrx9LG9vNLvF+XChYSEay1AZ7v7kQiqXocCKXGEwdDvrqVT0R+KV
	 ICTaZD1adS1LQa8VjmJlhbtFG6UuEtCo7BqTQm3oktAd4tq0U2qWlahfyW5H42bxIg
	 QunR6IJVwkiIZ+BF+eTcoXnMQwy2VnqRksluHRfcsxpyefG9SNFibVfY0SdQnc78Fc
	 wjhbOQ6Vb89ioWDVEssX/2ojhVfoBFLATYOIAh4TNBsPXZGSS//E20cV6N+appb6DT
	 uCI8dNEh2LudQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE00DC55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178618083369.10859.13522856931834767001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fdd6dbd6dbafcdeafbfbd7a0b477de77ae17d623a89552f45ef0facf21bb3d0
Date: Sat, 08 Aug 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786180833
