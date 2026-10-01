Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C7430C147
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790861434; cv=none; b=H8xfB310I39c81KGRny7giuFnBIyZYHy5mnuJCTUqJyTn5EGEN2fneb7A4zMlg6LWLPT+0/RigLYaJ668Xlw3R1rbSSQe+5a7VRN4YcSa3aKgfN84e/7ehG4OrkEQVqaGEz72o6xlGpYfqIsfisw8yrobvawwR8ovI3+gRRWfZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790861434; c=relaxed/simple;
	bh=s0sXxcnHoiWkHcE3mRLYmdvDtSK9kZlzlT36fbf9JJA=;
	h=To:Subject:From:Message-Id:Date; b=PTxBoBJ0lyS0pXJpPbqvjqHBfP8XvzaIr+G5zixJJxTbCSvMuYvh0DM701CyUqMGYKZPHwCgTJ2sAVBxivEB+xPaHvagdQC+5FSHVTmNVWKgX4amo2hJA8RVC6XUEoaWBKeucUf/7qRGVnvv1691SSuUT+/AC9lx1zoVP9VBE4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vf7p+M7t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vf7p+M7t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC202C4AF0B
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790861433;
	bh=s0sXxcnHoiWkHcE3mRLYmdvDtSK9kZlzlT36fbf9JJA=;
	h=To:Subject:From:Date:From;
	b=Vf7p+M7t4rIJD1ihaGUvBWy3OGjn+ao69Tlc4ZevcRqnjTNgahY16BraNMSH6n7A/
	 78YbwbqBvFh+oTkD85kh0Y4lsTogON90Oq+HmBhry4CXq0ZqyVqIR8vMzPts0BKtr7
	 JkAb3pyNU30xSfTpjCI1AIkoBUmq4X+2umCRytmN2jWJfQzjMH/ond93ra0wvon4C3
	 R910e9C4/0FCHMkFA6s7X7sj3rpqHPhd46vy6O3nlWlRelQuDpmfYg6BJuR1unuheZ
	 Ol+FTd/Blk9jzTBLljHq8L0nMMPS3pCFveYuzJ5zzoYZjeYgT4TYgDCkvIO5xCEKX+
	 lRtbXCTAO3jCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4E15CA5FCB
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179086143372.24541.2888118183299674645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e491be5e076640c4936645797819e224ec6706e687e65aecde0f25ba9225370a
Date: Thu, 01 Oct 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790861433
