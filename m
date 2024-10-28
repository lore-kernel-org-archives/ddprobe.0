Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B4A374FF
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730082354; cv=none; b=QWsfNcXlntSlqBRBt3YNu4kvOFfLe8G2OjZ1OF19nvhBFW5NTYrtkDy8nB85ULll4rPyh3TgKFhe8dHpz6rmls+dHZKl60lC08qWk5Llc4ytecBpjcHxBeCTcJXi53R/DpijRRy3b6574tDkepqwy67b04YwNc8yoqztj3ndQco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730082354; c=relaxed/simple;
	bh=zApdbyfJ+dFLSZlvlkJLDTTauEKmPSfXNYR5pc9vfAY=;
	h=To:Subject:From:Message-Id:Date; b=lk1Cd3bm3JXJFzDH5oZwb8lxlLMPK/1ocZfdxSxocnPID4G1l9M5801iD/Ea7PT4dO2v2O5RVl9itO5UaqGI6xE/XuAaF3KNiE4/fR7jtcOFCnpSfTieWKzOSnTmS/kKmQvQndTF8jiW2TDayQTsiFphcxFVaD1Uc+G3btZ+sdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfE1FXXu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfE1FXXu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDDBDC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730082353;
	bh=zApdbyfJ+dFLSZlvlkJLDTTauEKmPSfXNYR5pc9vfAY=;
	h=To:Subject:From:Date:From;
	b=dfE1FXXuR0XxJRcNw1bFomxJc4nZj+fJZnkKNGxEkKpm6zQ0Stvex4y1Z0yTGVPJ6
	 rpemXgNtNZlyrm7tHv0PY8Bacg7mOB09euFl5WfcdUcoJATkEsPtiYDaydubKWLDrQ
	 PLRO2qlRU/2729Qk/qDK3oxKMTxRg0qT/KN+OeoNX45a7yS9yAwvGaXdk1+ZCv3N+L
	 m29RoeT88CuFLeLI9wkrAq+10oNjX2EXgzcuxwKj1AaZQkORIzcVdwq9nTo6lng9ws
	 +sPk4BuI69MFE1Cbm+9NHtiC8B4IzF8gvohFc5W7VpEHIp/8+ZK6Zlk8gh8+EN1wXA
	 8U1ed0jPWVKYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A70C5D13590
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173008235364.6309.15658566494943328424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6a9eb66b8f637b0a6ac64f6f3cfda220cf31acf616af8ce4b29e7c8a3a34cd5
Date: Mon, 28 Oct 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730082353
