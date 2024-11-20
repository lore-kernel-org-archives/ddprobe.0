Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C39442F
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732067754; cv=none; b=YTtD0lEPbGFSjcOdqA3OWjGca9eXUEFlwud/vbd+yes23SoV0ryU5Sc/t5mw+r/prbtAZqlJdhJ+Qewgq3ZoZRQY+0CnVk2+g3A/haXXP2fvS1tLg4uQUsQHborPWOZqqY1fl+8wqV8hydOKya6hhUhaOGt3mLd9e6NwH3VkjxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732067754; c=relaxed/simple;
	bh=Y1mdm6gEmDo1D6k0pHgMMNxvqySyWfXAAdZefJqp05c=;
	h=To:Subject:From:Message-Id:Date; b=fSghGhzwhJgPVCBLvMhaA1Ie/IJat3b+1EVYvQpWFi0MyMVOCAECEGCDtngWttfV1+Uue/KSj+MGRSSafEQry3a6TUkQa0mSnhYO7UMlzgDWJSJKsPAfg8QPZIo9dS4WVFLQ1gPXddbrn5wuXJztc3Donz7nTXhwpfcaHWHec1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kMz1f+OC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kMz1f+OC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31CAC4CECF
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732067753;
	bh=Y1mdm6gEmDo1D6k0pHgMMNxvqySyWfXAAdZefJqp05c=;
	h=To:Subject:From:Date:From;
	b=kMz1f+OCjUWiiujDVak9aB7a/uku/4DWMx9DiVQnSzTzgaJSAAoxsXQuzO5aa+Mtq
	 0TR4BUgbsseEaxlrAmcYVhplQdARzB8b50eWpcVNiGciKAT0foWFyJAU10jSggQAlX
	 pLbaL8l3kNzzyToKdN1TEbwqS4lhi/O4Ue5U7NF0dLZO30oCd07hrUCU3JUeDbX7i5
	 DpS9sT+Pb1pj789hirezsYutPYFIjbnxiYQxUhyP5hpnEgv/DeP2BgLweUrVEluPIq
	 dibKErD8ltBBLCIWyQMNOVLEQ9ImYTpY1MAc0iIcjxcQAeiXzs87QYpGB2ogfIQqnm
	 rb3TVenZFnCYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB4ED44151
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173206775357.23969.7155538600721277551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6efbb0b50d90e6664875132b4eefe3a85935d8e53078cb3aea2eb9656b52c075
Date: Wed, 20 Nov 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732067753
