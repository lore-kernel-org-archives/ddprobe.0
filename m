Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F17A30674C
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 15:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778599234; cv=none; b=qZIMgOZrmpP0Ol3GsuQcJwiIPPFXyhSJ8gGGcOyJe34qzAAD9R3IWzYj4qUWoOolPz+jsChICMb6p7sJvOqlOTo0Ad/zhJm2uZybsPhqFAIxBJLTXNwckpyXzeWWcTMvDpXaz3uV7PIlg7rwg8wG4zd9Dq7uJr5u2zpJmCtM+BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778599234; c=relaxed/simple;
	bh=mTeFQ+LVhi0rE8jx3bZD8guez4/BmqicWZiqAM06E3U=;
	h=To:Subject:From:Message-Id:Date; b=uxA2NbuG2INKTMdHTev8I/3XahSNOSRnM5d7j340Drv0IH7NA36Dfa9DmQIvxz2e3VzfhK9bKBjo2pFCLKWIIaySD+R5E8RkXW+21dxzOEyy4rtr/CX8tmlarzJ2F3QOZ40gJPXOYkCGwbDUTw/bQGbg3ovYshqYm351qvs3BqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cl5znIdI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cl5znIdI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8656C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778599233;
	bh=mTeFQ+LVhi0rE8jx3bZD8guez4/BmqicWZiqAM06E3U=;
	h=To:Subject:From:Date:From;
	b=Cl5znIdI36rz+v3x84sJN+1pl7K9w50g5tYkihWluus2yWOD+/7nKuEkC1SruxxOr
	 S8H81zOT5Gb4C0CBXAlznJ5F3EqyXDq3afjwv+ftTDd4+JcLTXkIgVT8NCIVePzonX
	 vWgRRuW7N7b9UDZIMFKqc4aAh/b6+K8SxKr8z+oLy4D54RNAAiK0On6zQV0Ug3ln/L
	 /HGT1KR1Lml6t+kL4dJ5qSiZA/Fm9UN882Qz5XTPuO2bKOOj1hMVZ5WpUSTJgP4HMm
	 rJBMBdDNlESe5PoWuYrrJi3hAj3bl7la/b/n4dbguCDKYC1iXZA+5RA9Skx5Qi6Y3L
	 LQCAq8+f6mFUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6DECD4F24
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177859923368.17820.14048827692487338620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75e7e3cff6a9a59640265f0f637860c24772fdf918e24d2dd8024c703c14aab6
Date: Tue, 12 May 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778599233
