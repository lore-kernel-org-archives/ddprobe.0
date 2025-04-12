Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4781C2581
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744432794; cv=none; b=kVx/rfdAXT2ggTGX1Gez84zIYaGB6kHK7JF8906nP8frgFR3DqtE9kDxlR5xBjbkpZsf0mkegitHN/CYNXtO0gWJfKAjw3SG+9Ilo5Es+P/PrglE35LEYFErwt5+1PEHFdt+gU2p6ljU+HtSci6wsPlXTKIWx3aJ50nlqGnkiaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744432794; c=relaxed/simple;
	bh=NICl4G7VGnTJW8JVWb0csddvJCDBMsDpLgvW5RJbq9o=;
	h=To:Subject:From:Message-Id:Date; b=JkNe8U8p21aOUeltnvc2ubLHDKbhx6bEHHAVaWQ+e/WTfMUjMxe/vEUHI6sBkDBwoeOOu3vJe94mKOuVzQbQMbBcrSMrsO2YOQgloD5VBMuswJszV8dhwgJu32leghRHGPiaeWvAXUB43yN7Dehu1EUhM/XZ1mm8lCYwwhgN+k4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YWP7RekI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YWP7RekI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD6F3C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744432793;
	bh=NICl4G7VGnTJW8JVWb0csddvJCDBMsDpLgvW5RJbq9o=;
	h=To:Subject:From:Date:From;
	b=YWP7RekItDQN7O0IZTUDAx/OxZUiVxaPX+LI09YuwVUOID0fgd9pC+hk3gVJ+7nUY
	 daIM2nCJEki32I28Uqi7ac1AwJmdZMyPrduT+pdK6ibx2/e5vhnjQtnJMrmaC6T1P+
	 YPXvHjUeNJlg7N1KljOagJQgupKFHsU/BJBzO7VPLdircXrnBmgjFJbXcDuRnNm+Pm
	 VSO3KRwOIKmAbDYy33i/+Xp576gjTAsZK3aiXNL/20BCUzef4ZCjo1SIGVtK/OJjll
	 dfDJWbKCnoEmrIt03lvqZYCZSO20YdVrhOfVfMy7Go1hAKjHmpvskyDaGAFL72zmkL
	 s+6bgcaFRdyLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E1BC369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174443279359.10425.14667742923178991544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 834aa4ecc5db82cfb24a892d2ec16766dbda884a07b60610bce7f340f48c5c64
Date: Sat, 12 Apr 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744432793
