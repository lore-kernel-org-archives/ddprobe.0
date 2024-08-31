Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F82714EC64
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725102954; cv=none; b=Kbowu0H+bJLiArIjwWuTmHtFRek+QVa/lx2EdLpzl8rEDGvO1emqwR4n/qkOvAHcw9Ps+kS1WNMq5kXm2seVuAehrn6zswfMHkxn91mdkwAHWY9i6YoDCBKc8FufjxID5pXaOkDgiRWAUyZNecMKBSBZoSzzPm4PrWfwL/+GGa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725102954; c=relaxed/simple;
	bh=BU5GsqVtbbcsyM+gD/wOPK91hUhBOvU/BvsaNO5JJzo=;
	h=To:Subject:From:Message-Id:Date; b=Pq8hynW9pJvT1ISWS1dW6RDJd904H/HRf7d8mvoWQF5G/ZUN7SvQ1Gj6OGAB0C40LkIk2uk3ZdYATE347fAYFPiKnuEF4Vw4UYVBLCNEqiaz/W6RMIrT043UAyA/jujmmG9YTG0Sv0gAvmPR1eowWttRP/OVScbTRZeDxtpz7/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B1MSR5+F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B1MSR5+F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38A8C4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725102953;
	bh=BU5GsqVtbbcsyM+gD/wOPK91hUhBOvU/BvsaNO5JJzo=;
	h=To:Subject:From:Date:From;
	b=B1MSR5+FmdREPFX6N0z/jyxIxOOHUYonilxElCgyuwU9VrxRRUDK/72FaT8/WUaGJ
	 sZVkhBHh8h+dc6gx9gRaidi8H7apiugiCWAAcOG3OHuexQxPQYFqX4A9eTTVBn3h0V
	 3VcOzSvl0BBWcnCpkWM0YzXPZpljbHR3DVbUpyX1EtoOSiX59iLusFncarxazFPv1Z
	 qFm0+GZ9/NTW3IHdvXpdrSKRVHm4iM3u4Xtw3F1YyOZBbjT/z352JHw/qqdis6FzEO
	 O4QZqRs5m3+EguGTRsynJwFpoyTLU9r9ekpltfEDW8SUJD5cU/LcsuqSKccBGGNDGD
	 o4BrzyHDIL4Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9481BCD1293
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172510295359.3667.14662328048615681013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b3fc9281c23032df86321a6ad6518f57a26f5c04ad60eadee1811282d530a6e
Date: Sat, 31 Aug 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725102953
