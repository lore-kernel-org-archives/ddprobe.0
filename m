Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A4940DFC9
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 01:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776215254; cv=none; b=Y0FXgmy8Ha5QoKHdxoGoo3WTwYXP+EQyr5dkYzp6dtZNJyBueGarlwVLgYOzxUoQ7hJbKCkWoAnrIeHxqXcL0AAK5/LHXLsUmVV4cJX3btMnp8uaNCkwZX22BCvp6bxGOpYEXICjK21FEzlNqJIHG6z1i8QtrYPjTLkvvMV6P/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776215254; c=relaxed/simple;
	bh=0l+CD5JEmOpRdQWBmFqBYT6aXvXCUaGaWeUVKjztqVY=;
	h=To:Subject:From:Message-Id:Date; b=EvOLakMz1+mF/oX3Oiu7lqYlFBvelaNOMvOETDU3xEiiWBXVnt2U9sS530LzSCYqFWTeaqD2ufBMQ9ouVaagKYao3OYM2OvH9fwHYjpupCuNOrsf9XnNkpk2wGTSZ5bKXgkaqJwl18ccLWvKWOKbgJQ/aV2fP1TGA40c7IJHffk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQ7rh+cj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQ7rh+cj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C14D7C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 01:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776215253;
	bh=0l+CD5JEmOpRdQWBmFqBYT6aXvXCUaGaWeUVKjztqVY=;
	h=To:Subject:From:Date:From;
	b=EQ7rh+cj1X9tALjpI6XNkl7m/Z0MjsxUDPnnmfBOzPRDSEwq6oRMdYbfGO2zDeud/
	 P+bPfFA9LVZITqZIoVWFmlwPlMK5E65L3iba1GNbk/b92zdr4TKkmAr7W1b3LBGGcg
	 WkvPGCI4EK4aSO9wsKgkdTQ+P7FaXPVkg498PSEcTjhzjwsR7nKs+vR++Y1YAhQpQk
	 /Qx6GUnidwHN9FmaO0gVurm4soot/zl4gVQCawzXJoUwnz2iMDFDtIJ2w+has3S47R
	 TycxglV4NY6OqNneRHMw9fxqAUhsBhWhuS23PXbGOiNoday9KEHZ4YqMdepOsIsw3c
	 vzEStS8iPOCfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF76F9D0FD
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 01:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177621525368.14139.4500503377560304512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f51b94bd3bc80b1d6c87241f068b02f2debee95ff04281390015d876f437fa0d
Date: Wed, 15 Apr 2026 01:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776215253
