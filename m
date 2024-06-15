Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56DBD2940D
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 23:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718494103; cv=none; b=dnnM56fwK9X8BBwe5cWAc7BSEyZAldys/Fozi+YhsRoipzJa+hvhaX8304QEQAg25cY6TA+AfXgAL4tDTumaiN1INWALNz1lPdyTQHLKETwFloUrLvY0xOfoM/M7HaFu1D91860ZgGlNsiMRGTxZTccY9my6T8ihfk1OllO23c4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718494103; c=relaxed/simple;
	bh=coRSDANvkR+jzBpc+/b324T5hgzG0lOGO6wpuFlZ56s=;
	h=To:Subject:From:Message-Id:Date; b=paFdUpttqceYBsee2SZAIWz2ACEeAhF7iaI1r8S0eDINRlcg1gtmJR6RjPemNOctBb3fSJlYKk0bpmZGTISJQW/LNUFZFxpKfCWaXp1fkn9nNrHpygviBWdzuYhW5VM/lpEs0J8ruZJspHZVsDUtJMQzB9OECzfFWjgRy/JPhqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DTAtBPJu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DTAtBPJu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6EBAC116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 23:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718494102;
	bh=coRSDANvkR+jzBpc+/b324T5hgzG0lOGO6wpuFlZ56s=;
	h=To:Subject:From:Date:From;
	b=DTAtBPJu5Fqm6XEoe9pqCNv1oHPM4mKPvADvRXtK8KnfJ4rsGwvZdi/jhbspF2KWj
	 aVbPjNX1UvHjKlROq0T9GpPdajorWYFpGxjH7E2OaF9th0tn5NzumEjmjOpM4q4g0q
	 THRL0vUE0eS6CdCWEmXbyK+1fbbQzQfYPu+L9HLWhSWeBkAWhmPLt875rqQXbSuRyi
	 Z/RnL7ht0yp9aqSOX/UPbBqAPCfiY6N8YuqhjgAa/LwqhHIa9U4h5BYDlzXq3H2jhK
	 o/HcJ5BC+Lu/cdW9LnChmTejCzW5N1ZEbukrqyrMCAYNKleFueqIfHU7t1wJtPqUb+
	 briWfYSNRO//g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C151EC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 23:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171849410278.1403.17189593430998690221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e2a2fc6944fcabb9f170fd4ba9b83d152cee3106c8122fc30bb863cc716058b
Date: Sat, 15 Jun 2024 23:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718494102
