Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596B110A1F
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746152394; cv=none; b=Kr8LzQmC3i+BS3zTTGbAIK8K4t3YZmD604J14BsZKkxfEUkvkvbk73qmSKjB0fR06e+o1DcbgiOUGgYhawlgdg8MuYfwgM/DeilXGxpnCzR0llAmznmfDnWblEzSXsy6hCiL6m/Ad67i3aE+hdGiLNhn4mXnK65cIZtsHijX/sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746152394; c=relaxed/simple;
	bh=2Jh3FbWRWfpaNnz9R9Eyg4+fUVc8Ai6iWO7OiuDjhLQ=;
	h=To:Subject:From:Message-Id:Date; b=GRTkwRiSt+XZixtlpj2blzY8LHdC7CpHS1quN7cY9l+CkdEcv4FVjDpUywHZBjH0k3Vh5E70NVEr+NtcM2ZS40E0syk8hPRN44pK2YMzIX/AHjktpuwTD0g8K1h5amHjULesBGdrwE7xIN9UIJHUzfOtRfyB7UpWPfJvgpxhWhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d/wAQDAh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d/wAQDAh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2267C4CEF0
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746152393;
	bh=2Jh3FbWRWfpaNnz9R9Eyg4+fUVc8Ai6iWO7OiuDjhLQ=;
	h=To:Subject:From:Date:From;
	b=d/wAQDAhmLGiyR4f/kzdgjelBOkjIoqSrBr+SvLefyzfNuA8c+i/wlrRdytRCkcRN
	 XapIYjxKbrJDHLrwyKmkjUS5q0QanbqyHmYCiTaomtXCP09995mP+tN8TVq9qhwHGh
	 xC6H738wGHaMm660ZbXxywClrPH+MDn/zyCTpXS8vVJ2fmc0jhrwN1HriS++HbaRJv
	 p/Js35/vPC5wPaEaFjhqcHU6iIZ/xrs0BJrwS9DWpXxleYsx+SQpJhxLPqH5V6LYTa
	 h1Qh6sk3HV3ySWCpoY697wwoZIJQZN07rmT94ovdBkQ39EClANXmgnGVH76hUCGQWF
	 TAFyZFNhn2YNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F899C369DC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174615239357.20496.10747060711019044041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbd7f80addcca9ef7d5f68924d8de18584f76c3b971f57163839fe4ef501da57
Date: Fri, 02 May 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746152393
