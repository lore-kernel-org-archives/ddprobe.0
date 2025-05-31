Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A2AB139D
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748722194; cv=none; b=J9/JHMhecAvTHTkiCHuLRBLPEdXhj5TLqJuojbgohNXitSBM6X+BUb3MOHeR70MtL4HINECWRJ4/gUQRwtqzeyDae7P5M6ADR49UHmIXi3oxFsMU2oO7UAWGEOW7lAjfnVUQhbInwV0TY7PI57TIIkfA1yLxT3Yt+EhxLu5Zsy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748722194; c=relaxed/simple;
	bh=yzhFd03SVrszmxgnrSwzxs8caIt9vHX5ymeFBiakULc=;
	h=To:Subject:From:Message-Id:Date; b=LaiTbBTeIex2eg0rgo3rIuAEt42pkg9j2CJJYZzCP1E2tHvmhRRLR6nT6AmzmR0MhFj8Xu/VEA8inO/9XC2wgjsRl9qXUkuljS8pct4PvXu7G3UA327D0oeVyny2V/Zv0zIkVAj2oiKlabvxHlHazfM9tUuHV3Sc3pKJUVsDSVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gRIQb59s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gRIQb59s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA766C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748722193;
	bh=yzhFd03SVrszmxgnrSwzxs8caIt9vHX5ymeFBiakULc=;
	h=To:Subject:From:Date:From;
	b=gRIQb59sTUJV0NpYNQqPIT9+yFi5RdE3jenDgK4RmeoWQMBXvmToYl0S/q3KD91SL
	 0bAyD1rZr3sR/PAIWIjexppSMOtiZzKIN+gp7d/41ebh4xcRr0HjvqTl5nZAkq9nx5
	 wiuDB9BfJTicgfllkuoRIRHqw/E5PrLgUH81dsg/MIZd1Q7L5scdbfn75i4SRW1YW0
	 GLloO8HVM7vZwjTnXCcN8NERIWcE9PGt2tFHbXtSdx3atMtA/wxwJuI/dNanSEoAZk
	 WZ2wrI4jkJKZtHVqk90/Fh9Z/NMM3odT6sfedGx7GWnKN1ZQ3s8ua+pISUNJdAE3Au
	 CR54/PYS1KWHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BFDC5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174872219358.18283.13257638746105305946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f37959a44cca5d22b81b5e3d033bceaa3e82c5d7404a3a1031108d8feef603a6
Date: Sat, 31 May 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748722193
