Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE7013C3C2
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735303554; cv=none; b=GYVWd2UzNJxZ2bzLz9JwJnGVyXthGln4U5m94ee02W943pFazU576EFLAAJAxcutIfctADmI3/oblb1/Lre5mxLnTmOUAEknzZAEe3QulTlhRpJnLCDeAe1314O5fTcwx/O4qlevXpUO4/PghW0S+dildUnReVvLDPck1l6U6Mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735303554; c=relaxed/simple;
	bh=LHjAYcQVINTT6Xrhmc4VQbxLFIHJBSmGp8ymW1jED6Y=;
	h=To:Subject:From:Message-Id:Date; b=ibRVlXZuhdT5FcszkpoHCiw38M7pifVkowU3b6ktBZl8+eRJpqKXhpaPZVzNeLoL/xGdeimzpIwOD/2zclPLQ3nkrMT1i+JfwNu6YUoRFaJlp5n1APRvwmxKZPYNbiir/LpfxSNdwETnQpAxcEWgnsekiIdWeoIrOdJ33Ykzr18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rPPu92lx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rPPu92lx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE828C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735303553;
	bh=LHjAYcQVINTT6Xrhmc4VQbxLFIHJBSmGp8ymW1jED6Y=;
	h=To:Subject:From:Date:From;
	b=rPPu92lx2qjlYeyA9J4p5pZZ5T6sPYWNZMDcJolcC/1hlTFEzOdoVaxAxRdTk/Wmc
	 ONnxcMuZfI1FOqVDbrc2UJQEyBI19OunMs5geIx6GB4Gb42ytOdUoYJbpdQreHDCyf
	 yLI8xyiDg2ZOfC8yC1DgHCrUfKXt7iNuovFPQtnRqFEZrPFB7X5Tp2Eq/D0iq+PGdE
	 AtsQf/EpRDjmqhBwQYFx3Stlt4g3XF/QQtI5a5crykrSEP0F1kwsMwlLn/tG6dXvyd
	 3+GQxnpI6CyyAzztOj5Hh4AwQofJ2JPLPrV0dYo+lqBelxVHVBgPgp66kfMXN10jgB
	 XoiOJhBXrxzrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D833E7718F
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173530355363.28255.2939544232440702874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e03724fea18aa15b394d600e6afeeeee9ff026dc633e2f656cbc86dc4467162b
Date: Fri, 27 Dec 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735303553
