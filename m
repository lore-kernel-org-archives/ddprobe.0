Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A2D11755F
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 12:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709381897; cv=none; b=DOt07U/PQLABqJ3uHStihICPm2XoIByj59I+ycsCNv9pIXEmFYq8O3nDcuGrM9hMxLZoVj18Nq/Rdt8ZDHi/jIcwPhktyu9tjOm/oN+GxQKhpSIC5W4R/P+eZfX27I1xtiprzblSYjCQkrM2ZCJygBBxK176nNDxTk5VgmHJ7lM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709381897; c=relaxed/simple;
	bh=m2pDGm30vZdua0LqCfXhHu04EcfleIkViQ0l4S6u0WI=;
	h=To:Subject:From:Message-Id:Date; b=IClBsIK0QpYcielbnNNq3z8jG02sZHTtME73UlxiWherQazvqWdrQrDsS9YHhZ76835v4u51gBo741CyiE57QaOEyXPuxWeP99n/pbqeqk7c5ZytpAH1FxEm4QNZ3IYc/wCTt46lrswRRW0ZeOtVks0ccczwyZ1W+by1iDvA+DY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jFdQ0kkr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jFdQ0kkr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78FA6C433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709381896;
	bh=m2pDGm30vZdua0LqCfXhHu04EcfleIkViQ0l4S6u0WI=;
	h=To:Subject:From:Date:From;
	b=jFdQ0kkrkNTkwO6yaPL/FiMdcly7aXbvEF7bV/0XR1gkLzNUJLADsiz6wVoM1aCX6
	 AY3VyOZjpuZU9LyB3j1fwkGFCbgnFDtaAV3iuRIVpwWAtwg/xZlUweYHbgMBUSIqkz
	 3QD69bkAkzxYoLCILR97bDZi5L26WiRHXxe+6UgM8rpsE5piwloX2naT8nEvMBEbWa
	 v4044jR7R2JNJovpW5sR8U3VXAwi7NUW7IhPDCp/iUgPruMSbT+RwA48Nm7FndrOxm
	 pyVUSKdyVn/L1hA+2QWqdVDxew6K3Up5cqZbKJCIMtRa2yjE3ygSvZbb1LUKfbPiE5
	 NmPLGq3dupfjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DBE1C54798
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 12:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170938189637.13627.12736826907627008728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 171b5850b639ea384432268ceb07987e42c68f7b66a791ed80b817087dee41d8
Date: Sat, 02 Mar 2024 12:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709381896
