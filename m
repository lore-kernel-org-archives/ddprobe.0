Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6742FD1D9
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761119394; cv=none; b=ensZEYaL/3KZTee7jMUKN05i/w+4Ak7UCe1A3Sw5C9vUIhioDOaq/wj5bhuh+uR9Eon/fC27vhdZkybLUcV/SBwB+NSSfwqkUg+f956pVxdLsa1Fa92c0nHCFaaDCHnsuh5gP+VVIcB2pruheh7E85olfJB6MF0rzDdWPqtmzDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761119394; c=relaxed/simple;
	bh=pTiVGVLVOlVhRqEtt4cOmhZzRmhaMCh5dy/1vJPBCLE=;
	h=To:Subject:From:Message-Id:Date; b=NvAFdWITBXhvLPDh6K0IRP5wl5AHyV7t1zkr8cLnAm28p9bmiM/sD0Byooduw4+jlHHpFCoGZ8+7wArTgPXUuc9CPCR4Mfwevh3k5JvCoGjGrD5WiQmaYzd8SoEQuoSEzGsXKECY+fcIliBhghj3uT7VQtg+hyZAJp/5+4xQ6LQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IvXSv8Nj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IvXSv8Nj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A306DC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761119393;
	bh=pTiVGVLVOlVhRqEtt4cOmhZzRmhaMCh5dy/1vJPBCLE=;
	h=To:Subject:From:Date:From;
	b=IvXSv8NjNt6dak4RPqXsTDLlHH1hF5ao1koJSfHfnSjIDRMWR8TpEltiqS3LY9tlE
	 Mtdy7+R5OoIKMq4TZXq1kkzZ1yNEQWvGexjqQB4YOsr83DW29Gj39OmOyps1OyQOWp
	 ZpPYtR9j8orXTkHEvc/ASEqM1UbY+uWZjGh4tf2MYZOYoB1UKEpRbYzTaf6FnPagIe
	 yLmdFXlolmIMdjtZFALqw4090EFgZRIHlUC5tuRQHKhn69zxeOZr9/U33HTUUQdqHp
	 Kvlxt9JeesWvNJuzG5IcUk3Zd+CkJtFJurWd1cial13jex4uvBHKUEfXQc5D31uch7
	 RHuVtlxVKcnaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C23CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176111939358.26054.327721081920092114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bdfccdb997b4c4fa22bc6ffa2856b88abd8f05883ac7ff5fb23b1770cf66172
Date: Wed, 22 Oct 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761119393
