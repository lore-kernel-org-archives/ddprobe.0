Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E1CF70811
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735374954; cv=none; b=jugDBg4GOSArHIvqIGF/elvaNPlyckasTPZFdEU74fTfMjIN4omuWwpaoUZvxuud/3OlPB026fuZ2Qd6h36A77nHEnK1NeOsnnm5R2NiFQAKxJFdCe2FuY7IbzwFHrySTPySXqJWT3nKuDybRTRHiCiREluUJXy5eWdUOPaz24w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735374954; c=relaxed/simple;
	bh=bim/zm+Dz9yugPsHDOpI1ZC5LTLEbQErE6WQbX3ne3c=;
	h=To:Subject:From:Message-Id:Date; b=pXvR3q1ZGSxJKRrorLHCs7rRdOlDhDQACXvZPxVydHOkRTO9dMLqp6EIC5zvard5YOztk5eFAneJ1gJfhl4yOrt8dngzJ2Fu7BqOg4A28jYISnE3Q/EbkQw9YgWUdDPtqo8qjpwsvr60M8zhxfvB6B1RU9mRUrt7DPthC5t0RIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fs/bV2kF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fs/bV2kF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C508BC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735374953;
	bh=bim/zm+Dz9yugPsHDOpI1ZC5LTLEbQErE6WQbX3ne3c=;
	h=To:Subject:From:Date:From;
	b=Fs/bV2kF+aCKpuL47IbKi91gHKYxRBD/AZq1ylWyHLztdz9HhET414PVz3j5VmGKV
	 ADHmwS9o+0TODE9MsssoJp88BN2kuvxzPT00JuqKfxMWKZTP2Pd2OSfg5l4outUjZy
	 pVzOZTWrWvbUQ+xDVsJsAODXt0Rkg1J5R8FIOzyxlXVt1ViTPfco0qu/ul8J1zZsik
	 rQYUR6Y1jv/9K3vpvd3wPdyWi81BgflRQ2znZhgjWhh2M8lZsujaTlZNZumDLwJYu0
	 P3Qfca5zY5Kmam22pCDutSg3s5MwDhU65DR5ADJd0J+TP2eQrAC7EtA7xCrMAiHt55
	 RIzh5gN5TzVcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A07B2E7718F
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173537495364.22367.7330097882554293852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54738af154c6fde7d3da3cc07e41958aa65f8cefdff70129d8a51e1e1de5a40b
Date: Sat, 28 Dec 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735374953
