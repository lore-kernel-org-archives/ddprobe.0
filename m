Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C76E1C6B2
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 16:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717001663; cv=none; b=S79XPBdt70iyBhpdv7kIFFCv16f0XS36gr3IEhWNtS5BXAls+uTfyWmfFvguihCAUvVthkmsNIIbE8myIHX1U6dmi9sk22v2ptLvXXsGtTxEEhoLP2xG5nHvH99ZfyqpeXSJShfvzbzezUPSeJUpJIEpmI9MQ6zJtB1rgarNiwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717001663; c=relaxed/simple;
	bh=hDl0pKE+FvHEYtCk94fdOeUwRfgxk53ScWipUYf/Xyo=;
	h=To:Subject:From:Message-Id:Date; b=gJHLCy+7yqQa0bN1DpKVmOGGV/IaRlbO76GUiSTzxWi7KwuyIoG/eeBnT7aNfUvTucrokDfI6Wjr308nU72FLBG7+dTyPLFUCDJ0gwUmd/4eCogWBZfBLzp/5h/COZldFaJhCogt3hlLs4YaNUw499waadUfLZSm2m26n7wP47g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nWQOyOTL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nWQOyOTL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAF1FC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 16:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717001663;
	bh=hDl0pKE+FvHEYtCk94fdOeUwRfgxk53ScWipUYf/Xyo=;
	h=To:Subject:From:Date:From;
	b=nWQOyOTLE52xWlLE/36ae84EBgvfeX/IRM+KXI/Po9LzGQbDfbDStHB2CXCWfF/ih
	 f9+awFkjR077pWFhmfu842nr8nI+hX1p4S2fjUT7uR12FJz2CSvbA5IVXqhfW2WxPn
	 vOxf4DXxqup0zmfiIbrCSvABSXnEjeMMrCUofiBZ1gsPajtvUFqYmrMbfjbJ4SfeR8
	 d074oqRuVgHMkdWyq6gQmg/+1AwaJVuhzPxgkArPUNLaKFqKiO0Jb515fmqc7E1Niy
	 w37EqKTaOdRhPLmXhiQ+PDcey0GHjKK3gaia9y+3oYFDjR26+aBSBdyYsnq9WrQcTb
	 Liz3UHml+02Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9A33C27C44
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 16:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171700166281.22474.12106292644420866467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acdfbf85a7760d43516ce18684db6fdf9cbcefe063465f723c466d7e7e43396b
Date: Wed, 29 May 2024 16:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717001662
