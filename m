Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3953F126C02
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 02:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777171654; cv=none; b=arYKe6plFb20LfC08tnYwq6smvpFezlKl57l/t+ww83LzpfmNGG0/tuuHEmDwUXWdDHeTzOPIuek+GLopdgRV/APnouREInY3KRI1/10HHqxKHpmij12w+nQuf0cYFvd/S/CRSTqQ2WrPb3nft/HgDqWUNWxhin0dEaFq+7+JFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777171654; c=relaxed/simple;
	bh=iOlO/GE8D4h5IQTHt5ObQBL4IoZ60WaVv3dk/Q3SUvw=;
	h=To:Subject:From:Message-Id:Date; b=aEeRfRjQ737ep4K8bS3bZ+qZpCJJxuGUW9YDsw8b3rhcpPw70RSUFpnl9FcUSgKb5bpAGchtZwzsA7uQUzcDvtCjVyC+AGpsRpsaRyLa1CLrSJS/AReAbHI85c/TtevWQ43WBfrs7VCHiof7pR4+Mvni6pJ/Lws9CosJmlj5nXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R1mI6/vU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R1mI6/vU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6EF7C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 02:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777171653;
	bh=iOlO/GE8D4h5IQTHt5ObQBL4IoZ60WaVv3dk/Q3SUvw=;
	h=To:Subject:From:Date:From;
	b=R1mI6/vUWYCU1s0OWkKkiGVfWd2CWTDVC7IrUMzrCcCjRLtwGL9p6rZnQ/I6L68gQ
	 q6WtIbSs4imofAqcFjsCjq9ESMm5VwyyCZm2bjw4iLIPIlHkYEqD4vpDx8q8TB/vAM
	 hCYX4XsfvTSfIC25SE7EXYn14hwlM4EEmd9OvnZfyYmoyII9X/z82QpkQxNJmK//90
	 abCzygoS1klh59ABuNEv4rFe60U/+a7oOQbb6GtxWlh/I/6ijiC7VmjwANEzBHaNPx
	 R+xjzJlJpHFo1NhtZ1VWXZztLTAVIUZ9bxsprQdD+XUVI8iIB+dX3cSe31T84Uzbr5
	 UHg58gnlyKs3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF349FF885A
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 02:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177717165368.7585.490453017750515673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3343ca8d0476ced2dbe172f67640c233336bbc498dc2fe3bd7c0fd855a84a7a
Date: Sun, 26 Apr 2026 02:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777171653
