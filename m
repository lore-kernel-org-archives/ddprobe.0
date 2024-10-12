Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC6126AD0
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728752154; cv=none; b=MMymOUv7I5bMxIW5Z+7ZztsuezgLjrQOR8aKBLAHEmlTh61GOwgzHFfrBLewAIIthP9pN+P28ocw0Ru0xJzWx7GvHqOqng/YqZm+gQWp9iNTqdf9DV0ICjvZkOrehGW0Yqmdg4u2/MCsnFG5LYsm9aRoDSKFfyxb8as7zhIfEYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728752154; c=relaxed/simple;
	bh=l9XXL/bxtAmPthZanyHd9/498xmzdrNGqeBx64lqO1Q=;
	h=To:Subject:From:Message-Id:Date; b=c1b5gzsv1/1zZgqePFsbf8T0FukYmD9zsTuNeaTn+q8fu47+zX3ahhOwJ9nNGgAQDKFyxQTGrGuBrMzhdN3LUWzysZ1aeU7kDaSkMr2GVSfByPw6a8gseJ6X0AozurhJ8s1xUAUShqfHEK+WLV89Y8N6TpqaNuuML3SnpCjfPwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U00/awru; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U00/awru"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE06C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728752153;
	bh=l9XXL/bxtAmPthZanyHd9/498xmzdrNGqeBx64lqO1Q=;
	h=To:Subject:From:Date:From;
	b=U00/awrujFlE5v2R9q2vxPk5au+lEc7GKUZKxh0BuCgTXCmEfKPHEz4KOlbznBCwB
	 7vm3e6WywqVImQZX3RQsPk15FF6T8Pg56zLFhFclpQVdaVEkDa8L8te3jsPkOYuFAI
	 4advfKuU6KdOPoGaKTmNlIxMI6dc6CAHiz7KdaNTTPxM0smAAz78BtnAxuIOmj7Kgy
	 v0ADwdUOyRVciUbWM1XaoxmGpJpFjSEVeLudQ6evSV+sA1Z2t1aRehjYYRtY9B1SQX
	 Vds03rOjR5a07galfEZjJplcLwh3+SDBUJAzcEOiKqv5IvjtyvsN6QtFXD7/jKTSMP
	 zOLGcIpMmq1Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99552CF256E
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172875215359.26994.9439154397674060459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75180e060835f6ace551aa3783dda2f296c603649e8f2a51e1c308b8fee4052a
Date: Sat, 12 Oct 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728752153
