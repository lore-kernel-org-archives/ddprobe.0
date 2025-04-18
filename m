Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5553E70823
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744989594; cv=none; b=IH+F3ishxNS0d19hWA/6lCF8DDqDGrcvC5pKydmPog3FalkANgXnidRi7uu8Xx97cjBOnTxHbkSzK9Bh1o3EKYfYhFFzkFqKVLERlaUAl4GHnHp9U/UtkqePgJQAUW6eWbtHdcXhExEayZELIHcuehdAJtsqXcSa4e3DuTAPnS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744989594; c=relaxed/simple;
	bh=Qp0bpYKJhSXbS9F6ke5Bdtemwnl37wUeGmoT9ygTBzI=;
	h=To:Subject:From:Message-Id:Date; b=H4E48qtq6prPUG6uPw0tV/JrEAaRo60fB+/8aw+acN6aKk9tEPkpqDwZUzbgpskCOzaBwFfTihedbZI7wUbJieJ4PKaqX8JRrqs5Jh52799TyaU7f/SaEPWhKvPVrsc/FRf0eKdiC6/nt80+050ysjciNaU+WZ8Et+71uuKeTgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IoMzNPcl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IoMzNPcl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9390C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744989593;
	bh=Qp0bpYKJhSXbS9F6ke5Bdtemwnl37wUeGmoT9ygTBzI=;
	h=To:Subject:From:Date:From;
	b=IoMzNPcloBfp2qSuZlX6u1t1H2AnBrtQw5qGLenBPPmgpyw4EJyS5sRskFLVxq8/J
	 PveA5JvLvkSugRnV9aWrnMZdnwOCtj3qf9QN70vnuigz64Ou+JmocOB+tg0aJNY2jb
	 k31KhsMMBFS5BB/ntwIw4BhsZ0YYbqWOGFY8M7g6pXp5QB0H4KbJXMrlJgLzG4HRf9
	 XNUtoJ2v6jayCRxhosR9EeATZn5fzieEPtO4m/O+JbM1+S63Bldu1bsJ4mUGu5mlN1
	 z2bNJQfpL2zHOMqeyE2nFgE+uqcIq8safQaUCl6eub15vVzaLV0PD5mrLLpG8/N00g
	 sRmV1Lhwa65dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF7BC369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174498959362.28363.849520041466966067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cde2f81dcc8f3c518331b88899c05b41d91b73c2280c155c2ef1349aa514911c
Date: Fri, 18 Apr 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744989593
