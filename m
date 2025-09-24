Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276832F56
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758685194; cv=none; b=lwAvHchvvrjfSfvl+oTvk4ye9HwfZ1XIuX5KLddlDK6T4B5BhZHVXPhEqQVW+FfwNqsAQuj6VNK6vkvVc3UVEckC9AVf4Giaik4xhVfYmbBGc2G68LZXEVV1npPoN6fpHcK45mz4XzxdVGG/KvSnP6cSHz2h1dGV/tBSJsfEXVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758685194; c=relaxed/simple;
	bh=x3x4d8jxEODyZSNbH8veHKpiETl+SXm9/zeuzoH5z7k=;
	h=To:Subject:From:Message-Id:Date; b=fZI5ctD9JAASZgeFsxXlsMUVxyA0ZZ9xQnzNWKWnfCDcS8wdjYx3Cd8be4tHpWtXZwB0ut73P86G2XNArkZAirSdKUNW9dJpYwkRIzfWREYqbLRKxTl2ZIjYmYZrcS8QgqlYSznwyTszPO9VLxmOVmp3f5YkgnppuHOr713J20Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XA72d+fd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XA72d+fd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DA9C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758685193;
	bh=x3x4d8jxEODyZSNbH8veHKpiETl+SXm9/zeuzoH5z7k=;
	h=To:Subject:From:Date:From;
	b=XA72d+fdf0dzdbrFaCDKibPfAOnGPdOBqx9TtIgmFuU85ST5+stEcc8haobocB054
	 7dHmjrKEsKjUSrX2RcEvgov6PIeufDCp2uzdVHQwURnmOy0s7RCSoFMezUa3XhnuGH
	 DfyQW9aeZI+Hu3FLlqLY1jqOwE5A8BBygn1EvxQcp8hqiEIKyV1WjfrO1MiLUU+sL+
	 dpBeqQlt8IKuBwrBXhaFxqhbEVUBmPBqhcyEmSLo+PTeBxmiRIAoT6wbQsHsgZcWe0
	 K3aeUjWB7cruq57sPqi8OXxawTwh60KF6HYQPveRokKrsLLS251/idecTuuRPiXflJ
	 qO6K1Xqokg1PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CAECAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175868519358.11447.6315939902267928117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df82937d9ca69dbe15180ffb75b51ac39da38ffad632829a50cdbadecb357f58
Date: Wed, 24 Sep 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758685193
