Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0701035965
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768038834; cv=none; b=m4bww9xwHZdh6qTEOr3Lr9i3ZkGbJ8NSFDy8wt+oKl+2oqB6MJcsvUe+Vm2q3SdL6Q3LHnyLrlZvAMxgcTaz14NoPWOiLAJz+A3YJEcqIaT+evs75o4w7FPAUh54cIGfJ5Yc1DuJLQj6gDLJ1RPFd4eyFmk3BlXr8dSONaWS9iU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768038834; c=relaxed/simple;
	bh=Ev1gb94jch4OZwKQt1i+pqRdE+sJtXdmhZnnYmyX9ww=;
	h=To:Subject:From:Message-Id:Date; b=eUfU+DipQOiJ/Wy8yneVEd2hkOb2daPzmalzRferLvAUbuI0SSsKHDe25U623RoNj8IdCgLhfys/HKDSNSfSrEZooymZTKEJthi/QyaPUVC8xuzP/0siTJJ4AS6BnNyFqDCFW+Jsab9VAROetVrKnbFlL32OEOsxyT2ebBHgGJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lq5cPZn5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lq5cPZn5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F82C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768038833;
	bh=Ev1gb94jch4OZwKQt1i+pqRdE+sJtXdmhZnnYmyX9ww=;
	h=To:Subject:From:Date:From;
	b=lq5cPZn5aB6AOOeLrAZJD0q42h/BLjSYLcsiDR2Da6mcNsDnmZgAieY0eW1NrSEmV
	 2gvKY6isytkB6f6y7PUCc4yXjXA5PZ+6nVgtWC6VHKz50b6BTgF6t3Cuabyumh1B2s
	 t5s1tqLMZuAN+eiPqg4FmQliB4isdgIQrsF/foCuRylZalIrUGjOO5BGPsN56pA2mV
	 AD6Or3xAhw2Jf/Mv9htj5yuY7TSFyP+JG7z7e3/q+bKG14xZ2WJFMkjHQq8bSdzQAZ
	 bvOMsHxV2c/+uoOZ5UqWHNOmNrqTLZ3XiInGoH5mASxx9asg/FALF9sSsdqTxbaSrz
	 kQoq+sHcq5LYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923ADD277D9
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176803883359.8772.10358198068202671007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0130d0ba4d32275b8042f10376b23141aa8ff529bc50379a8b7dfc69c5618f19
Date: Sat, 10 Jan 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768038833
