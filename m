Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242871C4A17
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752214194; cv=none; b=W07nKfRYAAsPaPZgM73eDW6sJ/eEUUSWfY3np87DcdxMSjMU5AF6qr18JN34sVCU60qAy3SnUr3Eru8w8PiySx3Dj0eesO0aYmlpKPIqDC0+z6AIJWJy46NlPayub9V+ZBmLYpJImPkXFI9CcYvXdhlbczWCaFAxQbJ5J2E2IVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752214194; c=relaxed/simple;
	bh=fcTzantpspihimb3hUzRCB/urH9hTyN+DGWWi/1JyPE=;
	h=To:Subject:From:Message-Id:Date; b=hCZ6JLuetlzUbN5MkOKrDiyOcFSw9AsUE6puTI70dtqv+ZofMynHD8cDwUU+lgAeuPiq/yAthQa6EbUeEhnSsrZJjR5E/tnfYm5I9zYN7GyasdxLbgufmgUJ46MX+wxofuwgkQWWNwJKiUYIkfOff7KkVDItrQP+Uax7fVcCu44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QdWjWwVg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QdWjWwVg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6EFC4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752214193;
	bh=fcTzantpspihimb3hUzRCB/urH9hTyN+DGWWi/1JyPE=;
	h=To:Subject:From:Date:From;
	b=QdWjWwVgfkLUVez3owaGUEBpmCX9XkyW+QLqHh4MbopOhFFziN29wqdnWIxlQcwAx
	 QuOKX4htkzNpVkE5ZdXv4YzsQUvB8Pbo+XA7k4GsQWIN4aVNg6A6t47WoWxf5x/W5O
	 3/hrgwMDJxSZBcOax1mdwTvsFi+TUYVFnyaOBJqgeBA0912bKPSl/Ite5uuXaBb4v1
	 BtDwtxWuyU5txKPYbGNfk0iHwb5869Vvd87+yeoMA7JZcn6LvS9aEDbv5zndqG/fsd
	 eH6UKlFtq19WIOwC4zNztHax55OEPuyBRFDAnq+HDFKjTz1EbGJsygar7DuvelNxxp
	 7mkPVP/7oxG4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E80C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175221419359.32574.1039215836719172769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b22bd9685af1a4cc82a34e316c0cab5ff4e832370bbbf198959f715756a73802
Date: Fri, 11 Jul 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752214193
