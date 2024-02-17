Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A74C27C6E5
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708192696; cv=none; b=DD2gV2Ac9N1q2wyejtmFumtRlZpBPXG7iLitY8AzzY9Hsn2nRdXqhZaOLecmLTIsoANmeyyqntyc76mA39uO99xWnfuCMvPATl2BBfLf3Gx35Tb4nIGgemLk/quzTEfNDqZUKA/adEY+3AI5Hn8PngycvegtQUsswPKeM9Em6Fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708192696; c=relaxed/simple;
	bh=tJMIQlFnsCnTobSn9nebLCd3j7/5zGLy7vXqYkStcFc=;
	h=To:Subject:From:Message-Id:Date; b=eztg6g7l7CObi53w8gn0E3BYpPIW9Xkq0DN/sh/VYCG+362hkEVfcxB1gQW4ehFIcr0f+GrMArxCUztTnURCJSAgQWkG6asgJu6tdDNUQPNWkIazYfpBywccgMV0i8gdlfEsey8Wjg9N6wmbn58QGPhHa2/tqwjBg5GWmVJnDx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CcrMAzhR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CcrMAzhR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C54CC433F1
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708192696;
	bh=tJMIQlFnsCnTobSn9nebLCd3j7/5zGLy7vXqYkStcFc=;
	h=To:Subject:From:Date:From;
	b=CcrMAzhRqRd481CFec1kI2SfSS+OCMoS/7FvPzXUdmZHuLW6rPa5nRBURjJyzBocX
	 5cTJGpZVS/EK7zr9nid143ZHK1Tjb80SirxhggFyqLBuwjEE78zf16p1dkKWzYQBc3
	 rjbvSFJykZrJyFiOuSFwuYdZ5jGew+gDdnJgMVrb40l6HALjHmKIY+HHo3kf8Wj3Bu
	 tN0eVODZURBPqYWYw78ul2FCJm9TLibij3ic+znDLh7VmVYoqJQ9dRthSEsEqCzoTP
	 tmpuSnJzjtguRWQXKIL7oID5GPqL7XhtQ2Im2dxAtYaPIK9hNSkDq3bpM5hRjnZnUb
	 jVoPhrNPK8vJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F65DC48BC4
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170819269637.8856.16492894926258710783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fb6c871d9b5f0871a141b727e87e6e655c184a17056b21bbece30dd27f93d81
Date: Sat, 17 Feb 2024 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708192696
