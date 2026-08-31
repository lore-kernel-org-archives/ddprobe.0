Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EC78359A68
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788142234; cv=none; b=iOwQWCAm0fivqJrFfmPBA87k4nON7Du3rlZmz6AsgP1Y3sJpIIDB89WPubvmYJ/rD+Iy5p6pspq9Hpy6wKTdw4LwAyZ6jDZNB2ck6I0EFiWl+VfEZGTQbMPblRQ7KeMnWGkbXINLvl5XEk3oqWcX0QXeA9EqBg5X78YipOV/OIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788142234; c=relaxed/simple;
	bh=SwxStQCgIitjT30WSf3p6N6zkBDrXgiUpFoOi6OEGkU=;
	h=To:Subject:From:Message-Id:Date; b=c0yPO8brnebS8Z0OsgOFQUtGwmM9vlM1o9usp5DeYs+BxU0OB1vBJ5itUGtvC6imjmW9kj++WuTUozKf8HUj4gW6KZcMr/zd0svzrx8PcCFSYYGjLCCnKLVV68aLc9LC4IkVtAw0sYYE/uWvGJHe7qzT4tR4w2I5c4V3wQlQp+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YzNSDtsN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YzNSDtsN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A71C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788142233;
	bh=SwxStQCgIitjT30WSf3p6N6zkBDrXgiUpFoOi6OEGkU=;
	h=To:Subject:From:Date:From;
	b=YzNSDtsNxCE+9AGJTKJcPSaGQMdVp6cnDqAfBkLpLhApBIVIkezFl9GvZl5fJQuwr
	 13iI4NDjqO+0fywYsxWDQ3MVw5KzlObEy+sNipWl6AIILw4QQSXsXaSjeHj59jAxBB
	 mjQGfF4/e+2OjnB0s7qAYIYmGmd14yvH5lklu5yYBqUQ4IlLnhaUrQXtXjWEHbMnAZ
	 0yL1Sh52wnetRFZW8EbL/3OdSLYsou+1x8LjTa46FvT2KIw6AyT7jfHepQRvehWI07
	 IZ4KjQZghNH+GV90dgCUI0pLtJbPQ5vGJnxb4WKeT+wk9fxWlx1cgEIm2LHNwo6aL9
	 WvTKD6t732IrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2A4C61DE4
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178814223369.12627.6486813887421225805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99556164760041fbb095d769b30df473ad6c81d0b3ab1d59847b5bf55b175e64
Date: Mon, 31 Aug 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788142233
