Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55447146A8A
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 10:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720173923; cv=none; b=dLlRWMEp6UH4hI63EeoXK3snN+KyY+fnf+AoNGC4hOTEy/pW6SMF/ASKI1shoDQRlKr/nHP1sDDw5Q42sLQTpXsU57mbieGx/L3zjuMUBdGjDnNhR1dD16Qv2fdN9gEk5RyS8WwAhtVapRUUJAz+7CXjrCcCM3segSFDlPkjh+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720173923; c=relaxed/simple;
	bh=XN6JG2GBym6Uwcnf1bRfZvi0oH5hR2x7mxw3aOB1Bho=;
	h=To:Subject:From:Message-Id:Date; b=ll6ezwBzGBYF1Y5VHixvim5e+uKykaaE5wJkggHq44cLEJvm6jamPnY524JtEY+u8chV7l0SXo9xNyyPbinIaiHe4S1lnqgzY6Y+IYQvKQrPD4lZpHI29enjIUJkjQQRE3ujZVO0PMCrAEU+WhIdAhInbXjVg8k1u+3MCk+/NOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b8xspxVV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b8xspxVV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF632C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 10:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720173922;
	bh=XN6JG2GBym6Uwcnf1bRfZvi0oH5hR2x7mxw3aOB1Bho=;
	h=To:Subject:From:Date:From;
	b=b8xspxVVREDt9gEvcNe5bGmALfTZOwXK6QgJFO0ORUiXOvfB2Y6HpkB3ztFYs7ps2
	 SFEdU4xqvqlctJnZLAl+3ZMLaQyro/DZGwSDi+RFHuz705dfNoe8QzaBG1nAbA3/E9
	 flcfW4Anil4zD+29BRT5me1XNEZMvFh/HDsmwXslucubVKCvgwo90fVi0LhID7Y9yc
	 u0bco7QOnwVlKUHY8PCdxH+rHC9wtYdgUhxjNc88vkJwFtwLbMo899b8qc74G2eOYB
	 Vk9RqrBnX4B8VOcJmBZPd10ZbOn0G82wu8i+Heocxn/UU/4B0ENm+3RDvLhk+EDHhy
	 NPIh6ioGXU4IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8D12C30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 10:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172017392281.11270.14735047753180952194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4acd4e9e87041825866ead0948c7e5400738f6aebfa77e6c8fbf045f7829f446
Date: Fri, 05 Jul 2024 10:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720173922
