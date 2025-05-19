Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3672BB67F
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747618794; cv=none; b=CSt+HQTJFEZH1mrbofhxKXELt2ey4vskkeaeiMiwkw1n6E60j/MV5c9fybBaZtNXx1EETsH0cDc2UiApsQhsldLU9xO/syXfty/vlTRhoct6TGCB+b0cEhIEp9S7Ppub+qXLYNjxuPVfqFB+mnqZrK5JEzIuGKJV+V391cUfL7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747618794; c=relaxed/simple;
	bh=o3jHwfbDzeNz80UYM3wtWI2GTj0jxDyH09O+gwLRFDA=;
	h=To:Subject:From:Message-Id:Date; b=dQVIrQXy1XyL2GMvXczYqrX48lW9w2bJhw66EX2b9PG4lvAvN5bvdCqXFd9F3rQ4MztylIdkVCcm92eR9zfPIX3qc3DfLqRWJJ7Jnj4Mq8nftSe7lckoGqrAhNL5T95ogh9jAIeHUqHjohYvkZ9X7V12fv35y+KUlZ4zeuV0Obw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jqSBSDqr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jqSBSDqr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E56C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747618793;
	bh=o3jHwfbDzeNz80UYM3wtWI2GTj0jxDyH09O+gwLRFDA=;
	h=To:Subject:From:Date:From;
	b=jqSBSDqr2WQ+B6vmkg1CBur6MCXOzssPJjdSaR81Q2nxGPw+5Q/fZ2X7scHgNXokl
	 qup94ELUBsMKJxnM85vsOsQaAT3oPx3Lh+XaamqJP6sGXnAYtnW2hsNkFBSVQ54yMe
	 U0wTWWdslSWhcxamyddgYGaqm9eb57ZwW7A1v6iTYoE4vgkyNBAg36EXtoe4xk/Dls
	 f1HJRFAHtUQ3loDaM6V6hXM5905G+SlvYYmJzc7K//PixRG7Ltjt2vZgxMbTKHhkaC
	 CJhETUmrz+LhkU7PLboEjBuwcooMDXaYBQ0TUWacljBGHrgSxrMSDqRKVgNwrRuvyZ
	 3cDd4/FiNX9lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9496EC3ABC9
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174761879357.5785.17174160114438889727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3c6f55bfbb85d78eacba4df22253d1ea08ae409efe8e30f509aba33f98f585f
Date: Mon, 19 May 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747618793
