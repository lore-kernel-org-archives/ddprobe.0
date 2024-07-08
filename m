Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5865EA29
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 22:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720476383; cv=none; b=s5x0tc9eL7E/p16t6dpFbwutHrCahUMvnq88ANP/eFLKXDMC6xw5GqU/uGRIaHgZx5Swrp5H/99ZzRtqSR6MxNTwnSXeq+45nkv1TNvhsTVugLLuI9gkErkv38dAQ4tiInjQNa5E40OVRK1iGcBVS3XFQ0TYiXeA9S03jDG3wMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720476383; c=relaxed/simple;
	bh=dti05pI7/eA37YpV0LNQze15hcUKqWkvCXM8DEXXulU=;
	h=To:Subject:From:Message-Id:Date; b=bk+UFdQ8hRoEqYcISUE2c0W3LqYpPDDYuOAKDSBSHCUd/gyq7JcIqrtSfLsg2OMFS+SSiRrdKaw94zsIkf5d2EULfMxA+QyFzo7LxUmGCXzAUlK9Gykkp+r8E40cQu8Kg2Hp42UPRjbqpS+I6X0bmFFhgWrD6qo8gvTfR1EnN/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=msQmeL0X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="msQmeL0X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC9A2C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 22:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720476382;
	bh=dti05pI7/eA37YpV0LNQze15hcUKqWkvCXM8DEXXulU=;
	h=To:Subject:From:Date:From;
	b=msQmeL0XUAYA0RFQSi9qhsNRdTr4lweJnRWazYOJGBsiFzW4ptz4KpenvHFWQcCAw
	 jlDyNjrUzmhTPXAxTKArUOAbB+5yMWmSfzGBoV2Av57037pq/5eH1I9yb2RX5PCc5C
	 XPVDKXVZYnGKC7yqX34J7WRw+0Wi1N3SdaHrLuizYQFLJoimOMmJD5smtHe2CSjkp2
	 mzqnwwsezyhud1/0NzpusHI0vyiuqKZDH+CyvKhHxXNAs2/Rj8PtBr6aYnOrWPp9N0
	 Vq8WbnGt/7mDlKnUVN/2vhmfBCxUzrnN5lSO+QR2X8Fr+7l/WIjDcx8DdzEJqFKRJu
	 YisNpP8bsosrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C391BC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 22:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172047638277.5151.9596776660952499496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e01dbb87da02fc8c118e1d55d407d0fe4ccd7c8d523da49896061eaf020a93a
Date: Mon, 08 Jul 2024 22:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720476382
