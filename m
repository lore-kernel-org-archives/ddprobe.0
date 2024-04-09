Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E758F1581F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 20:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712693297; cv=none; b=G4hwzyAOuK0B8snnrwZc7MLqQoe8unoEE8CuXLcPDDyLIw2ChwHCdOOfO58MM3ENKBxIIjTsX9aBygU7EBQDGl0nr8Wp59vg+8F69WgC2NN3i2yU8g7oKYWr07CORMiJJaxsQCkOC2tHPRAQEE17eu5i0x7hOZcDBBTF+hAt3pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712693297; c=relaxed/simple;
	bh=8vDAwEj/5nxC8WkVBSHd865AhWZ5CU7UNMrc9MP8MBk=;
	h=To:Subject:From:Message-Id:Date; b=O52MyLfKZoR1mR3CoTrDQ8ztSG0yirN4gGbHipymu2P+rvgbLSi/QpV126cx/1nU6zTO+cRb8uUVuh5PBM6Sy2YooyFVOXgZQMXvUVCuSkYgjCYxWVDRn2qGIoe0X2MpcOSNt4XqmexCMny6VistYyFdsBdHqVpxzAPfiXNyUag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gb/WjVhJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gb/WjVhJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EDE2C433C7
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 20:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712693296;
	bh=8vDAwEj/5nxC8WkVBSHd865AhWZ5CU7UNMrc9MP8MBk=;
	h=To:Subject:From:Date:From;
	b=Gb/WjVhJrkUnGD0eRawhIogWq5tSX0MIg+8NzivcC6FCtv9JgrCHuWd9ZGzGtgXke
	 WsbMpotUBDV8tQfx3wG6eMiz+N64r9Sqe2EF7Go+s9TyEDQS4/xVeuZ7erl8/f16pV
	 vnAELSMk2AYc+LgC86zjOVj9J3bK1y0MQu6lxO660/WB9yy0u1Zv/AhBD5pIV0TbVj
	 vDlwWLxDKp4rfFIjfDyFd+dvmVtRqH4XR/Fn+JdilMu8vDRMZhJz0HZdwNIR+ganHR
	 FG/o4KUdn06ZfHkUzg1lXkbuyLayqmIQlVawYVoTCoUEsh5stVkkrO85UQLO9PshU+
	 ifIn4PF2/LXSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65C1FC67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 20:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171269329640.11944.12863212621962609680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bf5e34c4d6e8eef6d09a53807b43288d3c23b6140fd62e1786051deda11b438
Date: Tue, 09 Apr 2024 20:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712693296
