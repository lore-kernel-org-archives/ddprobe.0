Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7402DC777
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745975994; cv=none; b=p0vrqmhsj71atmiisPopwtIEnL1bqJLlSaSicDij6buAbqeCDy5Auw6TfBz+aHrzxnBLjeXnwE3mqm78GvcYXlihZDC6WrbH02VQAtaHMqHLvbsAIIU2Z6QvcRNAsSHYdnnJtlteM+tBPTgvXguxM0/0utHVzyfzLOwOUJogl3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745975994; c=relaxed/simple;
	bh=PUsS/5NjUvzgg3DD8khUspoQNDZlaBFigWyxbhP07lc=;
	h=To:Subject:From:Message-Id:Date; b=CTO7Q1+m64HNxj0KHeqwYdp0qjV7dnFPXirkGYNcQprJ+AENDCJu8qaXglPD+bS0htD1QAJSyIk4X3/Zh4DrWQa7PzILuIf+yq4brB0akxagZS7jt188Zm+90gNdFIijg1JafWX1CYe8MHACnLK2D/lJmlmoEalrG4z/IakUsrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YS36Foi6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YS36Foi6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D787C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745975993;
	bh=PUsS/5NjUvzgg3DD8khUspoQNDZlaBFigWyxbhP07lc=;
	h=To:Subject:From:Date:From;
	b=YS36Foi6AbXZ/01AWev3k6USuBlc6vdm7GvoMJhtdxZBzQSUS/YmHjDFcd+lMH6mY
	 g+kNeHHabgWiI2eq1TAzg5ZC1Ytldy9Vsgeb/QyDiYr9090X9JgCVLKqcObVm0dI/w
	 GN/ocziskZ+vfGibdzqdsgJnYL5IxEP0YdKTdncShIJUhJ5n+n2QKAmXgm/UH6PDnX
	 aRvuYcxnZnwiakMxqGg2jqiDG7jNlkjKEyX/F/Wcxe093k53gQ1DKAXp+HT5Y5d9lm
	 /a3Kj+dWV6pY4oj65VlW/iVqbinjA3X23nT3v1EEdsUUO1aPm8qA5l3lcOMOpTZ310
	 wMQjd3NVNu/bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE11C369DC
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174597599357.16855.15987762124013416403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15c35de172674d94fc83ba38bd3679618cb2a6ed89f34ac046964a89410b55e5
Date: Wed, 30 Apr 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745975993
