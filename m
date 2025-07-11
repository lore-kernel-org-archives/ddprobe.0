Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270961DACB1
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752231594; cv=none; b=seAxPvKAgblAI45JNiuFFLWrJRTmvbcQkN9zm/7uUp58WNrEJKYO+399rgrbwcrB98PLxwJss7De5pKFtDHxiX5EN2I+8rTtuyBGzlA5q2ORW7lXTpM9zIJJ24nI5/RHxq8SSgUppeJK8XG/ihP7UhcsF1GJZJ4y5L0YJPZFNFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752231594; c=relaxed/simple;
	bh=qGNGdbLUX3Y0c4Kc2kfiyRiW2nmQTaYykJN4i5w79EA=;
	h=To:Subject:From:Message-Id:Date; b=EzhF7YrrUFhtr7aL0CNQYeZ4Pigi1RUM2MzGQ67kHm0FsSqG9OP+kEbSD9VwfZN0jdsteKvlNUZjrPQVk4LJU2b2n343pJgFHaOQJiAkS+1Hlq8H/ggjzujuHksaxfRVEYkR+BSoeSRuMan/j+EIYwe94DGrQXNgv8l8ibzbL9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PEtcEfy6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PEtcEfy6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8914C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752231593;
	bh=qGNGdbLUX3Y0c4Kc2kfiyRiW2nmQTaYykJN4i5w79EA=;
	h=To:Subject:From:Date:From;
	b=PEtcEfy6pLLbRvg8sUBj/GNxApuaYsqC7c40q0MNAQFe19soO6nMaYMCjRPc7v+Bt
	 IyTxQ+EouFyg0+niVjTeL7nMLhgmqiUAszacZbgWfbvy7UHpbtRVjQdw0ESlrKFma9
	 CrfponGUqcFwx+PUJdmM/cBSWg05qggJxmdGAIAbveOEBisd/nx39wzA50CjTYHCAP
	 9RFzTzEua915AmRHEIuN/sZ+ZCG3sUP0eMoQnzFnY++7RjpINNqUCjxT9X1jXHHUfA
	 vRkUEJ5n5RnoEGsQhue1oQfUhUKhsCVp1yLpXNK2AbnfUUriRr6IQTKt9p9Vt6hhfc
	 TSdAOBJEacnXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959D7C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175223159357.12514.10198675719044590792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a496580bf3968a5de1075071dda8a4ad970f888a169f03edcbb3ae935778e36
Date: Fri, 11 Jul 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752231593
