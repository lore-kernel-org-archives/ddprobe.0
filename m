Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4809B8BF8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 19:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740857334; cv=none; b=hsRZr0usr5YJbTkWCDX/g1InV1tf+60TyC2hZuXiFZij/KduHOgLJtCIA37fY6qATFYXBEVs2eZwHwRyXid6eLCKS20NPUPXfs6Bi0a2cV6N9i5dtYQSRTYSLRrHOaeEB8JcKeg0n0jUmwGtTp4kFp25Bq4aIbnJMBzc6SW4XVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740857334; c=relaxed/simple;
	bh=fbl4a3hOL6kRVUOsM0uRWEUNc3S/hSmDgAQaeigLFa0=;
	h=To:Subject:From:Message-Id:Date; b=EH7vSLxUFCLk6rKyC6dQLIJRsvFMe1ji8Md05gtJwo6j6Xz8Dt4z01+fJLyu6dquzOvMUt2nAL6FWo6FFiy17TJDY4ZadIUY1ntqDg8W4V6IyBc4+Roc29j/uG0bpy5DXOWUhI+0EkEOvcqXPVorW2zv6ae0GBT0CfHTqXF6CY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VsmDVsqT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VsmDVsqT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A395FC4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 19:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740857333;
	bh=fbl4a3hOL6kRVUOsM0uRWEUNc3S/hSmDgAQaeigLFa0=;
	h=To:Subject:From:Date:From;
	b=VsmDVsqTXQ8PARJMYsOdtReea9epJrXwDXiHC0/5Ss1yve8VobWRGMSRgtgbKoQfv
	 RBpB3vYMs5Q+EtNvF32dpsjI0sMQ3+iEcIaLk4Udp6KybvWUf3aPhfdS6lFy/kcEmT
	 OOXqb95WMt+qvPejdvnwH9Bc0+F1QQgkW4g7T23HAGx8OixH0Q6WGquk67Ud3f2pWe
	 LReI7qFlB2FmADVFlOF+LRbiBSuX8TG//WO/aiYLmrU6mvqy5T6YUzsJ42V/cZyyJu
	 f4fi8vWuW/4QQYTf+z58/+h/qcZZfUsndmnpXeE/DQng7gNJFfptnnzcOuFHSAYRiM
	 AGkbXKVJJ+NBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F086C021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 19:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174085733357.17655.6565921757373268088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da2fd0df41fa58f87bb7cd71e001e9d275716fa8214d181c6a5ad0b23547b17d
Date: Sat, 01 Mar 2025 19:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740857333
