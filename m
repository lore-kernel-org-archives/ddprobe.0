Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6C962C21FE
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 19:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764961373; cv=none; b=OwtH+44nuWBbUUYH3MFk+HMI05SmNGDOA2X8zQnnOGUa5DyIXduYRsViRqXxlIcV1Z17z9WryaR+MRHi6ZDukDnqz8MWZ+mMs4GfIkL7isVORSOiL1r15JHfFHsm9TWnqSethxNngPJ2FLJ/GZ45MVRyDAHSjuyCHEZlKtnqsaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764961373; c=relaxed/simple;
	bh=opL6yUjv+U33U/z0GcIxGZhDo/l8Qy8+Rlytz36B96g=;
	h=To:Subject:From:Message-Id:Date; b=X1RdZb4AgfCGUPh56jRWhD10V1puiLERHecCnpC5MGHC462RpljwSIjnTg7LTEU9Hq7Qca7CzR3NupDzFraYNxVDu61rMNHDjIPD+rlNZs5Mh4U/Zc79zXjZIfzdaacdXeFeivZVADur+Wq0oOIKpEdCoKsLNxFfF5P2CGw1x3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kyZze9Mi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kyZze9Mi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EA9C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 19:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764961373;
	bh=opL6yUjv+U33U/z0GcIxGZhDo/l8Qy8+Rlytz36B96g=;
	h=To:Subject:From:Date:From;
	b=kyZze9MiUVysYPkJnnZXUg3lJqa8OkTnlIm7Y6Wl2LfBI/8HhZ7WmOlKUeR8sr7ro
	 dYBRGSq6weegwBJrn0j9iJBEXnh5AJoBfeQDivwITS1s4FpzmMfDyzJROrivaWyUiM
	 yV+Lh+eR0CqytdlWHavxRajADfxbdRIiw2XkvueqNa3Mm3VCwDkp0k+9uzKeIK1DpC
	 KDt06sXqABor/N9mrhDJt8zu0dKGX0iL7liTIGuZURzETbhCYWliGMP/3soQmSqxnt
	 AfPdj1LPNjLEZ4iThgPqQ++gW3sx1JVdIAs8+puujbb/aQ1hsjkzQfF7XftFgfx9B9
	 UD8pgveVHmQeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FB9D339B9
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 19:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176496137360.12020.16730069542472883177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bfe9127f1e3900150d49f1a8261b785225e2a3c97f643d0c7ce0a80ebe3f204
Date: Fri, 05 Dec 2025 19:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764961373
