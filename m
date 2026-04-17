Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2567330BB8D
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 05:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776404254; cv=none; b=MDaYA5WCWwNvXHoei38C3bp0EMquNn2oSh6U7xC5SxQY0fEFOTDkBf18BIdgKLUhJIa7cHJrKaP3UfK+xQZ/yxmJqwTCL/udSyXd/5YFP3ucDXngEuCy2XsJ/Kk3LsRi4gXlbJQA33C8phgw6+6PR5jN45jttH7eGZaaelUBYOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776404254; c=relaxed/simple;
	bh=Qjt2nwHGiiirtdXqCLkH6iJNU4N/OYVLKN2g2c+0L7I=;
	h=To:Subject:From:Message-Id:Date; b=k7m/2n8yfSRE0l9rudphitNOESiayWmUqj5Lr4pXdOsT+l0OBM6Kza9NSKmUlnRbh9XFKrYWvP1bv90+qSo35KUL1qHlnrGspDlejZzqPLD1o69kT5loZD/cN2ERJ1RVV8Qhtul8rrqXwn67T+SfK8AIRJt81hI7Qv4HO4YiT7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BziSfnpg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BziSfnpg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA615C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 05:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776404253;
	bh=Qjt2nwHGiiirtdXqCLkH6iJNU4N/OYVLKN2g2c+0L7I=;
	h=To:Subject:From:Date:From;
	b=BziSfnpgMlEneEjecn8XVkIHz4oHtoQx6jl0QYGOyEudLMs9aTQEUgCHXjVMUe3eM
	 MqTu5hkZF8N7RmAsUAmKS5vVhYluOPjGzBxiis57LIZXctiBL4EZjx0KPYo78abvfA
	 4Lxn0iZ9KDIOWqICtIZfGGx1UCEq52i+96qzyGxi9AaZopjkhEnWlB7y489xvAMW/8
	 5nFk9x5Jo+tI/wQdhS5rs/W9uugqayy9zBAZZdAiFsud7IUNn+QlNHJDqJJI+jjVtD
	 BtZjTZV5dzdSjMGonc9H+Rj3yHkXlBdsjBwm/P339Ert31LTye3D6HILctOZfdCgI+
	 hBJYZv9TjSm0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E36F8E4A7
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 05:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177640425368.1181.9332092360093091468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1d388a2f87e8247a3f0babec1eaf92b999a4a22f52d16812b5564e697e1646e
Date: Fri, 17 Apr 2026 05:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776404253
