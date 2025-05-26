Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C85320DD4E
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748270394; cv=none; b=H7U+Qk6lyO73GE41ZrCVCVcpow+qNFEI8sGa/k8AW8fjIi0NZe8N/coau2FPKOSStOyyFxwDVXbS++2dvXDXvpzgBCO7HQU3P7q5xNni3uo0d/t04kMY9eXm5VaAJYZa2+CaVWbU39TRpoEnKmTOEEH1pCWFLuz4Do0NBpWTGvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748270394; c=relaxed/simple;
	bh=AWVaebFHQjVmnX3JS2RoWyQN3XH0yt1bUCwifUuhXPk=;
	h=To:Subject:From:Message-Id:Date; b=Ito8eCmNQi813idbpc3f4VrIQUHVyh75QXezNzj519xzS+nIOHxJR30Yl+kd1rO8AGUQL4xEU0e7YJ7rqZuzWL77cU9nlMjNLr36I1EHXFse2rW1w3IZHjvaPYZLrYAWFabIozckAMXdRneYt+Sq77bYrNffNeVSTaBRXnjmO38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MNmuT9Gl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MNmuT9Gl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC86C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748270393;
	bh=AWVaebFHQjVmnX3JS2RoWyQN3XH0yt1bUCwifUuhXPk=;
	h=To:Subject:From:Date:From;
	b=MNmuT9GlGJ1GcBQpMyF7Y0y265ibsZZl1RzN5QsheBEw+OKY++pb289wdMeJrSDkd
	 TZsQhdWHqrGF+Mitae04BI0/YUHg3M0RqHn2RUTNroLXATtszrUsS9EUmDH/hmkXMI
	 gKgX+FB1rckurOm4TlrWmKMpUvthGX9PJvfQuhymaO6c409Y0zMxHcHFjOKIYvn3BQ
	 tvP43DPiiCenaOIWt6upLeypzojQBbLpObA7R5IhJvlXXH0W3xZl7MH6VNkbuf+96u
	 QS7EeSzRVQ6/O18Ss4hDebz8Av4lXdZddGWyP4M951yJV2ZYOl4mxZAsr+UAVFjh1p
	 s1B/zmE01mhQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C01C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174827039359.24832.14701617144499468434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91204a4906985add39e8f0ef59fee675c3d5e63f9da4f9ab6d04fe8b5d23c094
Date: Mon, 26 May 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748270393
