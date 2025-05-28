Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216DF28C2C9
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748447994; cv=none; b=CchSdfFxX1qfGJqjBtqsgRclEL5g6UZFdOoC859qig+69oE2zFxevgCsSjKHjfSDHW4L8Fm1vpvA2B6L1fKUoOVfzDb3XSsH48X6yw76Q9AzqLRAnYCcUsOL1SeIzTJraI37WjolunFoAQA7nAmrLHFHbTljcK649gVs+Zretvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748447994; c=relaxed/simple;
	bh=bfOaw241D76uAEQkQsD55fDQD0Obsf1PnhC/A647yXU=;
	h=To:Subject:From:Message-Id:Date; b=aw/7k+wPy8ezFj9yIRpaeSRnykmCqK/BoRoPHazpZ4H/evKAYtrqf7cflNUIucHHQXU85QWyZSdt5kHJG/I5FvdenXtyYqh3HuLObW/SmRMfU1IwDKc6105MEJ+YAz8jCeizaqktFlwB2aqZQBg54rVKHGNbNs5j9MHlmymSm/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ji7TxOXy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ji7TxOXy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF35C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748447993;
	bh=bfOaw241D76uAEQkQsD55fDQD0Obsf1PnhC/A647yXU=;
	h=To:Subject:From:Date:From;
	b=Ji7TxOXyrNZw3KpG27tMTUF93LG74/Y+UUlrDbB/Y4Wj/4j1FJR3vpFibYO0ZBUFN
	 MLi1oM4/JtNjNTObtXbExCvt1UmIhyvE+ELB+wQQodR3erriUUKexbbUncpsOwGXML
	 IhSri6f06u/ykS2olq9K8lYwpW6TzGSGlDj4YQHKLSZRUL2WgajlsLxuedwynxKyR/
	 m4B2gSMTPmr6WNmRmchBHwPSCkdAMEnKgWryUTmfoKp76c+qAB1UEc5FRzJM5h/AGP
	 inI3/0Ppe70cncBVc6H5DRxevOBTIxq12v9W4FdKUABkhipEfHbV02SUDwqrZtTZMx
	 TjHAnc59uaGbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECA1C3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174844799357.28799.12327928435688590375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ee53047eabe44ed46a481f8df0d597741c189c836b3ae0fe3d7749e57c7c91b
Date: Wed, 28 May 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748447993
