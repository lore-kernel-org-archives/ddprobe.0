Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3033822FF37
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745566194; cv=none; b=NuKmDwLSWCdg7gVPZJu3BcLnI04giPznc3iiCHOB8sLn4lqOgWCRdLTpsAOoBLwNvz2/YFX5+jQ8X8mwdvY2hc3Onc7EZXSHhSrcXul0cBvg5vKDjATmQb1SWgC39iOWfjjPRHsX8FJNOWh+zMK0l2MLDdQbBl86QNQB2hXdXHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745566194; c=relaxed/simple;
	bh=3+0NUG/xYmgkcAX3cxxdrXNTjHCym5Uq8s42dZbLJO8=;
	h=To:Subject:From:Message-Id:Date; b=DDGnUepbiZ9BeDPErXUulX0/AFcAxeo0JaRwXfdaYw/O1sMJlyt1VqNiB5j3yX/mnBaBB/2281NcL7HWftmnOFJgADa8zjK5nb8A9pKBzg6DeRElP+8uw9KLUKfl8KFwcmNksvrl9oN/GQJyfXI/EJNGvAvPy5Zsi0i+MapChAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s3XfP5qQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s3XfP5qQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C67DC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745566193;
	bh=3+0NUG/xYmgkcAX3cxxdrXNTjHCym5Uq8s42dZbLJO8=;
	h=To:Subject:From:Date:From;
	b=s3XfP5qQcUzgrp3h8h6oMh2BcuCxtTU3qRi4RyIoOZONiH1o4ug1qNdJ9+OP2LNfl
	 Bgb/GeWx/l6SEpa81n9X0qqPP3SlYioy6zCw9K77xgqdqGQUzcueCnS9GTF+Hw013o
	 yc67oZf0gNuffoXYdi/P1jRsNF/oR8Qk8RNC6FleVPHSC7EAZxPyz8i7tTEZ1Vnny+
	 JaINjpOw6XGXOmymcG2U/AQjOAgh1SKas1jbjCXXBCVZxEsdlVhrdgRL8CNg8oMUyk
	 /o79g6YwvQgljEJRngt2iVxY7V9NPmnGNsc9V0yVK0mx4QiisTVRFnn//Qz0dF6+ZE
	 ApnilM2fIOGhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9E9C369D3
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174556619357.16235.1595015048153683253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41f5ca31ff51b406e16b963126b947369992f4d33e821157e6f6fc64b858f592
Date: Fri, 25 Apr 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745566193
