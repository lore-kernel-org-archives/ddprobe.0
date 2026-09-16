Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 730E24F55B2
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789562434; cv=none; b=Mxs5dab956Lyl153qFo4X5uPz8v4Q7gouXISN8ckcBJ0PdvSoFLWRsDqYLOesI2s7YzuWSlSwGZ9m2Jz92loFHQ1LbaXVN4gtKs+wiVCzgJ07lmzaN4kIwv3bZAwUH4L4yZriSb+0xw2znpJrITFr1+HUKkJX4TSq23fk5McH8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789562434; c=relaxed/simple;
	bh=SwrtpB/kpUmlGEPsoZKsx+zy5k6DeiyasDTIh69uJ4A=;
	h=To:Subject:From:Message-Id:Date; b=J/RdMx21JoBOHCceEb/xb7/+i1d+DihBrZf/uCuHJfUw89epYXWO8RqoYf6FmLnOOWOx2rZbw4dLwkbacHVUd7r8XxuekJImGreqUomQAUba7x9UoC5cNt8UzE/jgelenNjWzPXu9GEQtJv/VBekKh8gGjOf1dzd88IbJhjmaGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rjkvp33r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rjkvp33r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7818C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789562433;
	bh=SwrtpB/kpUmlGEPsoZKsx+zy5k6DeiyasDTIh69uJ4A=;
	h=To:Subject:From:Date:From;
	b=rjkvp33rKe8c4VN3N5vL4syasmuPFN+DcpgTqaImv++X11slcVOWY6T6XljCrs+dn
	 rOKdug6T4SfJqH20dz+Q+L5j9XQuBPKLeNUWHodCsXP8+UEJ/2jjm/nl5g0ooe8zLj
	 SF+DvxmcpL3KqGB0AY9fnGv3/pbJeSxC5PsmLQPnB/E14frlGLmoKAVCo3fKIe1PT5
	 TWz1ulRdFhqsjMXrf4YvQNqyH7kvb/bCk1nvmrfhZy0yp+UpmKTm2bfSVdxqXFFxmh
	 940AaXgqhNxp427AuFu8aCmn50De4yGdKyxeHcR6npk16RIh5bG6zrCLL4kLdl1X4H
	 RtSTTUwE2hIFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21BFC88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178956243371.7300.11118309509258039472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5ebbbe1722a1b2c035ad116ec94b8f2faec9d12e8955af11f8ef18f4e25e056
Date: Wed, 16 Sep 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789562433
