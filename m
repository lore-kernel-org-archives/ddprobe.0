Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64899C8D1
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 03:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719975923; cv=none; b=t/VOok/8BBk53S9LCajiUo6zPg7h3m/KcMBjSJ9pE9uAoFjhtzdc0OgB16/U0F+z1R6ofFyRKHzTM5fUxqhjIINvLmgR19fl85rDuE3GxgYId1FlIJZgA2/1B+NwAO+ZZTuFh1jvCiSYyJCZSIjJfU1abM3gKKc5rgg0dB1nT1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719975923; c=relaxed/simple;
	bh=GZzGr5E8VyJBF23DbOjiwB8NhMueYmaMLy/m7O5bHcc=;
	h=To:Subject:From:Message-Id:Date; b=F1SshRzq+OW+kdqBzG5wx9TLtAYXMZHykBEf5wcfWbp5q0xApRiKH2D/L0Nvk1ANgUJ8ealTAiHSfpSmGjX+CWowUtWq1RqL/uJ8NJMLTfLnyAX6pLiptrAEqFINWvogVxbUpaLyN0AP9F/jvWHqev/YFwI8A7tP5krF0pt7OjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PH/YBZhH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PH/YBZhH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFFD4C4AF0F
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 03:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719975922;
	bh=GZzGr5E8VyJBF23DbOjiwB8NhMueYmaMLy/m7O5bHcc=;
	h=To:Subject:From:Date:From;
	b=PH/YBZhHZDvIgWHD4qY+eN0Lu2IbBZAT8hKE5CMTrM8j8R4ESIDV86C3GXvALV+7c
	 0bqgrrklhdeFlzM5oS+DzFa/M3BqI3eX0ZofvhxxxXp0yOLy2RXGZuVJ7nRHA7tRxO
	 s5qVYFT0x8IkHOIOebWbJcjqwM8SWcPSO4KK3bv8uzMqigAEB0hD/jct8ypRYbNzR/
	 TLLp96jZ51RwUsaJgL8pF5uT6SpVlWK0fJSzvQpZLeqdt9fTLkuaXc7NdKlTa4yUhA
	 AUJONnm8U8/OUQu6yFD4vrGjyHsR9I57kYaUvBleCathKYO4pHioZxUCdcnQz+oyk5
	 q5imrAPdTf1Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9328C30658
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 03:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171997592281.974.8438272507956822723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eaf5d06f1d42910c4d0cfea11df674841c0b93074747fd6c3a5b2e1bc3e88e6
Date: Wed, 03 Jul 2024 03:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719975922
