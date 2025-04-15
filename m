Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519F2EEA9
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744681194; cv=none; b=Fw4ksw7Vut+LRBqMmoCANmprC3lHuDnHdC4v9wPz6pwSBbdKLDkirnaONDmk10M16tGKBapA4W84iS+l/A7juKsXaFm53Ff1G00Oti2XJO/C6iOU4jDB4Y9g9/t7JXT5goDyS0Q1XbgZ/z1xFIlpDKjYtYQVGWYUVg7hWtaGRa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744681194; c=relaxed/simple;
	bh=j7bQOkpR2wI3AXK/AKyr9GVzznt47JSRRcaGLj5fT5w=;
	h=To:Subject:From:Message-Id:Date; b=ZDPrVMKAHFvkson14+O6UZsU/FgFI2fyw5R54QlLihdreT2Jorf+hwyzzYp1O108FsZh5GvxdlOyNYEPu0dA+Koj4pV5VJHTbixhldZj+L8dbyl372FIiA5kcNFfep+/v0RPbD2mkYw4QAXdOfTa9NjTaBFe2GgHPJyZQqw/jKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CvQBE9bz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CvQBE9bz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B85D6C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744681193;
	bh=j7bQOkpR2wI3AXK/AKyr9GVzznt47JSRRcaGLj5fT5w=;
	h=To:Subject:From:Date:From;
	b=CvQBE9bzP84h/3KxL2deG+5faOVcYjfodZbdNIJSk5/HxEcE0AaUrOiUb9n3m0rSM
	 cFjz+/v9UYerm/ZChD7vpO9lqy6o1XojgvsOJHWlwhXE6xOHmJGuL7P2EVsjF+/YqC
	 E6KQwXcHCJMxBiE4zvt1UqPreViIlYKHoa40RV5q9uYhd6Wcy2zQuwAlLmsUy+rfDC
	 xUuDxcCYE0Sx01GoUi8suEpKZdBHh5sAOdxrcm+kYU3ZjqxuS5Hv30fruoaN66O4jE
	 lnget3zU42/Oi7bquz8DlHovn9/BcO67TQNZLSkl2pYnACDykL+Dxv0RKmfm3cJGvu
	 p9daHFkSTdY4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E90AC369B2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174468119360.24079.17805067455017980137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eda36ae1eec186913b0f36a326c780818812c1c3446a16b76476487a0f970393
Date: Tue, 15 Apr 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744681193
