Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2767D314B85
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761226194; cv=none; b=MmNGSMokkt2wc+IylGpnSfiRamkEwOey2esw2USoLX/o9/2oQ2Ot4zbNUceW7w3tBwU1G0OiLDxMr2JkgYJfT6LMfd59WJQifNYBp0RmsFPVmhfHqnmaNq+X51Yg0vTkA+94HZ/UBfh7P7ceVvcDUGkWXGGr8DLx6rOXU+Nmu4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761226194; c=relaxed/simple;
	bh=4Grq4w3x3c7BTzJi2Uc0hTjhJ1sCS7Fs/q9bdU9cNEA=;
	h=To:Subject:From:Message-Id:Date; b=WoYnUDn02xBj3JAzPbz3/dLeqTRjZ5nDnd/4zk7B+h/uDXgD0SUypOKQD557B6gjjTPUXgRjR9U97Q83bwa9Im/k+6H82XrQqo67U6CLuQVW1yRs4B96vTzM0vhPPa2yAIPQzsOJsng2JBSIzZfIhZN7nr+vFPRfPv5ckvJzkOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DBPflVUq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DBPflVUq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7314C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761226193;
	bh=4Grq4w3x3c7BTzJi2Uc0hTjhJ1sCS7Fs/q9bdU9cNEA=;
	h=To:Subject:From:Date:From;
	b=DBPflVUqOYmvDM9krGFqh0EBP2Rj12UNIxas3VrEBwJtKJA5RlpGQTjiYkcfxsPVP
	 KPvB4cbAS49S2bB3B4gshI/SK7CONVSZTAxvuz4zlgXipor0X+M7+bj9KW8UCnayrJ
	 IHKgfNbG8m8xN/T18+LCmBQpL6R9j8B3DCwt4MMa5ndvX8aADFPFowD6Vcw9ACCvCJ
	 EdfdT5rN5HSi8SXLZGvX9XrAUL4LTXoS/hbqUQW/wp1YE7ZRssFtc+/Xu6knzVOiGH
	 a8U1vjSmERsv/Tn7mcTl19LUUOglM9DN6WqwTGtOLmvjZiB8947id0AFfJJWaNRlA6
	 LElekkOW1roFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F04CCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176122619359.11585.12409409191020873258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 664118f66739a24d12b549222c78e73af144cc92f93ad8977aaa43364ade84ec
Date: Thu, 23 Oct 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761226193
