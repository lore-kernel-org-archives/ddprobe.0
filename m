Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8155526AD7
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 04:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718339303; cv=none; b=bZFIL4Rz55BGD6f4EekF4pWSvWnxV/H8Pvruj1avPvbEohMHQ+yiAeE4162WhA+Kxm3v+Sa9LarfAVamvxAoAWbc46eAGwgnXM+7n8e9luiIMqNSxQxZxsPg9rEMwNdTTf2oiuD2b9MoUZ9sxOE2wQ2RYZh7oFfBqqGioIZxuEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718339303; c=relaxed/simple;
	bh=n3LSdZUH5JaRCelUg4Ao/S50TRHAkUfIdxcUqtDXDlo=;
	h=To:Subject:From:Message-Id:Date; b=vBW98MlaDEtwySx8nnGp7M7nbkDoJyAEnRKRfkqX8LfvwX+INrgRsQWwGcLTE4Wzmjs9+lRrgpwzZjt/yOekWz5bM4ImqDdqkg+EuAZg7wfYruqQjJT77Dv73EiNdj8KslnhC2va312MLfWGcYrN4VFQIqm4PpAi7fUk8Bq+X1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+PSABQy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+PSABQy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F23AFC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 04:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718339303;
	bh=n3LSdZUH5JaRCelUg4Ao/S50TRHAkUfIdxcUqtDXDlo=;
	h=To:Subject:From:Date:From;
	b=H+PSABQyLPSXBrPwod/ZkAPIx0VVKjl8/nsRPRIhkitpgCQdfwT0exY/Cv/6TaKwb
	 b13t35rCJyfEQwGZt9J/il36+h8uyd7bj3ez8JKUlohzmP9sqKpcpKZ9moiExx/vwM
	 Feur46JI+7iZ/gjet4K87nvOFwwqflOW3QgGh/mg4tx5HGhRoXp2Rl7O/s52Aa6Fn7
	 BRP3B2ZvvJhDJepZOnSqcSrL7YbWtcZ5Pq6EuUdDdse87aikhJgtRtloQm/EQD5ZC8
	 gZPXC1gCzURrjlPjAAvYCB0vUhDXhsI5i8iS/XEAwE2r758gyun1kAwDQ1BKAMuLQ+
	 Esj7B+3QibGLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D49CAC27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 04:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171833930284.2100.11991026767395460374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44036a1338c640dc40440dc91498078c082715c6e01ea48676368a12b000128f
Date: Fri, 14 Jun 2024 04:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718339302
