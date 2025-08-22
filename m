Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351D67262F
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755842994; cv=none; b=WDr/UkORIeEq2H7d7BXbsvHO4YuYjdehTX73wszOUgf0SkKSAUrmp85TMC3RSTupyDoJm53UEwh2dMY3b7RVj7Yjy+8vMLhKb2xOe56/3pRIb3PBh/yrE2tHbKvtoye5DaJoBPC7JpShysQiSUBQomFx05lF/1GPbyGEJa7Fdl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755842994; c=relaxed/simple;
	bh=0v9cd6n/39ocW8UempY629w1J/uvjQ2OxrltnDVKczQ=;
	h=To:Subject:From:Message-Id:Date; b=oJA1ap5zIHWXVyA01F2zY0FanLVt2cF7zBA6pNleou8tycMphWBYKRJDArFuwjiGrAXeXYIaDCF4Dsr9Kua2xNevbyilNSKSBG/3ZrKe36PaEXruZ1UPxzJU1S79z1PwgGkCEGizWnzHHn9q64A9liT+kuXTqC+Kw0niyhK7JeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOzaj/uW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOzaj/uW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE44C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755842993;
	bh=0v9cd6n/39ocW8UempY629w1J/uvjQ2OxrltnDVKczQ=;
	h=To:Subject:From:Date:From;
	b=LOzaj/uWhc4Ggu2hjH78NQ2j9etl1jccHAMunjubxOuJ22BBYi99wMAkG3BHtKb4I
	 yzsUGI9AW6bwNVfDWO4sVMZpemxyHTH31QvNAq6vr9qBPnSinA4otRyBLAxQkluiWd
	 uqT1wgkwrltrGjyjCSxIwodObWp3tp6YqdTELGk4o/BGzzgUD16zVi9bdcp65sto6H
	 LqDTFIXaVwHjFesTLXXrxAxUEEyYAdt+xXAJOrYbwExDC21jqjSv+5BVclmodIqJTH
	 iQOoUcS6ciu9yNXWPsmDrbhoWDppLnWopmf6ch74W1OcAf8N0fqfuzf9+R1+4FNOqH
	 s7fA/2+r+17DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0DFCA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175584299357.16131.13558792861891960398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3c31e4d40e9ecf5f50f75cc0b6ef29ed8036b984159377364af0157acd5d81b
Date: Fri, 22 Aug 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755842993
