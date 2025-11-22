Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B8636D4E7
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 11:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763809914; cv=none; b=JO6+KPIs5FfUEi3Oy7LEhqVLyeoAVp4zjefDzLJ6j3MxOTM0nbqa9Q3WyMhwG8YPp1IRQj6ywj6FWjkQuoc/BN8oX/c/sgCknkze7cWQsRhIljNn7D+yzcANcxDmjvJJ+2a1Sj0q4nMxx58+GQtZJdxgarhPD9MN6egRL9x7CrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763809914; c=relaxed/simple;
	bh=XNaPzxn3OMDztV7piLtN2Xt0H0VJ8nlbLvspj+1VxUY=;
	h=To:Subject:From:Message-Id:Date; b=pCvnAfEPLkU0oTWQT4Vz6shvWwufQFiDwC+tRlE4jOoUz00sat/GEbiWP2LT7uPdEEweuFC7Zw4ImM+ATrULJ1D3E4nCtlM41doCrS9hwuGYbaHhXFlpLmu/LcpvNYhRin9461f70rCNN/YBTSs47cGwiZBzq0nOq7V+g7V28ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U08kbyO8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U08kbyO8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA41BC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 11:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763809913;
	bh=XNaPzxn3OMDztV7piLtN2Xt0H0VJ8nlbLvspj+1VxUY=;
	h=To:Subject:From:Date:From;
	b=U08kbyO8OauCLXFtNzze1kKr1u002F2SWmrqiA8LNCcTQtejMrhtyfft0OwHDc58H
	 jNkaQxmILgSuhepj89Drl5gOiJsYRBjCtOIaabs3PH1PQqiq8/3YL6bjH4MfpWpyY2
	 qnF/PvLXMJZBv0CL4kOKmgKxubqdjuENg8ItPdWDxm5FRFtzPoC+JKyfWHMOWNlEhP
	 +y9QXweOvjI1hFkhzWQopkbyRSqrnZ1BaNic6o13qL9eQ5Ul7LG1gkVii9HoZtKyPe
	 QAdyY3rH1S11G9fc7pXuzfNzUKnNc66TUSb8IBOXDb2IZG//UtM7GbCkPeyov48WjY
	 vI5zYUVZn1gDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9499DCFC52A
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 11:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176380991358.867.15258772014402050327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58ea84e3a74bacd395aecbfd933cc91301f2c378156129147164fc0412f2ddbb
Date: Sat, 22 Nov 2025 11:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763809913
