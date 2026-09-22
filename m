Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96AAA52940E
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790071834; cv=none; b=UaxAeLlfwXZwfR3au2+lhYNXJeFORBjHpVPyMwPWRL0QpNI6I/jSfWFOlrXFvAVa4lm8IbfJz0yezR5DA002S1ePPF6oIAv3WKM4iYrksj2TMCXHQwzcKj8U0snR7k6jfFxVNvqiaqwjYqcOz/dy/scYohQkGUDtUpjeGFYmVAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790071834; c=relaxed/simple;
	bh=wIKwNhibI5q01GJkuAlmDcwrI8O6Nl0HwsdK1G3qvzw=;
	h=To:Subject:From:Message-Id:Date; b=LD0jGf2CjnrSe5d23PYxcDQcIRPaQvbFJqPrySasy8XLIn0NAZiTOiA8eqbQCUwxezZ40yMXEIU4O4hxnnmK6BBnrcvQAaPyhJzbR23iSbto1vIwkoH5TSB2OUxvp7Pfos8J9lMQKQ6xWoCJTemLMCDxRygTU2TPFbWjKEuaIls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cYil1avS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cYil1avS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD6A7C2BCFA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790071833;
	bh=wIKwNhibI5q01GJkuAlmDcwrI8O6Nl0HwsdK1G3qvzw=;
	h=To:Subject:From:Date:From;
	b=cYil1avSEVvD7OpQkuVUHh1+BWJfarnaHjTCYVfEUTTA49P0wylEa9YGkP0f9fpHr
	 rpZHHRoC19wsbRPM5TDAADUWw+CHYmogiROsFp9+ZNhMotqEqV5isi+oKBaqaQ8ITr
	 bYNpdSBet98GvxoTRzmAcbwOKZzsyFP0AGUbk/UYrw4maQqw5Pg2rPAWGVMlcWJ5CZ
	 Xw8K6iIrE+TcuVX8JDkrFAncaL6eHhQ6IiKbvlg2JIoWuBnTdyZs6RhKPW0C0uFNxX
	 z6qwwGIb5ZnRyspR8SNpMpsNCmFxyMWzmgB29kvu88yeps9v7IxiiBPYIUFa9LMBlM
	 SsQolzWEzAPWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5CEC982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179007183369.25110.10305151238716181521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f4b30d60a11a06585478f31f5db2d939e551bce0b769f69356dd69ca8ac9aad
Date: Tue, 22 Sep 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790071833
