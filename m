Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55B614400
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 02:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741918134; cv=none; b=Z3Ep4pr/71E1JqqYmRrTrJbZ5VbKiQ/7JgK0IMqzfA/DmuV9xT+Tm8hUKBUbwUWUYXFLQczgAbmxn93kHoVnPycDeYe9vfnYRibRCnhuG/pWy+KPrrdoQ/ss+PLrgNWz2PHvT4XRf3XhUztFYzrD8XnbU/PM0RJYLU+aauUh+E0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741918134; c=relaxed/simple;
	bh=B4p7t/Q8etihCvnQb+fUiApCJ3r+es74P/fBlCNbwVM=;
	h=To:Subject:From:Message-Id:Date; b=A6LyfVq2nWFpb9R0lcW8OFc0oilia+k/0iHHfo/KfhfvEsjB9iI+tyqoQvOeltbvvS6LTI2Fdom/fXEIakMjwxlcQQJJm6F+P1sMWSxTofnPz32Ha3oHi+O+CxDP/wT+RSvqoQC+2nsHyrR4HA4Y43hjLh0IDVj1QQWPLQcPuKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TcuinK9I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TcuinK9I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD073C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 02:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741918133;
	bh=B4p7t/Q8etihCvnQb+fUiApCJ3r+es74P/fBlCNbwVM=;
	h=To:Subject:From:Date:From;
	b=TcuinK9I6Hf8NmqGp4dUix1WnAyWGhtTFnEqHBT6DllerMx0jkmXz0+SC72xXvTBf
	 jC0eypb3WNQEGI/cQ9AJBD3pTcySogFd+Nf7ui6nqdad9QBNRoka8RZAPZXmN93qE0
	 /aOnGn3Eufl4LWho330lozXia40sFeBuOo4vdBZ3oeiYB9tFxV6g3T8osdbH+qInWp
	 lL1slN2IKC4d3C9O4HOahpoLzB064KpZZEjO831wRxO73/xuGPQM36EdEcD/Q3jOCj
	 AV3OfIzk2kInY90RrcIuc/UW3Xz2CHbLcj9UZBGuaODNmNNRNrMukzFDYPXZ0WzNsH
	 nZn3sSUOJIjzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD35C282DE
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 02:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174191813360.11223.11114275498392095547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb2c5ba0c93d28aca37c5a40d009c5135a48f22b40dffc00494505679a63cf6d
Date: Fri, 14 Mar 2025 02:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741918133
