Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76D66A59
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752209394; cv=none; b=nMh+SEhFmiDyfeNjTx30fxERz5orOoYtitzDfO3qIjdpkaPSVL7JkjzOpbsnJF3mYwS11mY3njT92ZyCaM+0yWv1Udr1Qa4y2plparQMoyVp7kNCbA1vRjzjP1NnDDYDryTRV37xxHmCYbnL6JjSG9TquyQIiRhUXDhipxqfn0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752209394; c=relaxed/simple;
	bh=v8Ier/5wQck2zSieFGFrNnrXGzfKB+vHocj+mymbHo4=;
	h=To:Subject:From:Message-Id:Date; b=VZHmB/DMxumdXIsp1YKSJqbqrFy/dK2lobLmminvZJ9JIXUZg/rWe5uyDnMSLWti6NH+0/IGbnav5/oa7wExor1z6F2IkHV/rY0Tx7dAoFr9Ej9CHPpGB9EYPTO6uxiUJEQw2E0sWnhXSZEMwPelZeFLI6uZ1X8JMXKhuNnw+S0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNs9niuA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNs9niuA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0044C4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752209393;
	bh=v8Ier/5wQck2zSieFGFrNnrXGzfKB+vHocj+mymbHo4=;
	h=To:Subject:From:Date:From;
	b=hNs9niuAs5pOJT4VHmvQsLnlYjb6m7BQDPLdmxR+aSasc2+btykpZ6I7Sye2Lx++C
	 N6HeMT9ar6RnlhOaIALyvvc6lt5rF97Ryo03g8mSAIwOOthym4Il/AzoEu5q4r9GLe
	 N6HHQnAyhmGF9S227hUXOyqbbNupYdppjRfE1PgHMXAOSf9/Cky7+OWx9HegfwbqU/
	 LLOh+RaasEN+/WspDDuWnyXx2lu8JR8tfb5BZ1OrG31qSc089MMFTJ+JBYYG3ngE6W
	 aLa2jURjXCEeOIQI5f4q+8c63iyRzMPFuo54Z2YSmYCP8KLaeqg98Uvtiqy0r4jTyF
	 lwj18ZtiOkclw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF6FC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175220939357.26553.6382052032146355401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 200581a1afe6feb2cbfcc7380c71ad80bd581b719073d4b22cf857fbcdc83f2b
Date: Fri, 11 Jul 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752209393
