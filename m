Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67F904437
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 22:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718490503; cv=none; b=tcJV/VOtabmsc5UsHyVd4O8AzjyLiPXXhLg6VmdQl1ZYgTotykGLNSRyTifEVvCtB8EmqcCNDr8SHu3kcRoVhDlLGVl0wMYivAQI2GDRlqkxP2Xq0kBFNzjmm4Cp3ghNnRzRi8otFnn8GwnryN1VKFNAo2W6PpwxZ2VkysiF0qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718490503; c=relaxed/simple;
	bh=vsXWoVEkTdhp5wM1HEeXC6ytt2QgtGDvvkxCtepfUs0=;
	h=To:Subject:From:Message-Id:Date; b=fNNTqUQdMX9cubTrjNRuPyi0BhXgewi2+Ovm+qItdaglVrVin6KZSgdFP/LhYl/3+yBFfQmWkDPWYm8zDBkiHQUKtKqe+vpb6ivF5VRJ7Z2kBgSIgN60KqKrQWnv4V7leD9rXmeVcR1Uz+5K9KRrtVEdaX9c7/WEIye8cT5QsAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yhf1nDHS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yhf1nDHS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAA4BC116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 22:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718490503;
	bh=vsXWoVEkTdhp5wM1HEeXC6ytt2QgtGDvvkxCtepfUs0=;
	h=To:Subject:From:Date:From;
	b=Yhf1nDHSigb677a7WmJf1bKiK5PBTb9JJdTnG7gbW9LlFgT24dPGPu+B2ooeRS8b0
	 8nHfGQniDdTyqwLSnD0AZqUfXZhz9/TgIB4i+SJ6serVZcglD5H7iBLzkvUe+43UC9
	 UTVYI9n4A7nZXQCJ4rWCWhyihMCaEEwY7SWY5d8wlci74SgBpDIBhSwDpWWHNZgMaW
	 Lkpaemyi3CzxCySEpYrEWb7z9XnJSQvuc4R37fk2tOdye4BhONXWfdR7OL8vQvU88O
	 NBUJIb67miwaQEl9JcB+GeccdYlrZbxWrKCEu4AiulKDmwgqMdk+zPKRfdJmk1y/u8
	 39qudXuQL+whw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2554C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 22:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171849050278.30802.10215126768395415336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ba9ae840e74f1af6c84274bf47f7674a7fba92d36896308b32d7e50b512bbf4
Date: Sat, 15 Jun 2024 22:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718490502
