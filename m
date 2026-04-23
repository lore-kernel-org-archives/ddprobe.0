Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1216F1A3029
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 11:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776944854; cv=none; b=NZ3UD18M1h2kZ+ibG+lmTRo2KwH1gyAp7wgfzeiQtKpNf2INO3UFGiqb8fHtkNQgOGK64H9Sc4q5cMDA8RJHh75XWQCkWuLJh3e75nTD5wnmZxfBJxroHoPWQBc5b6z1GOTVzklQxq3RpwbOShJrJW5D5g4WuMWrUiWCL8TcE2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776944854; c=relaxed/simple;
	bh=Q5uttMbijfcyF3wJHaaqSSuwOiBjwoVA6AnYTRU33S4=;
	h=To:Subject:From:Message-Id:Date; b=EDAeBUh8kPdbMxyDgnY92ntvQ48tycpObOB37eg6inGtIeneBFZJyBcczNCgh/0diwn/mGc7LY/kPdI8P36lCFd8TedBGe8M15v1P9SVzHvA1j8lXO+Q9Br/dtPkVRqne3tiVtYSOlumowla1Q0ReIEXAbosSzcG56ksPJ1LtGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXoY+l78; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXoY+l78"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7905C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 11:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776944853;
	bh=Q5uttMbijfcyF3wJHaaqSSuwOiBjwoVA6AnYTRU33S4=;
	h=To:Subject:From:Date:From;
	b=UXoY+l78d6KoyJOsMijXYLWExHp7bVBrzJDhBHlKcvRJ89GhDA0vULLLS4mPlXdTj
	 YOkG/Vvh7Wq/afhMTatuo78R36OYsuW/LowG6Wyi2O+e6xZfZFAfg2O817i+ev7uv8
	 UqBA4zw0OBtLF64YizU3rUbNBuzo6BwRPr4gV4Qnu7TV54H0qmbeP+0x4DRgeWAdNZ
	 TPYkcXbcTyUTnTMCfNMKHsohaIsfizQekP2bFZeFbPbhfGLz+o1CL/c8gjsB9UJ/X+
	 k+KTLRXtwG7E1FLkHGSi+BtdKgBR3+xYE66O7cecmNqOVS3OAUmcB2waT3PKqIZgCu
	 mmHB7YGq1fngw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1F5F9937C
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 11:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177694485369.25990.18257107970134821684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 909e17fcf773d404b7189d338f00178f469f46a5f46c97fd4757dc2d9f9712b2
Date: Thu, 23 Apr 2026 11:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776944853
