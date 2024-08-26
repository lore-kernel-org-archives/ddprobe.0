Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFD913D8A2
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724676354; cv=none; b=LpoX3i79wwajboTMIRGyQ6EZqsObcvFFuxh65kbkWPZ8nfXq1mGyQBAHlJpSjLhBks86JNxOQDfxLD3k2vCegQILbCX3PmXjSo04IlhIRSNIVXvAhsDIpdCtyMd55fqJX5aBNodbaxwRNrYnRanFZbQrq/jHJ8VYbHA5pxXgXMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724676354; c=relaxed/simple;
	bh=qDYoKXOCXN2U29ycy72HMruBvTPaHAkS+l0fyFhd8yo=;
	h=To:Subject:From:Message-Id:Date; b=jCXsG/A8t5celYhJsymtPCvBns6W8i4zVemnynIHUqepcD1pKSCR8+R0NtHH04saj2mq6R9l2OnwOOa8gGluea8ZYkFd//OohM86gOPClh1gwHVcTksBr2udk9i9w8zDOidKehflQFK0RN8blB/EdLw4qlQw1EnyA84tc0QUNlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YV0jpdct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YV0jpdct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC048C58197
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724676353;
	bh=qDYoKXOCXN2U29ycy72HMruBvTPaHAkS+l0fyFhd8yo=;
	h=To:Subject:From:Date:From;
	b=YV0jpdctVrLb+DYwCe9w3gaCLzzvcqzMBmjt4uoCWtsXx7D/gAPtFqhk2Vksftfd3
	 /i5oW756yOEvQzOc5c6mm6dIC7QGXMoqLAmiuuXNi+UAyaQ2JME944U/VNTpTPRnyL
	 VZhCLyUIVoTg3rDaeYUclbJn+SKRTMApduHy3+W/C/ExQHyKjYUIgopdOQOT0QWVTD
	 x+tXPfksrA3TPQkrjmxEAsdq9546ngf3y85dCjlN6P1F+bJN9BP/GxZHKK7BdBMyJX
	 06TGDSOrNtEelqpu9L5KxpFVq+BLfLD/8K8WGBZ+oG+XyR0hHkFXU/wiCxU1szV5QC
	 2n97oWF1x57XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92952C5321D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172467635359.23714.4674922762445517146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 043ceccb0d94465e526007d2432a22d5770faf052e12c9c463a09d9fddfc18a8
Date: Mon, 26 Aug 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724676353
