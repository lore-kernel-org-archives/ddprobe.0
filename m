Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 473E8C2D1
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737978354; cv=none; b=TDspU2BLrVC5MOClf7Ki36g94xePUfv7fs/spQW3xjcCxGV03jJjKEKCp/3aT2xcX24EXw1UH6PdlAyvsyIld/FKrQkHZSKHjSxZXHyjnAP9939/MsOHL2zVoqsos4/86sfI0Cszz3JNYWjUfLASMGCGLnmI2u9F3uq1mKRdytM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737978354; c=relaxed/simple;
	bh=ll8pqJCt8GG92lrJoRpRJzj9Qxf5GWr4+QArhUH6HnA=;
	h=To:Subject:From:Message-Id:Date; b=WoGzKV0pUy956U1BTJVvFWQfjHbJ9GkFXuRFUoXG7PbtGUe8j/aALQGcsO/E/JsUr5dzWPXw/c6EyvsTGdB+1c3IbrqimLw0SHazb3rtXJaL0/01hfR/uNZEmw5z0bwKxlNWharmUIWahyvJq8iGdzr1M5A90dkB1Dl5lOhiol8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p6dDr6DT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6dDr6DT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B2EC4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737978353;
	bh=ll8pqJCt8GG92lrJoRpRJzj9Qxf5GWr4+QArhUH6HnA=;
	h=To:Subject:From:Date:From;
	b=p6dDr6DTnyQs4qbYeluW4mSXo7RWPmqqqTgUMGQ/tuiWlB7O108C8LNhlWVh4U7FI
	 FlMHD9lyzAdwn8Oe4McaeewkzmJNQRjH4/WZ/VwoD25c3tTS+Oh4QZ1r9f86ZkfGos
	 oAWvCUkYKuazKVS8jGdOitmT60ZKiACMVeKl+zbPxs6rOv2sujIaEsYjcSzmAVqu0G
	 rRQnlEG3nontuM/idzDtKm62Oz9rYaVUSt+14sTFfKYIX7Iq+DVItrXE/K1Fz3kU1A
	 3REYdqppjmQ5lCgElhkfi+AK9hIc7QfxNZE11+WBHdvOvpub1IwvE5OjhctZGIKcbC
	 dUuREktng8yrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E0F3C02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173797835363.14651.3177203659508021108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 377b75027efac3113470cd4284a57c9c4218fa7a93280c5ccb69cdd9ba0fcdc6
Date: Mon, 27 Jan 2025 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737978353
