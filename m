Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F9D18DF8D
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758998994; cv=none; b=FaJU/gJgJ8OSF+vUbC0ObFAglFcg+jhK1jO379XvU43YfS9Kec7l07KHO4q0EqMogkvtrLZVKhP1XeUTMf+wFBA8ybWFeIpfvpatB/Pi2BjnSJiYPwFEQ/mApNesNfxNHtJd7jAeBN8+NHlw4EzMx+nLy4rQwxFgVR7orFdJWHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758998994; c=relaxed/simple;
	bh=tU4VPhLy4VAn4cxLdhN9Y5RMksW93XaswPB+xgsrx8w=;
	h=To:Subject:From:Message-Id:Date; b=AD0Hn9SKLPLapy6JtznYflkSYgggabkNrppqyeBG/mkXuI8VrDtqO5CLczzh5orgHNtr2gFVBDXveC6e6dZCrK/WVj2Vsch4qf4nQc9Jn22uPhsFyfSyjYBKuzb3zJyoyvzkCP8XlZLLgoYUUa2OgmbCfJliUkbtEkiD+sIsboM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JWny7yzj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JWny7yzj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50B4C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758998993;
	bh=tU4VPhLy4VAn4cxLdhN9Y5RMksW93XaswPB+xgsrx8w=;
	h=To:Subject:From:Date:From;
	b=JWny7yzjdplIAiOnNidQ/v+khXQJrmWk5i7OrWmHDknAgFgeCgU1bY2gYnVl3qeDc
	 bH8lfPjJraYRASfk9YVAmOWSGuqpDH2YoRTRPZk3qcH+cxzlVr38y0dN5AQDpF0ccp
	 2cxjpjjaWzobJ4WoYyfMlP25j3dqs9KqhmtK8+VjmhGPDOqofIUTCkIb6HTiOiJvV6
	 dl7GTLxx9unHflRFrnj9Bb/PJ72/p9RkTvcE1a1AuYpRoshTfdlDnkl9OCCl6fHgGD
	 9mD7MIOr/sfMS8qDO/gZwOl+QnvEviMBLtZJHp3YIZq7Y03KFQKMQemjfde0OScBn5
	 s6iwlVCpcK6kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9359ACAC5B8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175899899358.12301.12672059806602899446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89c45db6ad83b3ead51bda32f08303425d214181eeebbb6241fa064ededda638
Date: Sat, 27 Sep 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758998993
