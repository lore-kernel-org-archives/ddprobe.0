Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316C42BDC23
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 20:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778962234; cv=none; b=UnEL0vdh0dCIzXFd4lwEFXMK/m+3J46bnEKkNlW0gG4sN6FjinI+lh9285UxtuF40WPtCEngm0ZSwsNQclpH+ukW/c8zcaBo12eNbUrha5tshwLFfSWYQ9E6DqrOfEthA5n+1k2ai9iu3w2JCV0rXjtyNZRRzOmb6e1+uqAs6Hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778962234; c=relaxed/simple;
	bh=77H2l0zDUXFRbZPRil/XzV9eAZ8CrE7gJbHcVAqK1k8=;
	h=To:Subject:From:Message-Id:Date; b=LGGfPqEDciXnuv6cwwxhPhTfUY//LQsgRdFwDFlzW2i3KMMKBqpQTnXkw+j4JFBJJgQd93V2uPkrMB+NyvAEOkNBR73NEjTmb1uBy7/VzK9klzIRAvZzdEYjOakZebkdg7vl+1mUx1nV5/LWImFQlcuTeQ9iof5CZPUaGEqspTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZwJRArr/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZwJRArr/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C835EC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778962233;
	bh=77H2l0zDUXFRbZPRil/XzV9eAZ8CrE7gJbHcVAqK1k8=;
	h=To:Subject:From:Date:From;
	b=ZwJRArr/XbbSdgSB4nO06qbQgDY9T2q0YVFw90kFx4ZObFFz4wnPXF6r8ZxD1J/d/
	 +aivSZ2mxP5KtEYnfCTellTW4GpqU4GBLa5i/a+dPXLo3vlKWnK/OJxTxyWIZHnSeB
	 j/O8+SKMBYNlDMXTGcJhZRadq5FTTUKpvZsJsiOurX9LuuZCh01K5nqRecN5KGDfU+
	 j3EnFKICCaN86aCYgVOl3JYJdOYYj13HBRVN/fnhRtQ1FH68zGkmGf6ynGYWpLZUQD
	 Gtb++LZvTI3nZ4heMOpYpADnbxtac5diVIMZNYzhBqvdE2nICECCx5TTDM0U9kL2kZ
	 n05EpX2+Or6hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF028CD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177896223369.29390.10373018303948345938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fb2db70c7809cabeeb835732c01a1a928e027a0f9a2bdff23101338ddec1b42
Date: Sat, 16 May 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778962233
