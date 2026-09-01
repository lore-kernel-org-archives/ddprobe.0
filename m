Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6042B15E5DC
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788303034; cv=none; b=t2dG8BcyD7q21g2sJt0LtUm7F+jaq5/mSNKucnfO6hzb1ZIW38EAmQuJjbU0m3oyi0ILgGDW7Pl4miuhy90e7npZ6NTubd/jOTEFUIrwSORLCCeLcvyBeWe6TcCQNXHowkN3HuTwhEK78bYV9npN5H1tkxGVZ3MRYpY2pVbcLgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788303034; c=relaxed/simple;
	bh=81Iz+Z2UYCZtgaQjm7goNArsR8lOqR/sCQ3vGvQk5I0=;
	h=To:Subject:From:Message-Id:Date; b=vARnlN+HPvs04Sr6zvJyqzWBDxK9uhGosfLie9xOkuPDBj48ML4qxMSLzYsy0mKOhTjHgY0sMF+epMbW0dHukolL+8l4jwigpDlg0IF8UPravWO/7G5M7Ak/4JoWKkbHEAgv1JuP3euRvU2TtIz9uQHkNkPq7hINicVA8JdvZ6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jcTiHuGu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jcTiHuGu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D586BC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788303033;
	bh=81Iz+Z2UYCZtgaQjm7goNArsR8lOqR/sCQ3vGvQk5I0=;
	h=To:Subject:From:Date:From;
	b=jcTiHuGuhIo6ZYl1mKibcVyHTGLwy+H31AbqKcDevLpFh590PrfBQn1Baen0hsHuK
	 oQxpFYDIDLFnHeoyzbfgJttJBI/QRr71onhNVgOTKpWefzU0F6TtDVQDWwGEdU+u3l
	 kYZaXiUHWMfeAqA2vjCkkEuynkjEtQ74eCQT+XgusKoDHemvNyg3eWfZ723sM/fdbI
	 zE7j2fFBu2CN5Hk6szc/1eMl/HkzJOvqLOjfkEaTSo/xSnwJMCrZq2LUKobJ1SUbUo
	 PF7KNNOwnSbXRKAbdfaaE0u5VMXPMIuwpgNs9+r7BUo/Z45YqQKScGTyy2D8171K3+
	 46idzs5CmTJtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3A7C61DD6
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178830303369.10657.8999636554395374438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09840d59577eb2ffed2f4ddb5315d9e78b7b585c92066a3ecc23be3691b8c1d0
Date: Tue, 01 Sep 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788303033
