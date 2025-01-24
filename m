Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77B0B23B0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737692754; cv=none; b=OT8Ig5HD6EoMRGRND6anQ6t4Kb5EZaEFf9pM7L2YiDiEW8hyXwxjlhHFFRE1+m6qAgmd2jBkeEzszYtXd3d5VMxU1K5BL/x9fIhkuwSGSm/82vGGSgIMB5gRtDCZR+7ghFTmzt6bqCAO8rIMiMxL8LLzcZWefKXe7v5uDDHWyU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737692754; c=relaxed/simple;
	bh=0jFYqdFsWFV6ZbNFE5Kc5CU+RVdz7B44+bgH4W17qfQ=;
	h=To:Subject:From:Message-Id:Date; b=aEOwuLYHhiTJqwzaG3MCacsqEaJnOmrOCajRsgAybylSCY9DSENpSXJkODIc9fcc1JnX0McOkehGM0ESik62pNXxVO9AaFW+0jFlW31oIydnSqY9PPnIEiGeC7cx6dxB2Tx2i1jLLQ1bYKeBMEr5qieh4Uwx1Oho4hP8GyJ/Uqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bCVmuYSv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bCVmuYSv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C783BC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737692753;
	bh=0jFYqdFsWFV6ZbNFE5Kc5CU+RVdz7B44+bgH4W17qfQ=;
	h=To:Subject:From:Date:From;
	b=bCVmuYSv2nbc0Fy5rHIFcddezqUPE5MOqVl3FYgQdaC1FGvYCarDAqFOM6GFSbohj
	 p9XAIw7mpSZ7nY0EDhF5iggWknUrvfx7guzWsKEmIShTdu5i5KMHgvXzxUVZvpOopX
	 vNveXuqvY/IhU4+Kj4s0HaR4F42DvnUDmQBFn83eypwpjqU0zcP1dSBheBtKP6kq2Z
	 tOQcfSUqO/A1zU9pAYfyJH1IqDD+pEEtIHM1rMVAcnouuKuzo5wHR7UNUFzGZ6GGai
	 X5LIcmC+Nc0tmd5djiCidyZE9YAiaNZh5LJB+R7Uxd+cdjNnVxFMvh1XFYMAf6LHqX
	 qY95udfCWoehg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB79EC02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173769275365.32316.9564704161455617912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efebbc6d60cd652aae8a414852a3562c6d52b209f7ae49ca7fa8590f6a74abf4
Date: Fri, 24 Jan 2025 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737692753
