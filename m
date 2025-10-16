Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F972E11C6
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760615994; cv=none; b=CC1GS+oF0K+fuQqiv8tkKvSEwjyAUi5m/pa7SMDWcGkus2nrtWLVk6Q3EnmsqRfqfYyVvDhxIX8tLvKf9A0w6/Q8KJl2Y8jUtnFvKqJv+3knCK/IlCDoqJfkxuYAWtBFtiF/7czkiJ8qFIVm8z/8bvAADflK74h0qbXNZtpT//E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760615994; c=relaxed/simple;
	bh=ly7QqVE7Fd3gnSVJtf+v5H40xKza2nbR6oRSMTBp8pM=;
	h=To:Subject:From:Message-Id:Date; b=bmnzu3IklxKnHAHV4LssoLrVBORfVbFTu1P5ZOZZqrMu+2McB88S/Du8Ff5JytMTGU9irFNrUe1GW1EkLsdrvWv7oEjG1dZUl1xRQjsYE4ou0y3z3PKp4BY86LEoBk05izO0PFl1PG2cMjy4rhcTHoG/FubqgSjQmdIs+BP5Rrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DzFqyxKd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DzFqyxKd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1160C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760615993;
	bh=ly7QqVE7Fd3gnSVJtf+v5H40xKza2nbR6oRSMTBp8pM=;
	h=To:Subject:From:Date:From;
	b=DzFqyxKde+wD3JgDrSsxvbbkYkBPDD9UOIh6lkElTqZfBWx87oEYOYKtsCNVyo0dp
	 zgW+DdOrOv0KNjLeov++vKQuwDYMSoMPK5L6ZWjp8VQ1tXtFgNcQgTB8ZLDc4fbIZb
	 /tamoEYk+6PAL0r4kgVuctsPl1fCj/KO4fMBV7hUq4vE7pM5MlyleMGWVI2fOAStTG
	 OCdNRO57oaDlQ1fVve3kiJfvKq/JO11sQe9Ipx5dR+m6GgltJUzP0TAXyIX/z+9dhi
	 /fNJ4OMm1ttRHLvGvUL+khq+RSH6j9wYYnorL1NFoAI45sDBiDoxklOtu+i8PK6pgM
	 wLF1iBCEUVyMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DCCCCD194
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176061599358.26161.10846013092787933955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89e7050304d56262d3d93d9d5d9d4f388d7f0089b77b8d2418859a99e1bede79
Date: Thu, 16 Oct 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760615993
