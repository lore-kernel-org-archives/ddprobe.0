Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405F717E
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742737195; cv=none; b=LpEVP7q8XG8xSiCo6mJDFDksDj4vnqiIsf/bHddWGi3frAOy2BwZJK+FapuaMupJXemAXwyjaq2/tKlW+zm98ryws86/u+ru+R8nwzgPVTqNkBlgDVmQiMU+Ry1GgDPXsUF9cIeoP6WieQDlYkr+uRNuxK831HdvXvvfSwFo+Wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742737195; c=relaxed/simple;
	bh=QeKPmRARo+C6b0uYX+I54evEIh1no7Qgz4chqCoamIk=;
	h=To:Subject:From:Message-Id:Date; b=lRx7O4p84dQqU5ZDxe4YPoMJDW5GBfDczk7qzTJZ2naSvVuzIy+lM1gQQXEEzA4L8zzCf26cC93kKNksN6FwkSYjFqr3ohMP6OzcPNdVw7FPqVHvzU2rntT/2OOotpKc2qjOMMMjeCl2CMQNzdfKF2A3Ot+ywu+xwRvGy63TAL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgXurkRp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgXurkRp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5996C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742737193;
	bh=QeKPmRARo+C6b0uYX+I54evEIh1no7Qgz4chqCoamIk=;
	h=To:Subject:From:Date:From;
	b=kgXurkRpBVp/SRTaC1NTpNSldsja8/lTDjkePM7cP5pE69Jv0FuRSw55ckhZpZBUQ
	 2/Zskapl5R9WSZM47tEn8XbNqPqfHJg/yB6O3lCpe0g/3Qjf5yCFbXNEGFBhxRX/tw
	 8Qty8SwHqzpRJbnm0F3UTMF6G6QSRfrdd59N5FkfE7aXVe0v234/asumuxl7qkXNrl
	 b9C/n0IdrCzJEeamVATcsSHsrfK88vNs3q7Fc5lk5Z27k3eXwX4oxlgxpPuU5zIhKR
	 QxKHlsuehBOBosrD98KvwhOZpcmlgLdlVDIl9M27YFpkZ4Rb9hLfTJmlhWIW9wAewB
	 szncEqrGr243w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9494AC28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174273719359.31641.15105153029289827969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1676c8243c15fd123fd0c7a15b70c79510482b7697e7cc144d9dc75bf8516564
Date: Sun, 23 Mar 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742737193
