Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480C23E51FE
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791823834; cv=none; b=Aij3+yWLtxYVVR0LqjCHJ9LltiK7EeyTPasso/Sk9DIEQMdH+dILc3QXzYqvYXFahSnazkFShIeJSOtIrd1jgyCHSc8jTi0jbIhijLuvnfzQHX8bvQbreqLAoHW6ybbyrk30ZXBE6CvhCGyLixr3sdYJ2YrSon5zriM1kjOHi38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791823834; c=relaxed/simple;
	bh=jaz77lwlQvaxUUtbCu5CFwZLENV7LLQdqvCuo7eTANE=;
	h=To:Subject:From:Message-Id:Date; b=jRYdlQySJuAe9a4NPVijj93fk7q4Q1hn2h+Ix4+gr+wK9C4C+S0oQQyXsDJyayTKm20Fk05FoDYEz8731DMC1lAZgF+9rAQiqwTgrV/Cp+hQDvGYE9XVbbjGnJaxloIt5LV6b23vWY9u5ZwcEPMjmW7TzQHwy5zbr52fgcxm48A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C4Gu1JIx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4Gu1JIx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0897C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791823833;
	bh=jaz77lwlQvaxUUtbCu5CFwZLENV7LLQdqvCuo7eTANE=;
	h=To:Subject:From:Date:From;
	b=C4Gu1JIxnXzNUSiQk6fCccqnZ3/mf2D1SOvGqpeZAkvgYVkFMIAMsUgBEylRz+FRM
	 QxOyjmtkF96RZEOyo5XX5EPGEY7NwmDFKmWOmUQtAiWMiyuXUTa4A0XCvxJveEiZFS
	 1LhBSXLImrIgHFQyyznS8jy8xPD+3p2K4TFghTAZ2pNKWVUeLngFewm+av5/MEguQ5
	 RfG9df/7Vm4J8/lKyuTMOCvo57+J7GiyRCYjrazO4yWODMt5TZaqes+uyDZxR25o4I
	 CuKmzkZyctm1QZWVgj2ScX+BEV979OOjVT/i+Q0DmnKBTPOJoq/On9jEagH5ou+cS1
	 5ZFrE3J9Sr9wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEACCA9ED1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179182383370.16094.5628324502808876839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b02b62c9db0b82e7692f11ed62fd29282c7ffe496c0a2214d23564de3c893b39
Date: Mon, 12 Oct 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791823833
