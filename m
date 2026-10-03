Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4012D37F8B6
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791024034; cv=none; b=VtGlWut1S8BnD81xsXVNstX0fl8730KO4s9oKl1uXI5gFYeX//C2KvFmWXTEs+Kv8HiZNcENN3tQfBpDXv6eR+f2C112sbqHr8Pqo3Xg6NIW8kzs/zjA3yLRwyVi+fIh9s4qw9t9qqXIwn6sd8A0My9qRkEiQlselJjDrjwVedA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791024034; c=relaxed/simple;
	bh=GPiziuqfRXUr+/6R0rV4KRUYCcFf4H34bfjiCvvp1p4=;
	h=To:Subject:From:Message-Id:Date; b=Cts0yXO0slMvvquHpxJ7x6ClBPKEC6VgTCC72XY1Fjc2/hmisF+UwPayVc26UEB7r2M2UfKgyAMoZYqAVtbISoWVJM70ka12Z/fXl7WXWOAI7O3VSD/iBFs3HhzYdgB6lwVVqQKTk9Vkpt6Um0yWb04DqKs1NPuiSmFSJOsO2GA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJ1EeSep; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJ1EeSep"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD2AC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791024033;
	bh=GPiziuqfRXUr+/6R0rV4KRUYCcFf4H34bfjiCvvp1p4=;
	h=To:Subject:From:Date:From;
	b=SJ1EeSepf/BtLeAea08T/j5B6hgBzNVxgbmQJgwzgGoWlj+jVTNLXDDzRItQLvveR
	 G09iLJ202XUVRvA8TQ6bohARfpp2+S5r0iszDLI58l/rQRU0GTsJ3wn/qN5aLfMxBo
	 jMSr7EMw0SdXtOnFGIO/0qtT1FJyUws5/FOFz0TUkhZ41RGVKbBu7W1M2UDRKTeI7k
	 vQCsfPX5j2453WZXuVsYrRTMFdbouWN3dB/pcIND3LomVbqPlnKdSVYPE5NRdJD/uQ
	 pcmp6behcd0AsEpQVbZHrCYp5osqc+ca7mudHcnMCjgzjsSIWhWLY01s5Pyuocmtch
	 okHJz47rSXNlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6EDCA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179102403369.27502.16413695208221987699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14ac8bfa9d8725d48a6b698155d086199ab1836807fbe3e784a2fc19e9a92ea3
Date: Sat, 03 Oct 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791024033
