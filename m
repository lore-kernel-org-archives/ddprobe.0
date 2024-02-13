Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1436B249F3
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707823697; cv=none; b=ZN4X2eq1dxkW2lIuyE6YchWVYT7ug9U64FDh91VUrxcctQeCPezS1JuQe+y/miuNEq69HTNzr9AdbWCJ1UnVbFemaVa7wVVljrBTs984JseB4+GscT+bOrXx26TynlQC1J6g28K/bfuFWEVTNc6LJSb2KLgS2ETpQy8imvTjXBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707823697; c=relaxed/simple;
	bh=p8+0svm5xHJVlpfpy/NK91XcvYq92my9cqFPshTuGhk=;
	h=To:Subject:From:Message-Id:Date; b=UX0r85kerKd/NqJCP832oJyaSMTeO5ND2oFaIbnHPGh91eVL7KK6uikx7RJkUd82H5yR+sJuMgErYMsuiPSsqGi/BDiY7iyl1VGLK/ivtCaOAFlrmhi5arkfzrmNO/bH+UG/v71RQQDlBk9QrcoSYy8mNLtAHdgeklTH5siHkAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mc9muPhH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mc9muPhH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BF4AC433F1
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707823696;
	bh=p8+0svm5xHJVlpfpy/NK91XcvYq92my9cqFPshTuGhk=;
	h=To:Subject:From:Date:From;
	b=Mc9muPhHChMBIbuyyJ72dwJEP9AWvj93CvG9JLFH61kgQek35NeDuVzTnDqGQel7Q
	 TDGViK0SWWOA8QbQK9M5Li/A+nD42NmmmAUrsq9GRSbv3vNjnBN9sSIEKpyOAi9ZNA
	 TgF8tV3uBT7+WzRnHs3D6rMe9d6JvzqzAm+1IGEvOafufw5xZtzoFQPaWZWDoCfOuV
	 x/FoM4F7jKqEQgCTI3mDxW3RdjBZW48vtnxEPcuA1jA5h0tGTuwgDdZLmUcUkaxXfu
	 BPRZOOETiaWt7IqUNNR5LlPYbyRYXyV3Kv5P0+sqpE7tmPgHdBElOV5jnJDgYpVUXj
	 aHj46G+4ZNiEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D022C4829A
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170782369637.29177.16652194209675323903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90ab6e9334ac9c433db9f264d0d9a2f0fdd60c97abd4252903ca2811ee87ab4a
Date: Tue, 13 Feb 2024 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707823696
