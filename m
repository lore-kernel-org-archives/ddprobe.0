Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A2E273D6C
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 10:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765016574; cv=none; b=K4PFJh3LytfEF0qKKPBCi9mSIDhzTHg+oIKUZsXJHH0z+gIliJUOQr+gphn7WKnGQa5DJkvS26IKLjOo//wrMT3Rg7rxyBHIx+RZ81w6lYve3NhFhcv1GU644+kF2NuUIFjCHq27gJAArBJvpsDW3UqeYhGdA4u+9Rpwp/Zi4kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765016574; c=relaxed/simple;
	bh=9ykflgqDXYoURI1ZZ6w+x5gX9oD8BIY4RX45XgqbDDw=;
	h=To:Subject:From:Message-Id:Date; b=asXgypg84Uf2m9Clqb1EKCtTrzjLMWKLUVdGjTacJp3N12ddz0yNMtehTFDXUHMI/dv76ytEjnXTKi0DSoGMoLIUboZ9+NVIZJeB/Lkw+9GtORJ2cTyRXvl0I7xvSXNh89vLnUoarGB6e7oB0H66IxqGhn4AlGD5z/YSVIxY39g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qv+rBzSr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qv+rBzSr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5037C116C6
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 10:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765016573;
	bh=9ykflgqDXYoURI1ZZ6w+x5gX9oD8BIY4RX45XgqbDDw=;
	h=To:Subject:From:Date:From;
	b=Qv+rBzSr1nAKnggO16Ms/OFt41R92ovkCmxupUhS05styeYuY+ftXYjxPk742Pkr6
	 UfKktqynS6x56Oj19qbtg84mRhIY45nScOgJ5GfY0qrM22GZG+bqHh7T3rMNq77ggR
	 3p1AWYO1oFKF40qEbSo8zCNIhk9ghEelV+Mv+AKhy/GXUSuedVTHGGdCk0BgAEzMvC
	 HkpigenJzehAFc8PhOznvtp2/JS9Q5djJ7nrp8xnL6P6cNqRKZT0TeiYec5UlIOP6q
	 MxggePxFqQe4Fo6Ux4YYjX2qA8tiyX6dYEYjgq6Z660J9LNsnMtQY6jM112XYJ33/0
	 bM90xlwWLIMwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9554DD3B7D2
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 10:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176501657360.6673.15698154328373816352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6e00a2b833e2819d4c091cb023b1eaf5530c56bb3943aa726d5ff8f642e8e67
Date: Sat, 06 Dec 2025 10:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765016573
