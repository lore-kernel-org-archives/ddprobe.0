Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6CA8382F16
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 07:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777100854; cv=none; b=BMGXXDuwziiAWbyiXCwNRVm0tK7JjVFIO4Qplj6wJ2lOsDTf2GYmwhoCsByLkZqBqNcmQ7p3QUkpo3yl1AygQbabUTdCUA0MP2TlhOmd57nz/WxTTbon0XtdbS5q7dyUoXUfg5HKIHvPrdI2A265AaBukTqIY7kA6ENNxRIqp0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777100854; c=relaxed/simple;
	bh=n9pJ6IOC+hUSnky4m29wn9gAGkycb6IJa6HSxCswqZ8=;
	h=To:Subject:From:Message-Id:Date; b=Fs6+XpTbszYk38kK8WdB6XozQcMOL4TClw2z2CZ3zUpE5ycsMV3byum0wtXke89CMoFsSo28FAhr1XsE10dpv3M/e2ZrdH6vC/S/jnFijsE8o0q3zjmzpQIP1QYDRJSLCjyidGVUdMYJiIwVelI/RQ3Q6R2+kyEk7Jtpif+3pVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GKJMX7iN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GKJMX7iN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC08BC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 07:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777100853;
	bh=n9pJ6IOC+hUSnky4m29wn9gAGkycb6IJa6HSxCswqZ8=;
	h=To:Subject:From:Date:From;
	b=GKJMX7iNxgtiyhp9Ovi+n6lFZzy2Yr+CjjmZzy94EtD08uUoTEJiQY7bXU1TN3/zq
	 Zijptoq/cSO//UO17eeOuP+PZYvhypQ7G30SCx5IthIZPrv5ED5pzcer5BAUK24V3O
	 GxkNcEoAZkPOxs9JyJgTWiqk/bGvO0VzXZU85DbVAAbLMNWMLYncewFRtCopU4tZI5
	 phlGgY4y3v6Z/j+RItvSA8R7hISRa16Ly1rs7hC1LlFuS8zldjqB5azqEvfG6IZKsO
	 KjCL8em6Pz8Y5ZcsQ98ho+xpSRQm/fDv9AbL/ICQKNuntx4JutcSAzrhx/3vyWjikS
	 me1OXIbvNHudw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EF4FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 07:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177710085368.25765.17626137257878732528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbf0ab5cbf9fd77f45ddae9ccae3d3ae488f0e3ffbeb6eb2697d9464029f4d6b
Date: Sat, 25 Apr 2026 07:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777100853
