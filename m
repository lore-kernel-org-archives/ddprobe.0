Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FEB63148D9
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788837634; cv=none; b=acz58hhO5g9uOkEtetIh9iIwu6o6RRv8r/rtVCqbmrXKyInisVqBRXdb/jYxP4gr574bu9/+txMrzxjuGkW6w3xZzN9ZtfyWTcFU9rVa4SCmNWZgBrXWOhsaegnazCSLEIUMVjawi+zpfvrMhile5ndfGL4GM/QoqAjr1udQ9MY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788837634; c=relaxed/simple;
	bh=FpIi+/qxNMBCYXd7/rryEsfNEApXGUWrh3EZjsvkTpU=;
	h=To:Subject:From:Message-Id:Date; b=Dpzdrt0rNozhNFEDdgNAmEmCJOKURkaPqOOJZiCYlb3wHv5vqqccMPnnfY+DCTOqNNVNKlnSIH8LzwqWZ5MBLEHHadnIsWttaBJyWTV8Wjd2PHwyynfNIGra46f2PJpYN0HvyCMLeiVhv25RPg0tmJvVH/X7iUEAkq4OLPUWazk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pUNspdro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pUNspdro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCC4FC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788837633;
	bh=FpIi+/qxNMBCYXd7/rryEsfNEApXGUWrh3EZjsvkTpU=;
	h=To:Subject:From:Date:From;
	b=pUNspdroNciPm6kR+GnjBfLmJNGovN8nlePrF3f42KWkNxdDg5ZULlOD849KK6BTY
	 Wtn0vfyb3+7BaqRYR2n/U16tNmFCh//+k3gHnISp7+JNp297gvOzpftw8rP9Gj1eSm
	 FjiQQtNHdnLw8wB39Ccg1FIE3+2EvF2bmuwZzk0/bqyx2NSC0O8LuLmCjjjyez6Ymv
	 06jOPVmimNBADxD+peEqA96qAf9bwQKv5MKOnlitceMIS6+qhcvsIq7ati63vj2o2p
	 CDZLF1wQW37kP4hFwELn45F+W8tob3Sa0NsFjUPecmWTWtKmv3jTQ0lDhmiyay0iy3
	 UMyLigZHO9deQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5E68C79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178883763373.2888.7721687073728020692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4503d0ad4d79edeb28e47cf94a0eb489239b57e8a075608e48a27144f0167d98
Date: Tue, 08 Sep 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788837633
