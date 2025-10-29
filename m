Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 553203321D4
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761734394; cv=none; b=fF5oz3/Ob02ASIzPhP1vXfZTGAEaysGylq7khBvt8g7um5YlAq0MUwDUcKo8XPogdXBeqPoLJBTUTSq3an5Ac59gzEryY+UiOfywII4WJduBlhbxw9HrtS8ez8Ge8gvZVFawSLikCsH15g2wuMiawS6HClHGvp84KS5BxavtTlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761734394; c=relaxed/simple;
	bh=ag+JqBHYgaqJ2vdW0VdoTfXsOyoJ6UYKQbwMB+cF3B4=;
	h=To:Subject:From:Message-Id:Date; b=mbO+JG6p5TgiT6B9qh7a3fIjYtk6b1p7uhIK5Hlv85iTJDWecTSnfDBK9aeQEqmOBUB8hRCUQvye9iIT15rFnisEaxOFIqrL/icJ8bSa34CgJ2Q7IOaNpqpNIIz+DmXce55POE+IF0fnEOqD/diLOiZ9xpCjbIPP0cBVfJ9+eoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4yc2w6n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4yc2w6n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A273BC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761734393;
	bh=ag+JqBHYgaqJ2vdW0VdoTfXsOyoJ6UYKQbwMB+cF3B4=;
	h=To:Subject:From:Date:From;
	b=I4yc2w6nDrRJdYwwhvVKAEeb9wjSySvfFTBFoD3wN7cW8spgg12c3vgG39CpwPR/C
	 ArmSxra8xrG3WWmx0rVsbK3r60w4K+950Z+2bjAVHd/zaoziVjXCmPDZrtF2QYbPAn
	 vRe8lXXUap9uBa2Kyallqo01gYH7i+EF+3cnlYxW14/sr7PcrBQMT3xKkZMmygTljK
	 X8MfvBt6Map7CdBIs5ZjKneL29O7RcIDI/HJMPwNyaLmENOwX3GD+ZwtvmyUSKZpJg
	 OzPoNb3WCN2FIAjqcdY2xt3jdMaXq9sfGBmWUM1mNkAHYBkaODtg2rRau5C0kG6AiM
	 7sZw0Fr9ckhvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9215BCCF9E9
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176173439358.32251.14272393405821390183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ce863ee16ee6df6169dcd91b0746577d98e1075b1b6ee3c384cc58cbefcb535
Date: Wed, 29 Oct 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761734393
