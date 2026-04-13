Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128056BFCE
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 13:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776088054; cv=none; b=E8I33+vW9WfSF2nnFI/P3C+P3oOFnsQt5ACSp69sCwtXn1R+BQ6kGC78JunlZHyJKt+X+B2KXgR35IXT3rLS/Degp4eZffLmqF6vjUTeNt9lz0flJCKsGq/6lTYYT76PApG0GtqqOcF7zT/51odioi1Ft+gbRG9a6Gvp7exNgZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776088054; c=relaxed/simple;
	bh=yYa8wRU+ZucjgRHMMvWMR9Xf4FHBjy07SjvtV7Prn5A=;
	h=To:Subject:From:Message-Id:Date; b=sjiclHVGEJC1aBi8AtwFiEgBwnWXOiEMPaWBsTwZttiKG8zF22k0NNCpZidEE7ibt8rOjE10Vjb6wncvn+hEi6386Pc4BSo9A93ONNojHsjdfHJo2MeZGCaVYq4yuI8hy523E30iEF7TZ4AWenhUnoSbwSjJOLhfBWuAmQ1bmzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZfM0yaPY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZfM0yaPY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAD26C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 13:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776088053;
	bh=yYa8wRU+ZucjgRHMMvWMR9Xf4FHBjy07SjvtV7Prn5A=;
	h=To:Subject:From:Date:From;
	b=ZfM0yaPYr9kXzkT2Fxqi+PbUfW+GBVo7FI9/fYxhQa+oplFjYgNqkMnq8mgcK2WFS
	 C+jk/YSyy4uEYgjSn6/mrwcR2z41hSI7Iqt0jFb1BrVrv8Ljb4zPFOLlcy7ncgC5Aq
	 DTLrR7+3E4DVYRnHNPMputyYU91HFX6ZVdcYDZZMJefMTFhsI3UcxJUtm3XRyB0kmi
	 ahohv/4bp+BoC/rDY6bRZ/2xQq0EhjR6Gs2tfCJAomb0T0LF3Ci/Zmk4SIukn3qd7P
	 zL7Tygp7pK2SaS3j6A0st6wMQSgNZqyIHEkdN511Pi9+H33z5KQcxeovW9rR+sebLo
	 K9Y5iopt19WpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA34F34C49
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 13:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177608805369.31679.8926673956406285579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 733a0b27a2661b6bd69eb5d9a5c5520a9033b7339aaa0abba50611f7cb987b16
Date: Mon, 13 Apr 2026 13:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776088053
