Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39511309EFC
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771620894; cv=none; b=KC7bmSI5UY09swL9QU7at35ohWdQ2ZyjRe0kqEl4xZYfG4CT7jwmrjmJacLDb2o54+HfBlw72oy56RbD+SwhXOk6ehOYNgTim5B2b91mcSOyDJF3N2hyXNM1/LqlTbe9SrmivLmdLXUH5t+qkwcO6PtYANulxpQN0qBu1R66ZXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771620894; c=relaxed/simple;
	bh=KkZPGGWBtx2hWu7MRXNwe96v2sWQ3s+pXakr0Mc0fN8=;
	h=To:Subject:From:Message-Id:Date; b=uS9xzZeZ0fgGgM2DK84bZHk0F42xBGQt2Y9GgqfcKCM0Jbnu9KgZzlvDWJoB/EQUzz4vk+c3Er6ylPYr2iQqlRYj1uRb2eLE721BlLxA/dEnx/dV/LxM4f/Yy7TKm8v+zfO6MRPiopfyHMKuTHNtyh96dJbp27xQX24Z/c8eO88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wj1NLb81; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wj1NLb81"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADEC3C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771620893;
	bh=KkZPGGWBtx2hWu7MRXNwe96v2sWQ3s+pXakr0Mc0fN8=;
	h=To:Subject:From:Date:From;
	b=Wj1NLb81kk8OhVwNaZr2uHeUN9mVMAskrmgBwymdYRh5jJ8P1XmVwJR6XzDc81Ljt
	 cv0hPeaq4AnOkiTQfcK9IUK7bJqHFbeIvLh1IlNBOJA1Vacm8LLeTYEpTIVJvo3bqn
	 tup/cwhaxo2Jru8ZreLMzryYbcFwad/duaMNtyf3fnruAEgesXb2NQzzS8opc390x8
	 00y2oQtzHjW3/YwPTaePRE3OEhXAGZWUfO5T/mI85N5eeqZPHxKHURmekMfej6N05K
	 O4swLiO1OR2SSHfUdCnUuNv+4nJJgxj9s4pnJ2ZMyWoY3U8UzSHpvaGJdfU0RSNVIf
	 WJmXKHTSnBeiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE35C5B568
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177162089363.10676.12432544619868376174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d968527f005d9337254235fafde1662039e8dc8b40667e3fc29633cf729fade2
Date: Fri, 20 Feb 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771620893
