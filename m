Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF81196450
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 10:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721125523; cv=none; b=CPeDxYbse6fctXgiHaVT1AtBa3G+SoTQ9Bv7c+bYyYTmrnviSHGhKrOGxB/imIXKMB9DTcEIK36GgxpnN4tM+B0wx33xMu908cLHgMeBwekjtU4kQvYC0u6wcfWq86SnjDrL8PHJvQZ7bRNH3UMrIfQiwTBYoh3vRZPyWUt6H+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721125523; c=relaxed/simple;
	bh=wpq/uYE9iFUQCX+vMvUcqp2/ivrw43IoRLABmgFXIqU=;
	h=To:Subject:From:Message-Id:Date; b=ntvUgKS3wXgGEswzHWDYkAqOs6nK1y8n3lPzyLABniEdNixFHF/6QI/lXAZablSuL4DAOPXdCGV8KETe8xB7zXYe7ajJZWMZBJxjF7HJvJNhCk+eEPXqyBimws1kuUtQHkf+ec4LiSlxWphJW9BwT5wlpg+hkmzOWik3BuGmv1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k52RkvZ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k52RkvZ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA797C116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 10:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721125522;
	bh=wpq/uYE9iFUQCX+vMvUcqp2/ivrw43IoRLABmgFXIqU=;
	h=To:Subject:From:Date:From;
	b=k52RkvZ2czRxreNV8R6S8XJhpd0raJfTDOtDuALiVdPJshXl7oI/1G9rwma594pKJ
	 /CraKJ0dRtD5y8RxrPRxsA1Tc/Cy/O2411IZvU5t9VQBeA7iD6RQ35w2k/iPT18HRD
	 WRgXvXkXx6bca+64QJVEmmxYRmjviuf2ogqgI5u0hzYJ2OthoZ0kMGVJES4mEqS3Ke
	 xnrcHkJAjMBvSMkmp+fnHa/vHgMRZyVRvIBa52M5gqxfK3XYVmf6YyGYTobTdWUL6h
	 vIR1KYfY1TRkWY8q3Y1jjBXgSoxk7WHMNSfMIDRhV31vfkw2rBVc4jz0VPz+cXb60b
	 dH2SpKddJbsVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6559C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 10:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172112552280.10784.3497362877360631798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 411325b272616be316b8adad13e2088b331201c03f5a2f2dc97295ae1d9435b8
Date: Tue, 16 Jul 2024 10:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721125522
