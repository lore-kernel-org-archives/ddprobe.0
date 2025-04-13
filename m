Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B6C6AD51
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744535994; cv=none; b=LzJVBLv9unNWWeQcVc/2AocNHzL+vsNRyzRcc/qfFfcIp1aqF6VkTRx+9jP9IhV7jYsv0IZBxMEFHXlK3Pl7goQzgE69s4pRlQsnMk/r/1CGLUDMqK7IGu5VQStp6ZKEeTsTf3cRUXd47vmxDjqvmuvpw1mBHo4UefLWhCIOaf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744535994; c=relaxed/simple;
	bh=jb9gOpTjaN5hWqY8j+u+znd5lrNHnhvHIG7D5TTRSx4=;
	h=To:Subject:From:Message-Id:Date; b=QguI8IJ+L6w9/tk+l6usYFxHYzGtyDTkdMizsJntSjU1NbZ80FKnxZbCyJSK7lHW9Z+GyxdYrHSMp0XAdpCl1XswiL/x89DtDBeET0yzvYvmfqiLembGHvWhpJa+Dr5GBkqGy0et+50ywdbighTcTVEpvBBn1UjNn/lBzGKuN6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ipuklknV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ipuklknV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B83F9C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744535993;
	bh=jb9gOpTjaN5hWqY8j+u+znd5lrNHnhvHIG7D5TTRSx4=;
	h=To:Subject:From:Date:From;
	b=ipuklknVc0uSM6nuQF+0mFaZey8HghsnpwmVshD5PDbo76OJM93J6xaNQ1M6gG/5E
	 34OgQ0jGlpxBG40WfaLDapbqFORelvNXXW8B7/KDwiOFGOeZN+D06yA90VrAibK5RL
	 r3wGHsigyIVBBOpOt7nSXD/zPL08YhW1IbSdHf7egJ/6hyCNA7Nhwa3clJpGw23IPQ
	 hN49OlV4vMyPeVXLxZXhzNWVAiDvHvexpfLfo+cBDMWzv5MQfALcyyauf9RGJW7F8p
	 e9VFZM5bSnAa6NpTm0xnPeU3FEHc/vm3/B1HHm6+HRCfGe0fEBNb6YV7W/AlCGnWJ6
	 8ECuYNAQl5O8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF9FC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174453599359.16320.3987359352844045314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f58969d5853ae72ca115e567ab867e24259a82767223398626d589eeba14038
Date: Sun, 13 Apr 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744535993
