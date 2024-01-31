Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED867664CE
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 09:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706692097; cv=none; b=UWz2ptUemknxK1qFQMeQyxQ95swD7qoOVM34jm6QsMM6wPvH5glYUsgjgDPzyKX6Wo2ks5ufisBMx/oNQZCLjquovjdeMdrR7/Ni2FGKnzhliodglc0FEDi9nogD6G/c7FM9Soj6ZtkFFM+MMiB/0VBnSpHgUzm+qq2Zu+aEY3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706692097; c=relaxed/simple;
	bh=wtVHOs4mH9jKbk7CDJT3FUQN9YICzTJrEUfnhsHUrSk=;
	h=To:Subject:From:Message-Id:Date; b=ngGPeyu4mZJ6kXlusNxX7UhNnZjWADnRzFNFHejlc64fBfwOTKFfA7VkLb5xPl2ZeWX4lD4nqoQo8znzXz2xTjtN74kUfGv34IEUneCzl4u8K0RTELgNyQCVAEK2MRxt/0t+czOmM/Lvw3iCIaVwHuoHI7/g0Xocyjg+9blkjcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c5zx4EIt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c5zx4EIt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B4C9C433F1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 09:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706692096;
	bh=wtVHOs4mH9jKbk7CDJT3FUQN9YICzTJrEUfnhsHUrSk=;
	h=To:Subject:From:Date:From;
	b=c5zx4EIttop9kMH52KZLTpAFQvsGydr/JtesbtIsFqerZohpE3CGev5OXhYi3eeF0
	 P1FRY1dyaJvid2PvPUJ/z4BSVtGqgOjwphFqXOOvIT8hwLsmYfiYQOQT5+ZzWisTvB
	 U9J/RB+crfKuqWoBoMhOBFO1jZIgAc/5ss9/vwIeZ8U5DGWdnzxJS7VkV/la8Kf6KX
	 9r5qoGzQu7RRO1aHuRpg+hZnJG+uz1H1/t44TtNRvF3UfvhpUo2yUdZ8mnqciprRx+
	 i4mM954RTF6EqFalJRywIFpE2bsRqoZ9mv9WB74ebhT0SlW1V6EfpnKoJUhUVP08t+
	 afSmRC+o+8BeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63BFFC47258
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 09:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170669209638.32609.12054324541149588700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f80c496a4738fb08e39b98de028d57935fe0eba325609840081166c313fb864
Date: Wed, 31 Jan 2024 09:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706692096
