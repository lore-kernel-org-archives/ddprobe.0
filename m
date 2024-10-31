Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1159B17B436
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730366154; cv=none; b=Zeej2GDoh2vkVqMRcHrQi3SAclrApPhshL6RIDCfZ82o8m7FWUlsvINS8767Ie9iaz3x8hvWN+ltCQ94tcDTwsEUTndN3s0eAVX+iy2LcXpm7xKFbbTqx0d10v1lMN8ONt9MAOOnXMY6WmIzW6LTuH/SVYU7JGEeF4r/xabC+J8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730366154; c=relaxed/simple;
	bh=PEwQHuNsLelnroUnliKMQzEpL2gfAwot4qOOP6vtMcs=;
	h=To:Subject:From:Message-Id:Date; b=a1GUAoWA1tZcHrwquqjYcnyru7O9zmVn52WpREvU4xsjMM2hgXya7ujX3HIBRMlBzC2FKoGaN96dGj1y3bfH+rw9O3v7Lo57juWKYPoxmZ1uaCYx+HN/dKkHpuXiWf61wwO/iEd1+nKaBZwzNLD19NdWt1s5GUXLdfVagl3fx4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gvU7Lugm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gvU7Lugm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9ADC4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730366153;
	bh=PEwQHuNsLelnroUnliKMQzEpL2gfAwot4qOOP6vtMcs=;
	h=To:Subject:From:Date:From;
	b=gvU7LugmKmnPRDT9J3lOvdULfVVufZbvVaL3itO1fE9ig9q75aPixIfgPfzmn0J9Q
	 pOrMzF3ifNix6Fu4CnVjoDTbH5/d6xYfyVia0jlyxoq6Cjmswk5sjv+BXqgccHabAK
	 g7EBC+MhhyiKNSdNEdalji0+QxtMrNmrtho49Cj8s/nj0KkX7GXP0VZ9yJl3EQdrlM
	 F5X43Z+ZKQtRJXT7FE2njnaLUPvBxLJUgRzVu5yxAamZ2iCu5nCn120OrvscEzdIdT
	 6/5Cfjf1MO0gzUATBF0ESk9PeCTQ9U5D3USbN527xfyQdFt6MO6mwiC7CfJQgQHRfr
	 tfhlojTWO+OvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C64E6895E
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173036615358.20320.4328926519291375389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f90986c5e0b4c2c853c66c544a8330415d999168e1b58ec37623873864b0c0ac
Date: Thu, 31 Oct 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730366153
