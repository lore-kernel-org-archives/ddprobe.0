Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3716E189906
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751731794; cv=none; b=AwPPMIMOzz8vHQWoEj6abJ8+2W8b8B1jOcLle5/iFYNuywr6kiMvv/qoDoo0BLUQvVaTT6uaGndaiSLjFq8pTyjHoLtxs/a5ZtYElD7Vd45n+ZWJJsEQBQJWkT/Wga/byk5q68hFlmDQkZxXuEcv8PxrIS7voY3l88/01bBmAqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751731794; c=relaxed/simple;
	bh=l4W8zGRhJPxSWzFB/UiVALhgK4FzP2rC8eM2mGC/bwk=;
	h=To:Subject:From:Message-Id:Date; b=GOcB+hbqFnFF/7yasF7aLAZtNgf12GcE+ztWRVQFh+7HlBQrh0gIXqwnVOsqZQ0VJse30aDVIzSgsjcw7e9skGTaAnaVfBz3T975MIAlnIXXLf7G0HH2bTMcWf0oKYU1O+RwjmgPpwG/achJSjG3rKicrSr+48PJBK2XoxpVpyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZU5UQIE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZU5UQIE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E7BC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751731793;
	bh=l4W8zGRhJPxSWzFB/UiVALhgK4FzP2rC8eM2mGC/bwk=;
	h=To:Subject:From:Date:From;
	b=DZU5UQIE249UsXdfXP5vFOX6hkZN73lJnDuq9fiib0YyU82Y6jYzD02P1uwdv7/0K
	 +DGC29IlEeqjZdVaBElH/142E5knT4xTjMxNyiqaMHUoHsQhd7F2YFe9d3aIelgaGj
	 xZ8/gnncEdRziJ1BE4lSwlmzIJhlwQQyth7hvHOUT0+Z8VwAADyeZO4fQCBtUx2ORZ
	 0TMEFRmnktMKG759kZfJDpuFsEDOrNxqsD8IuJT+/oGPwWgpqrPC4Z+oRY63K6C79e
	 EhrpHNURY3AtvXqB1PwbyVnnZNAm0i6V+6k6iDWm1ovbxZaUHRA9N1wZ5kTsRCkVUG
	 1yj8epmVsyi5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912AAC8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175173179357.28298.349327014770222156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d99550d74bdc4b6e787b00d2d5bbc871b49cca7c5654b600cbbb625bb9e0212
Date: Sat, 05 Jul 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751731793
