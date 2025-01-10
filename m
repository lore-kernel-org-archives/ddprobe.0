Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E52620A5C1
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736500554; cv=none; b=kqVM+I5n536J3oddsrjMr8zSMqK9+UuWNtyefnxS0snwU1LDWRLakk0tC/LVtW41WwmFCnxmzaJz8bsa4lQXM10rOi0/M2Rfla85LMwDpBx7LrlVZt+4+WOHCvR+NYRMoLLjYx0bBwP+gZqW9fHgiC0NUtS+0QFdTg6k/n0iLqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736500554; c=relaxed/simple;
	bh=QHr5t6JBTcK7uiGBctguqd+rrxfXtACmVYQZGcKj68I=;
	h=To:Subject:From:Message-Id:Date; b=ajujR5mKrvaEy6mFlUQi0/3/6+Z6MA6JtkPT/7acZ8gSaecs2Fj65El/1lRr/4rclyW8P+oltYzFmYPs/pUHjWsCRLcFVGkBI8YTymjbRCeRsXATUQx/GJDzG+Enr25B23xbBPEOiryAlD1Q4NHfGhLdysZc+zypW1PZ7Pd6FUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dRUoISas; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dRUoISas"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF55C4CEDF
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736500553;
	bh=QHr5t6JBTcK7uiGBctguqd+rrxfXtACmVYQZGcKj68I=;
	h=To:Subject:From:Date:From;
	b=dRUoISasXVKI9+skkZIx+AitiaMe4e44QRS8tGFpVfAxLwZlLyTyybscZr/mb1Zpn
	 hlgVMnN4z8hlleedUu8YYI+BfSO3zWANJF4NIv2VskqWAUR5s7/yqQeZ2WvaMkqobf
	 4w8m/P6U4ZcDFVkKFPQrSSQlHQLA2+7p0cp1iXWxyVFbI7e32KMfGU1glJfdFWIWBy
	 jznxIZW+0I0Vy7K3ksm/2OVlK7T0G3lYVLLPX42WEsTsaAP7Bg97V12GNxU9BYLe3g
	 PftRkY+n/QghIQUrgMGq2lhLosfuXqp+kZmWt6VgNyYCxEnWAIEKNtBSWLL4dOPXJb
	 D8JpCVhpDwZ/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A39E7719C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173650055360.22606.16875724662123027459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a5df22781959538666a3bfd19a949808efc3e3254fc97b77a7e0943e67c6174
Date: Fri, 10 Jan 2025 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736500553
