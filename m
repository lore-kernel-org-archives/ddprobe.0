Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 118F41B95B
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751400594; cv=none; b=T/uXbrdHy02P4yl575X9Ll7gSSMUWuivpZdAb/f0BCL6OzPqw/E/As1N2RHg4AX4dBaBMpYHDpnTh15vrVH5khy0w2RIo/0Bgj+OewgTRU9LcpWOIKse3fYVvyl4u6LnMPD2uDEBzcbdvv/elr/YoxHvipOaIdQExcL44507Z5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751400594; c=relaxed/simple;
	bh=WiOwqfKlEDa3d8733AxAZ1nBydF3dbow2tsGnmxBfms=;
	h=To:Subject:From:Message-Id:Date; b=iJaQRENzhoKvvirkSMLOzOJLBuf8dvnPzTvz4yriXx0jQiC5/pM8dERtMD6cd+yWhvzaWlaf0T3wpWaRfyEm6LFgqArjGEMWYe0HhjYUv98GNBrQ6Gii5O6iEkviKH2E9b8G7YiqzZc2MUdHvoGUCMOEXQt+NBE/9Z4Df8CKFco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W3czv1JX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W3czv1JX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFF5C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751400593;
	bh=WiOwqfKlEDa3d8733AxAZ1nBydF3dbow2tsGnmxBfms=;
	h=To:Subject:From:Date:From;
	b=W3czv1JX1h/MUmyiGp9864/jsiVQGHcrAqPtuXQ8uRwsp4qYaNm4JI+cTqDyQStM3
	 wp796oJ2bikrWo2kgR1IwTAmJaAJtzLaXX8528P2Fh+5vZcETXWVU1B0DpO9XreR2Q
	 sn+bBvHepLWIcQVF+xHWMhWCXwIaIlle0Ji8v8NsoI0Fs1IJu1rGfEQONdqeBtoX8i
	 oLP67p9JsxgK9nxfJ01tHYrtbF9HlB6UAXlky5M37TYD6o1cOH27qP5zFUWPTdjdFo
	 j+BWmXxqhWVBYMWZ/y18bJqEkze0LqQXajDrxpcBr3UhgxvnBWs4MrUM/9/pEEK9vm
	 OjM3XdLIWotvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED6EC7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175140059357.3240.10129509068224560707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10d25e49f52b575a72cf0ee2c1d039453a3aeb16cce103b70bc8012e8dc1108d
Date: Tue, 01 Jul 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751400593
