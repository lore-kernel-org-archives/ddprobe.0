Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2752921D594
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744793394; cv=none; b=Yco/sBMZ2fy1Ad242rbQOHWfOHhDd/vGTpFuopNR3dimGh1rRn7A2bnFobwz6EQUUWR0qyVRJN+yAlYvoFMD0BBbjwkk20G5FlXo0UUE2o4FF9YFIoMhdkxKCUHfKwFH6f9Sju4eSR71UzJdZojynJn7IXKanrtVnQM0OTJGyGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744793394; c=relaxed/simple;
	bh=lU2s9n49L8VjeaOhFeepcWIXP4Ovl3zPG2k8Lo8eK0A=;
	h=To:Subject:From:Message-Id:Date; b=NJWutLNbYo12y84UcQoBaab1qnLhz7xbUm9Efu2eOcX2HZv8XKbsy08S8G0r7/t8ghqVcZ+0eLDGSHt/a5Fvu7n4MkcyXeDt+w5Esj2I6erL05EFt+0oLvZ/mr5A8E+fZStISV4nVWS3c09zP03vxT06zBdVxvvTJXuDXAf05DQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUdmGgyF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUdmGgyF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C856C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744793393;
	bh=lU2s9n49L8VjeaOhFeepcWIXP4Ovl3zPG2k8Lo8eK0A=;
	h=To:Subject:From:Date:From;
	b=QUdmGgyFd0BJKWerBe5dNdOzX7Mn+KgphVseXvh/JaszaKZuHHU6LQn912lwD54IS
	 q2N79qL3KdFZ92XPk2NI0JIC/V6CLvaxOp8L4NvDEEoREm0rdpYFU+1wKFnMQCW3r7
	 ENS6o42U372uIMwnbEU7MCfDV8N3PYEbkB5ZEsski7io/7UIxg4qujg70FGwyMQIp7
	 i3rK3mJv0CyF87opAGWsn5Ajv1r0+VSWgis+Xfd6ZDSERLyz+uTenSQX9sSI/9jA/V
	 OL80QEDB2jlflwu9hAI9qbIdP0im/wNggtujWog2dDRADFWPZI4qbjYfXYEnA+Dv2b
	 O8FpxYp7yZc9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B77C369B1
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174479339358.12743.11815194247047529488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e90882a0572c7a06efc6d56241f44553a2c7d1bd2d8ac60beb273171a65678a9
Date: Wed, 16 Apr 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744793393
