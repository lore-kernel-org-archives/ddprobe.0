Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7711CD02
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 17:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705427297; cv=none; b=Q4E+fa5+tlUr0660jpgHA/HiruuIXofg3PkkcskK1En+Xd/ARoF3SdFuKH28xlSL6atdEw/XdVTXGcOQ+r3Ft7+O5KO9U7hE4gKLVxLYiHiAWHDtt3Y2fqPm9kEeQeRbPCEfvGqbi9IN/jYve0ww3nUjPELJ+lmYeYoOJu1GfHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705427297; c=relaxed/simple;
	bh=0p6MoxWk0BvdiGaUe1tw/oMP9hZGuOBOjr/MvjPGyXM=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=NYEScWsqB83PjgBrkxTAuMgCOFrnur858ZNLQvtXT4K3wdpwMOD7KNaQF94PdnAIZYOrTE03FcxFLwU6xjlDuJd1iiuy5j8lvCfeyCSyTkQkYy/KhN82pDKbhpYtKVVxLazUlae8v071C/S2CTH4JTR4HsT7k6BPpfDM5Y/a8/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q92x/9da; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q92x/9da"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B8D8C433C7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 17:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705427296;
	bh=0p6MoxWk0BvdiGaUe1tw/oMP9hZGuOBOjr/MvjPGyXM=;
	h=To:Subject:From:Date:From;
	b=q92x/9daglZ3HOlRIyICPdUE67j5iVbtvXZ7ges0ZV39wMYyWZpBO0P9gtz9LlXuj
	 A0KJwZGZ19CGhk3RyNJ19fGNXKrqs8FKMG56IcIYLg48ymumxch1hbiMkZecPqJoBj
	 Vlu86WwAzo9g9m52Hebw206ov793u1HIcU/1xyJgLDqF3XGNz9EtHZrUgJ6wgRLy3R
	 KNDElz88i+LpMUvke0utGvhFTL7l8yOvljhTVuLFi99QQI2BgX1kYUyJ/O7m5F1G4l
	 QVAfS2xZ9m9PljuzgS6hJqStPRf6uDlcLRqd9lLZGcc5/kzKNUHmtmNs8H8fWQKlzh
	 bVOMHtspOo3ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FEC4C47077
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 17:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170542729638.2287.14999605156340930410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc4a2bafbd14de5d49174459be341226f1d0c2f989188b6d0aac12b94a10e966
Date: Tue, 16 Jan 2024 17:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705427296
