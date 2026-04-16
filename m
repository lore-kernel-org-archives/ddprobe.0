Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C57E25A357
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 11:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776340054; cv=none; b=DrNwl89xfyWfNg8yRXPqzVd9icoxnFfA8pSEhHNzutMyOO83iM+vpYhCYMZwcf2p6lJq4jLNlsDHPVopjr2c2F8Uq3wVtpt6l4VlCYUMh+TSHOJMxfK/S9lpvHVFGjA+bSUp5WtisNgFFpqJShH6W+67BoitOkcgaiAUCYruCWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776340054; c=relaxed/simple;
	bh=xcXdaKEopOQut9RiXIipsEORILVWnN7/DVqsFndcR50=;
	h=To:Subject:From:Message-Id:Date; b=c/lB2fVXmZJkbN/RmtjvKUSGOdHSohA6QPnsvmsgF/UYhD1XmqiYik4t1tkRRrRvI6GITau1/n4245XG9LBvmO17rHC0ZeDPtZNhTOTTuF0k846neTFJ56fVJ/sx0k6twWVix4RUitRX027fIlvtZMGR0CvRf4BaEvXvcymb6yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GS/cbBm8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GS/cbBm8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F4BC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 11:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776340053;
	bh=xcXdaKEopOQut9RiXIipsEORILVWnN7/DVqsFndcR50=;
	h=To:Subject:From:Date:From;
	b=GS/cbBm8nc2jeEP/OEdKbBIEZGfUjLiNsf7uLrwCvuyfcucM2CqYb5vo3ezVXZViP
	 j+fMkIOC/Xx+vUwPDB4Mv0DZOCw7sMfSvFLb3wSvsdG8lGUV0uDCmJWblLIv3Inmbe
	 Nnq3AWlpgmAwFjqnTVaJOUCqNVe65QqxtDHICoK7uvc1HuHQoJqxs31+gItLHTpolO
	 0pgydcp0AtADlWmoZAbj88us5YMF6hnHw1nb+N2vJTllyxFXeS1lW4sjYU+Xu+NXrh
	 HyEQvZm6T2JuDwVQpqQScU9gt0TOLjTNWJTz3fB49xwGfjToJm57idgI+iIPXsBCRk
	 ZggE4p3oMUFJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FA4F8A160
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 11:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177634005368.30936.2037361035370159457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32eedd3db80ea8e4451eebfa94f3f3c1287b6a4143c6db9b288088c9ac7dfe71
Date: Thu, 16 Apr 2026 11:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776340053
