Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 690AC388397
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790821834; cv=none; b=CCLTXYy2DQ7BXwnQHM7h97P8DCM9Qc7Ijqb/Vz+FxgfPXjlNYez0QycaqA2LYkQsFP3Kswvaek0a6reDrrKjAV5l98bfSPcXqBSyIrgG+vE6FtHHGww3eHuf4uRnJk/9rD1AJXHGNGVxm8LbbZA1VebU6//bcb9AaHBMGHb8KG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790821834; c=relaxed/simple;
	bh=dY668rJu4B8oTGOeg5v7vV/vaznbVbJSyBkaknvfWxE=;
	h=To:Subject:From:Message-Id:Date; b=TQdQciLf6JnDtcgoiFloJjj2DXrwqQ/kBe8P4tsDQy8pTLR8ZlKESybii51zVcaq59Be7Uv2EjLZHg3zmHlq5/aHnDM8lWK9BDN3ojXntqXRo81DUQNUJN8l/oychA+Bx3qK9FjIPBv+Xqf4TmylhV08YO/ULqKNaHX/qOCuIHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KcyeZHm/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KcyeZHm/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C09C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790821833;
	bh=dY668rJu4B8oTGOeg5v7vV/vaznbVbJSyBkaknvfWxE=;
	h=To:Subject:From:Date:From;
	b=KcyeZHm/C7Xs9aFkYoUl/9T8VGpRdFvc6ETAL1tlyAjZlk+WZl/Z+5Vy5fUE85Kn2
	 /nPnIvpjJQwxAKWstwpENJBmTFW7c/43DqNx4rnw5cc/AFKqwJt2s+D/89O8VFXzbF
	 bFNouqnDTDEccAoYK1Nq/vgfXtA9QKc88sIT26cq0MKqJLJzdn9BqFYynk2Fym+lpP
	 LcM4x6L6z2JMCHOpHKdkFgy3Z79c6lTmfC3z5EZAfpdThkEHEoEUWGUWJQm2XqnmNT
	 fOWFVObh74cGrNVrD/W1/UHqaAbCIZkzvysTPvgwhK3N/7l05KtRyLmlu6RA5QJrNm
	 70JQ3RWytfMjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B27FACA5FC4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179082183369.19803.5161144575453323533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69b9182f95495579120f3b7d1fcc7655fad4ebb90b9d50138c8563f552f906d1
Date: Thu, 01 Oct 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790821833
