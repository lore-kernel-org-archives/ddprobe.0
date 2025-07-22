Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E682E8E16
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753195194; cv=none; b=O5sLlgkc22TpMIXcSxrDpuxosyndM/ojd6FMIh6zJdIejLIbM2tlX+KbCL6vvnNNWC7SjpKypIUe3+JQ3AtKLXYEhJOZBcNldYOKVJNk6RLNkm/LjnCfeam6GpkSiXNI4Q1SKKhQ+z73B8BfUH7a+R/uXV8iVUXAL+VpWAJ23qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753195194; c=relaxed/simple;
	bh=2ZEHijr3c4ZgBGuEVcSKIAIFaHpV57FE2tR+dtsQW5M=;
	h=To:Subject:From:Message-Id:Date; b=QfmdtFv69bZ30ye4hb49URDr3Ntd76xmf3EYXjym9x35dXoEi8hnKiiwmus/o3iXvteklswyGHimlEUNqaAXgqiZ+scZDz74GzhxXkJwcdHgl0CCL9S5sRiEMJV98c6yFlw2DxPLwSv4CrJr/mQc9KM+oKoroFtFArjeNEBmcx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XDp841DL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XDp841DL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00A6C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753195193;
	bh=2ZEHijr3c4ZgBGuEVcSKIAIFaHpV57FE2tR+dtsQW5M=;
	h=To:Subject:From:Date:From;
	b=XDp841DLfT8ZAEd5v13rZhdC523LbKcNQYdKl7oKIkHvc7mJx09cRgdYjpGjr8Fjd
	 uBJt8Jbg5qbA18ug+YqxVCfsTn9Z6F84YfskgCaG4bwE/MIySxFsjx3QPX/AHrWhBa
	 qEofj5+Zy9iG2uIDG35jJ5lwdj85Q04DNh+axIKLwIzno0yhthl0oY6CGHjS9d1UPM
	 GLYZvXPW99MlGZgHpTS1Rpp67d4hcebeMx47X2K980p3eY5HHonQbAFfEdYdDF706y
	 U4xl6bd5WEh9LeKzZOtwM6XOb8cuGJwVbmnheIZR1ThTxsMPUGQ0rGnilydE1sxHNu
	 mtcwiIeXMzBlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE15C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175319519358.10024.6575856634211011019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87aa05335d9cfedd74f39060f498074d50c22e81a6865b26682532be926807a0
Date: Tue, 22 Jul 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753195193
