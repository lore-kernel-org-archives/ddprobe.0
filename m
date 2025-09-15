Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE23136E3F
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757919594; cv=none; b=tdtYNdf2Iwlv6JmtVqfC9jEeCzCNghRB8dIh77DElfOr9/d+twfa1TTEFfy+DGVzSNH82a0PxtnOyfkV8qBUok9EI+AekIXng+ms/e0ln1Z8xuArXq0xs5VSkPM765AzqQR1IvsoGTHqNNpOoQbBP/9Nd7Jfd7CJqDXw9a2R4Do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757919594; c=relaxed/simple;
	bh=sjfhHbniiTFKlGJO/10tKOH/eGD4MrNHfjgLzuALnzM=;
	h=To:Subject:From:Message-Id:Date; b=rqV7/HPmIVTj+jw0J80NGiG5fcrlVGEvc0gns7j6I9Y1jlbqq8fofGMydv6ihsAD4SKm6RMQB8AtV9MU2/a0PInpjVwi15nsigXkTPXsyz+wwbFM7G6c5iPs47z8Tp+wfB/g2003cmuKpvVNtaeC7xwnQDLimudbMIJzzGIJIxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TqGhI+qk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TqGhI+qk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F821C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757919593;
	bh=sjfhHbniiTFKlGJO/10tKOH/eGD4MrNHfjgLzuALnzM=;
	h=To:Subject:From:Date:From;
	b=TqGhI+qk80EjaTYyN3ccRcP7YfHFNYANHPJtrynoDLDkfrqG8ehuKdXab+ZKIJX1x
	 G1vDGjXk9zdFcu2bPbsLOaw8vNPRz1aSu7OeDrMUWZOu0U+ew+2XmUa5JkAwf71Dgz
	 3IK0Sqym//LE5rvSVRCkIKFVfbZUogvU1pzAFmR104EQ2sdTynfXxIVBZaZ5Umdb46
	 SBIqL6Awh1t/8RzK89O948lMFBPen7s0+0NmVCWVdeVxkC19c9Eyo4WWp/uHT9Ajpf
	 xoWBJyxZfMrsDMa8vGOv2GrL2UH6hHKCF2ghQyFUtr7zY8p+kGmROFhF1eOHak+n/4
	 CAZCK6vnkXe6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FD8CAC58E
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175791959358.13681.17788465662977693311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7b6638de55c3d75fc610a1a72ae353d4ece6a6f643d1a08a6c39b60d710e340
Date: Mon, 15 Sep 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757919593
