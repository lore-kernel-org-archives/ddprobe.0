Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B3C917EF
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 01:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716426203; cv=none; b=oGPkeIOAzRooC0yr7Uyy/7x+LnklFupgKoe6ME8uvXNEh+o7kHqOVX2ijHJxLUh8WwvEPLzrGygcVoHXQ/lAwy7MkR9X1GKYnuIZ6EpzqLbHRfQGMWChDOYYWyaLhtpG7mChAUnl0ASrr74S4cM7rryQzNgUBXs0SWpoDhv4ci8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716426203; c=relaxed/simple;
	bh=RRpECxX1+g7/JZbncxMQURsp/A8Y30Uws6XDfu5UFLA=;
	h=To:Subject:From:Message-Id:Date; b=PpVzkIY9YkDaGcJLcPEnuVA/EIlv13W37l8LSHpf7h7tpqZYrHvBZaQclknd/w8woVkcKP/Y2lUIB50qUO8FrxpLu9SRQ9qlf4eTGQ3H+hxi9tezW+JfyOAFrRe6oG7ShrrBfh+0+Zc3gxbfud925eVfFcsIdfRLoX3SamDGnZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lkFP2NSN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lkFP2NSN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3212C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 01:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716426203;
	bh=RRpECxX1+g7/JZbncxMQURsp/A8Y30Uws6XDfu5UFLA=;
	h=To:Subject:From:Date:From;
	b=lkFP2NSNJDJANEhawhnLTM1tlLAi18RoYleeUP/JzKkP66v5aPzlZPhRIHxwBAi7N
	 yPZRw73rcq+6HYYhLDrR+Bf3ko7leORPz1kjG2/bMWUu3OaBS6uvzo7NkULUp0pybS
	 q2TsxKtxiqOdk+6MYfds+K3EC9LzGcikuNM48j7R9N/e4OZP/4fvwY7a2Zy+R/VTRA
	 pYvticjoPZAn/t2NiUXzFPKoxPqCnLRfUSoPYu3+vPWL7qpdkgUtQzRQUT8WbxqXtJ
	 SdPO2Uqa9EMKjG0aE0PEUbxqa7BpeTUxMkG4MxnTm4JlEUn925f8ljatgsqAtg2WBM
	 CaxbE+NrQHO8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D256CC25B78
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 01:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171642620280.13820.13982291423968445863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5519cf5fd49ad945d082e127bf6d66bfcd7518935751084c4c27d585c4db5c98
Date: Thu, 23 May 2024 01:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716426202
