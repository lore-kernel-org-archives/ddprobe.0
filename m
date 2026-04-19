Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C97D1D8E01
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 04:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776572854; cv=none; b=jugHq886OXNPV0Ar+FFUriJNlxutWR8ZCHAGqA/fGYXp5bZ1AXK4L90CKl5ePpLWBx+EJnzIFBdLFrvdsmHgfHcyvx7rag8WVAbTQ/Khp+F/Y4Uk2qrpFlh+V9fPp954BKq9ypzmOsqnXkLpvZwhaJA02F3QuQkfkasb5o45MfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776572854; c=relaxed/simple;
	bh=5SQtxznniTXn4Zm4OQV2tPi+I6RDYKnfE8URrpbThRY=;
	h=To:Subject:From:Message-Id:Date; b=eoSDl34ReJtp1RCGfaOagHrqdF5vxrmbmuLQNT9rv8ENfkbnV/gZRMLo1rJ0o325O22rASq6bK9q7UvP1KTNGE1fjBUhIVi3A5CQOaMYefpz5W5UCuD65Og35e/rgKwD4Idz91zefXxTQwBMM4QkSdIs6ET+j8X6jRl2N/Cd4Dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ec5oX0sl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ec5oX0sl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C368AC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 04:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776572853;
	bh=5SQtxznniTXn4Zm4OQV2tPi+I6RDYKnfE8URrpbThRY=;
	h=To:Subject:From:Date:From;
	b=ec5oX0slKQJNmf9T/PN0ZNdEJrnIWqxnOMlz1Zq61buV56UiCc8zgWYsnBCZMM3Vf
	 n65LZrnVK8jfjf944MS7mFqFeGHlw3Ff7nLVYjQy3hBsqMdih/u/0V3anoa+Zo7l3W
	 7bJaGbyl+6IcrP7hvzSe4v6DAFjL9etIcLU2oCWtKn0xTUu+ojBDlvhKHIJG2QyD6y
	 tB2oC3LUpPkvNt8cfDdDmK5A77oRtZcexTNVGNyN8r4bbaFjc8uqjgq9IVP+woa4Uu
	 4654/lO7OfrAz14ikWk1Rs6hugFBzS5W6l8kkgOtwcYseW9ydyGCDBQUKqwR4X5fiZ
	 1mNDD70cSkTWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC40BEA7188
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 04:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177657285368.25662.7414353320973321397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d25beeb4bf524123fa4b89544d5b099f70ed649512a2533fe550f2df0e4baee
Date: Sun, 19 Apr 2026 04:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776572853
