Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30FFA824BD
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759045194; cv=none; b=b93GLgye+dpMppGW2JgXwf6NCHf3CgoqWc+XsGasV2cQI81uA1zKfLojKaRb7l1PWlbcjLaIYAFtqWV0mQhHjukWtjPj9kBkbvqFN8qoLr1v6anCoEwZ2yyGs5nbw2ZO+EAotElsB81PzD1cAK1iK4/IFTs1ZlzVtejvVamew18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759045194; c=relaxed/simple;
	bh=0WPUKgNZ8v3US5lZrQcJ0BiXfZV2hguEmAbgympK71o=;
	h=To:Subject:From:Message-Id:Date; b=Jx4qRXsmJ6nibtxj2tLOw6W9H64o9Ic6cXDt7Eou5OBTX9sJIURBElptUMv4dW0e69vIlPWcncmhC7H8nNuwZn4u28Q7QkBjAgcfiHqOg7gu2mEH09SkLkzSRIkY2Oz43OdV5KDHcZQ02v4jg9g7b7L9Qaica1WfSHKdWXlIBQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C6iZ+JA8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C6iZ+JA8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD638C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759045193;
	bh=0WPUKgNZ8v3US5lZrQcJ0BiXfZV2hguEmAbgympK71o=;
	h=To:Subject:From:Date:From;
	b=C6iZ+JA8imE5XaU2qBBYOSP03tmPsfzYX/pFFubJUwS/xKE0E7rFhZPC9aA6TmKDt
	 kVZfi8N5y6is6eT0yE2MuKHr83z94/dbta4hplv8nLiNvDNe05dIoD++UAYq9Bzm9n
	 5PqxcZnxSZNMHL6f6v36i2Li+zAqEr3awkfSJCoGd/uEeXiJbhsZeDZd7Powe8lN/O
	 EFby6vmXSxk3Q6bh+076emLipe+0KRzKMNkgMy/LavnKLlPoVz+b3F/vN/+ETJRI9A
	 pIBOtwTZ2jwLdmMbUywy/d8tdcuA9mpTJLduT3c2QUeSb8xIHuj6KSLcvHUjcTzkAs
	 KLIQrYIIviWng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F57CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175904519359.24274.6545022650633313515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40684557b4f27971c3ee5639bfd8941a49e0a4ac52ce5ddbfe39fc8de7319e63
Date: Sun, 28 Sep 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759045193
