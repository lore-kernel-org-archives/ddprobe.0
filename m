Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8142B9A4
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770807294; cv=none; b=TLSAIqVocMYt9+Y93CItIOwpFfixQLE0M9+H/XGHJx8oSWuzPsm9hXLEcU1MJvUpEi9fG74NxdGzb9HIGU2poWkbpZQxZ/IwxPg13BqNMrmsbdkBh6KxSc44anxQm097jzwsSF8EKb9Ca1Hg3hhPr40cXj14sk6dzKtk2ID+iOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770807294; c=relaxed/simple;
	bh=Lv2lcxZjYez/W3PcGgPeETiIvR77PcPSHEGtbs2iL4M=;
	h=To:Subject:From:Message-Id:Date; b=ITMUvcWNFfkvdm9NFxeJronoWrxcH4eBmcHgjE9ZHIvCYfAQmrkKrtw1Gj1yfdjOz4SZpLFlSSNLxYbibfdMK8x08dxcQwugyydUxL4TOrFaY/M931xu1RPmNCFD3dx6CVuG6lQDWhy0h+Rp4tn7Q1E5CoKu+GAnovXG/CJe3uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZf4XPKs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZf4XPKs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB962C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770807293;
	bh=Lv2lcxZjYez/W3PcGgPeETiIvR77PcPSHEGtbs2iL4M=;
	h=To:Subject:From:Date:From;
	b=XZf4XPKsvtVPMlfF8NKoYSz8+EwBjiWZ7sG4bEBC5by7HZDQE/VDnb665d8PdnDob
	 gkUqRK4HXi1cv9Ux+fBijTKzELzzCS1QVTWsdRMkW78azLbQ5PLIny7rxLS5yXZGlU
	 FlnKfbc6WbbaWibjaBdQf/xtKz1avkfRdS1ftbIkOcsIqLKBWn9OCqpYNjkzefWyph
	 iYm8h2To4dtolPSMCWnVlTCJXnRBUBxEJ0bj4jptaEakuYV4hdKBhxHaiJBRboZBcq
	 el5WsYqlVyuXVVwHGCBZPNDEEQgKQpqu1PythcPGs1YUVDoq1kv4edwXRze7du/twQ
	 lGNYWyZIOECNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9637DE9E2E2
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177080729360.14875.1068610949582909060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4adf689e1cc9cd450cee5bbcfa51cb2f621147e7e24154a9842dcbb17931256f
Date: Wed, 11 Feb 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770807293
