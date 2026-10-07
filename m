Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9412DEA61
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791357034; cv=none; b=VcRxUYuZ0wm5qCmAMi/CEFUYRdQmIc1QismFAwmgd5ssn90nuBc0r1X1TtcxfioknmaJS2wm9oUvJq5u/SCj2zs0tFLMT3njc0+S1IimtuMU6HSgnWmQ+Ng+FMR+qUddv4mYexjHfWEzBvo6+B6AGnUFwEYeAG/wtHzPTNBde24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791357034; c=relaxed/simple;
	bh=Y/GjOAdzVZJi9NE6SNZSBrsrq6oLfS+YSaNtlD5fVlQ=;
	h=To:Subject:From:Message-Id:Date; b=KWf6NBO8EUve0oSZJ8RmJVnZszFvIPUohMhhJCXXiizkpeMwlcyeqTRpm2s+wQMelY7Vclnub3z/Q+zI6dL3RTE525WhmzcH7CGM9R2GbRQTU8Abcc9F7+3Q/kM/dS113E0/LYytpap/tNB/DZqjX0yGlZf34vXu7V5urTpUL74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSCJ2jIx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSCJ2jIx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8E4C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791357033;
	bh=Y/GjOAdzVZJi9NE6SNZSBrsrq6oLfS+YSaNtlD5fVlQ=;
	h=To:Subject:From:Date:From;
	b=uSCJ2jIxSwG5VTZfRa2t15ay8sX8o43DUhHTMI2XyOGE6WNJ9IZxCg0QOjMC7AqgK
	 HJCpPevZy8QzXuIhXVlmPUbaOeXiItylrJSnKG4WgKak6I2Yl1DTsYRwsgghi0gVP1
	 bTBOchUXzQyWJ19KIVTA3YpPi0ES+K89aYeBK6ZBVJGrfctii27t93WoW/3HKqtxGK
	 3qkT82TUSGC88AGvEmgC+VG2oL8VVpoVERCtkXKBRccItCRtDSmsmH2r230u9iKKmO
	 448zH9TTTC+Yjz4ZBqKRreHD0hCfpnokCTopKfz93oGULwzGg3UI+loELcPJIHLyDS
	 J+ggwWQztKPhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAADECA5FF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179135703368.16152.4522142412413063932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6755d37d000667dfc01a8c395129a7f71e4df08ae523c36dc48947c2a194ec8
Date: Wed, 07 Oct 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791357033
