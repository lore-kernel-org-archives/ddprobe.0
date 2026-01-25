Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3840257C9F
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769325234; cv=none; b=hQeXfPemcFZ/3K2odl66kPI9iPb2HV3RAHldDz1OOC9ZBnE5DQvYiX8SXK2C/CRpWCSJ91Zi7SgBcyVIXVs/UcE7t58L94T/20XnqRANTSbZGTqpo4s3fS4q+wgpFJrBNO5b+u6ClUbDUduq2js4Lm+Z0C5qD34ZW9qRSgb62qY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769325234; c=relaxed/simple;
	bh=K9MyLMfgT7apc2BezsGlSnjO9gDrpte3QhyQ6exzRh4=;
	h=To:Subject:From:Message-Id:Date; b=a8FdllJx+dG3cPfjcaJ0kHVsx+4Wot5dttKc406S6bHn17A1xAV2JYbstHOwdFMyKGK8iLn2oSfV6xfCOTWeI4aEq6ZdvMsU80u2WJULe3xokpsXTTIVdZHCGnwotONR4SLIuQb6rXRucBUN5cqwzs/u59mfqvLnNyZ4TNI+aoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HJAlAn/f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HJAlAn/f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B65C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769325233;
	bh=K9MyLMfgT7apc2BezsGlSnjO9gDrpte3QhyQ6exzRh4=;
	h=To:Subject:From:Date:From;
	b=HJAlAn/fKix4dgZtb3V0vGWjb+ldHTpU5UdSmIDeTvM/uJp9QIXUZuYZWq7prxEzd
	 5877rjRglB4sJY9rW2HRfOAO2YnuMj++MRYIMQjwevw9vh2xhy/JJFH4PaxA+blvlK
	 ellQucGjjU9M0ibpaI1QcWHq5jCYD8Yc/v095TkHNaT6lNXxB6EbbJeuXcY9ULe8Q3
	 8BcvIn2Rjo/9NzqWoakQLqxuQJQKL4RKHeHAd5nVTJpUdwlUPXzFF1MVGu9fGK7iiR
	 4l6F/vZgxqeOI6QQhPKN1nk9i/rNb8nLuoJnsj5oWuJVIeWUess3oSXwb9FhEFiN4j
	 e30b6LpHz6tcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952B3E63C82
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176932523357.403.6276946656249431953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cb592053b7fca93271b2a6bee3eeeab54e4c6b5ceae41858e4304b290b8c380
Date: Sun, 25 Jan 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769325233
