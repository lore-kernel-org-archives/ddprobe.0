Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121832FD7CA
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 12:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764679374; cv=none; b=H1ZVOt+1hwPL/otKY8D49eZKsCQQrasogSuvVfS2LeR8hA3RkQiSflyl0uo29eRuKRsagkEfD4muB+WkxZMzQy5gY2RpUYm7mFxUW6F/r6kOk1sVbjUNWzUanUJMVP0M0JtgNeamSb2TYp9ykoSkBLA5EohJToFFzvwqi4zNcfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764679374; c=relaxed/simple;
	bh=tCLGBLZlAjHbW/gSuB+H5fKw0q1NRDocu18OSHnuQ7g=;
	h=To:Subject:From:Message-Id:Date; b=g2+5gNUvjkbgb2gQU4oTpScgxNWB3WppgVkRjJEcbxsf4v+qt//EHEWg8S9OvUcUu8saUdbOAmMyLAgCWoCtSlo4A2w/Fag5QZ2oVfK57Ka2I6jUzTmk8mjGOG4Qct6aZsc90W15AwgbgO6AXNq3xkz/hFEufw35U4RCqYlJ+9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HbOZaa9h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HbOZaa9h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DFDC16AAE
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 12:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764679373;
	bh=tCLGBLZlAjHbW/gSuB+H5fKw0q1NRDocu18OSHnuQ7g=;
	h=To:Subject:From:Date:From;
	b=HbOZaa9hFd+ExMpax72bOBpJlHmO2vVaqWhcCuGw/Bu1TfQYXejNiet+Pt/IznYGo
	 5EolDlRVn6Z3cgAZh1oku6THhzGPYFf1P8FNQa95F7UbA2t7ltfZOXB6Zu5thWJACE
	 SjsRHSuaSCe/h7vMz5HazTm8dkM2K2lnVQFDu6MRqRzJWzubc7galYpxi0D3RFeTrn
	 d0C0We9GDq9hbytvNQWhZKtVa/xhW0X/gPp6JCbTepjNGnCsJvwF4PdHDB5H6O0sfD
	 SHe5RpVmit3fFIuzdvFyx5XnisQ66Dn+6HzcPBV3JstrrHXSrSqnhs9PJVu4z7Rznu
	 JKFJQAvy+LniA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DBDD116F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 12:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176467937358.13279.12088233026968167978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2efd1a7e6d889d379365df6f78853b800c96fe8d0c9c78d6a5280ffa52ea9f82
Date: Tue, 02 Dec 2025 12:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764679373
