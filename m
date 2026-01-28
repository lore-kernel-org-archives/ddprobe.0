Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D8C33C19C
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769638434; cv=none; b=pa0B2vRirxVDgpX8hNzaMyxx25zyKbzwWJSsxDycfmlHfKhqR5h2roMUDvoqv24ngp/gBLyxSzmwK4wnLjOP+racyGEepZINH2Hs5s+WWU/cZzPVySdkmE1SqCwzTGVfFaoea4BPVVH0KqxvYDh2x7CcMRnZBZ7oCJ3ZXMlAqY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769638434; c=relaxed/simple;
	bh=amRLsSBijilscu3bQJgH11kShhQPWJIx8Af5vznzfiI=;
	h=To:Subject:From:Message-Id:Date; b=a1JM/a3VInYSu3wdy2g4V6PbsgPqYCCHO4HAl84K1IPEmYtronOR4Z5dwEEwEgck8mC+VhTYE3TRF2z0ibrVvpvuOFgin2XLl1zFVSYDNO9C62OJPVuAeI/JoAUoRJHRRTXOi6jdNEahI4uZ10Ne1/WtM9iDv+BNJ4RluaUqMZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gv4W+Chk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gv4W+Chk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CA7C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769638433;
	bh=amRLsSBijilscu3bQJgH11kShhQPWJIx8Af5vznzfiI=;
	h=To:Subject:From:Date:From;
	b=Gv4W+Chky7P6Pt21AfpnRUMDDFd9wfwHnYJHHBppous7TeSv5ze5Fmo/Zln1uvoEz
	 WstuYPTGvcJpl3tBPc+NmV8rfchSg1973iTVbaIEOreyG/nqJxnMhSp539jLeoir8s
	 n2K163DsqrTJUQxSbiIwyTKk0msObFAOTtrpkJ0N0Un5wwXoH3BynUynqb3ZLSWRkH
	 3wVLMmDx5C7UjuVgEfu7GGrP6ivdv8mmbCZeA8hvVYnWS+3bEEZtPLd+ALhrtm5ep7
	 zvJe0xig78CjB8ghNmlsfUpndNCF0W+pOKuMMuZTS4LsMhwBo010DD8b5VVvKUe3OK
	 rLewJVzTgswog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9677AD46C0A
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176963843358.13195.1101599114172630952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4ced984bbe3363e92d255e44af78bf1c01851c58b40b8aa9aa821f2da2fc7e9
Date: Wed, 28 Jan 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769638433
