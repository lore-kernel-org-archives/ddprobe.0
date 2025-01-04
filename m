Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B1815624B
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735973754; cv=none; b=mcibTkE1MegYYoICD2wTfSnvWu6rKjNBw2Ei10JqxlhALABgt67Xr4CF6PMVbOYt6f2RgTj5Ct/H3a7L8NlkAV+gEziUJdLJzJAo0RJTJkjub/YuhRG+vm21pV/HhZulIhNxQ9dpBs2jvMhh8v5hqB473e+kNvtYl9ZVuCXRYxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735973754; c=relaxed/simple;
	bh=IyjohvHDZFCEjBAMKgPIr692nAzrF3fd4LYQM0Uf5qM=;
	h=To:Subject:From:Message-Id:Date; b=bIwKPUhM7uxPIs4fgVxsllt+EQVPgK/0cTIhmqj7GVW2yhlmm/OC88Kf6Hco5Vv99XN3I+oXnV06LZenPqQgvO/P9XMKr00uh+KEliRepDL7oudv9qGXDBFVPdMg+rYDa7pApOffzCliRfOXQuKAFu+Es4F/Rl8vmyU4lSHmitw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iUgnQQzp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iUgnQQzp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA4DC4CED2
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735973753;
	bh=IyjohvHDZFCEjBAMKgPIr692nAzrF3fd4LYQM0Uf5qM=;
	h=To:Subject:From:Date:From;
	b=iUgnQQzpTocpCNe7ee8RdsReGkGfCs4ZJhYfVst/MqZ8uUseUlSwT6fA7Zit8nedv
	 L36JshElvtuNqXv5TjgTjDS9TJrYs2MO3pNR3IQ/cQc0LrdAcbTvf7uJBto2ZNHs17
	 likkxf82FVk/GJvXcMUkEQt4oTp1W58m+FtYQullb1pdxDsQyBozuFLv8tVCzvIx8H
	 pWFQvKllJIvqSEOBRmblNvlfZY7jLc4PtjPq5+s+IgJZ7JHT/OVGFbSHheiBnfR62d
	 RlzLL7EoYipWIm4ZR53uk09bJ/HyaWofroGWGnGpxdOGsLoCJpwhAasTVf0QvGg4jn
	 tOZmIS/sakAIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EC64E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173597375360.23263.8029876696064770294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f45313abf88ed917bc0cda88a4100768dbee4f1efea25900e6b9d3d17664536a
Date: Sat, 04 Jan 2025 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735973753
