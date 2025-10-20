Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC974414
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760986794; cv=none; b=XHxlH7DegVZOWdSm+J8SedAFyisN0HN4AuFViEvs/HyBRlDafKg1E6/SaxP6VHYIN3LjhfuIAj4MU0wOMjwN5SPv5zyZByHQgLhuU4i7NgIPzXHoeJPU65MZSuGEvsaE5giqfsS3lurzCUmFFhPPnNCkL0zD5fHjj7fIAB38elk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760986794; c=relaxed/simple;
	bh=G62zB+6aYpDDnpbReYH5XVSlS9poUgP7RQeu3C+EebE=;
	h=To:Subject:From:Message-Id:Date; b=pry86CniKmKtzb8A2GffEwIsySlfBOddQ3MI/bOOYO+9lqpQvJutQIPaGJjlYt07moMpBURhYyvAgxGX3Y49Q6Jv41Kwd1ZJwsr7kesUoLmyIev1VC6vhTtKKZTTpe0BcKMYhuIvdUWVV60l4PA3VTom0vc2P55Ul+vwf+MflHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2csjaF9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2csjaF9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A457DC116C6
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760986793;
	bh=G62zB+6aYpDDnpbReYH5XVSlS9poUgP7RQeu3C+EebE=;
	h=To:Subject:From:Date:From;
	b=A2csjaF924srAaQpWi40Cd4lWVTZesT56yiJu5gGcVMUJOdMcFQJo9M8crvejr55v
	 YJEKckeBBtTMtuYc/Z28HeQ0RhGAgVpZIT95jOKzb8DSFhi4+oWhqVQ0dD4UDmxmy7
	 eFLdwk8cPMKkh1S3pufgRZ/cVt4YPZoulcbkfsVOlndx50fABuu1+u8LzFIYLZn2ff
	 JDOJIZq9RKNOPo3t5YnDtOXajLsloi5wO4duPwxI1KUmJGE7ElwdP77uj9YUZqsBnq
	 pQOUJS8fO57fD8DffgBBBtcF2PdaNeW5l6mZeMOaRmgNyTLTmEYC1yZuBSF8N4jtXa
	 OB+afpmE3UTXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDCBCCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176098679358.7688.18210064804262238108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 006da6bd5abdd5210cc85bce5f648331da25d4436780c5cfed03a962e2c13ee2
Date: Mon, 20 Oct 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760986793
