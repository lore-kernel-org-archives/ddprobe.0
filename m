Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4330A26AE7
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 17:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716831263; cv=none; b=PbvqNV9dEoOPHvYT1EmG6kOsHd14ebfKrcz35fftPkfWXvl4hF9LplUnTbXbWhtw56Q0knP3AX/UlKxxKTe876tREgXQncCg5YTId5dypVpZJRKAsXZ9lo1eIs6SPJAJ2vlFnq5EzicVFXjzHWzqrBGOFloZuzwKJ85OTN8xmJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716831263; c=relaxed/simple;
	bh=ua6p/Cjry1s/uFBkfRGUdCn+f2SUXnFUiJMBPzEiLiQ=;
	h=To:Subject:From:Message-Id:Date; b=SG4ynx21HnTauhCG8O0uh7+1XEPGFg/7ABdaELELgFaqi2RkbQdhu7VHjIHfxPPyjzMVS4GMI57yjE29vT4ECdIKemzoiU0U12Cyw+W4bDcyfPsRFGfYePi3KKKF6IQ+22JdsEpEVDx9wIATj+rWgXUeYPlfyoSSveZgeH6M/go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=laH7x0uk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="laH7x0uk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBCA8C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 17:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716831262;
	bh=ua6p/Cjry1s/uFBkfRGUdCn+f2SUXnFUiJMBPzEiLiQ=;
	h=To:Subject:From:Date:From;
	b=laH7x0ukP+h4DZjPwzxbaoNzwYUJC56z441x35A26gcnqpiDWZTEz3N0aow3yNqte
	 dg+x+mdUW/z2a15jdF333x1gnZY/BZOu2+gzG50I7m6Xw3yct5lIOuC/mhYa/q2Kiy
	 IFDqhyr6dbZUqjmC0WcqlzE8bsMjyVw59qnt37LMGSedKbH58v965Ey5DVKCR7wg1L
	 NVyv53cwx7KuA92WGEHaqDIXmwuIgOi7MztHGZXIbeTyqLZ2MqY8ilEsspqU1CxoJA
	 Mrto/Tl5BsC6hVPZi3GH40L3aZkTyPRJf9IuD+8d6kbbb7zib7p2AUbaxVvC/dBEIo
	 5KM1vm6MKeHRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8839C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 17:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171683126281.8851.1539714889533512723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc3802bf9041503a49105441ab87a6019210cb9c76324d40459452bdb3ad5be6
Date: Mon, 27 May 2024 17:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716831262
